//app.js
//1:加载相应模块 http express mysql
const http = require("http");
const express = require("express");
const mysql = require("mysql");
//引入session
const session= require("express-session");
const qs=require("querystring");

//2:创建连接池
let pool = mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    database:"rw",
    port:3306,
    connectionLimit:5
});
//3:创建express对象
let app = express();
//4:创建服务器对象
let server = http.createServer(app);
//5:绑定监听端口
server.listen(3000);
app.use(express.static("public"));
app.use(session({
    secret:'redwine app',
    // cookie:{maxAge:60 * 1000 *30},
    resave:false,
    saveUninitialized:false
}));
// 登录
app.post("/signin",(req,res)=>{
    req.on("data",(buf)=>{
        let obj=qs.parse(buf.toString());
        let uname=obj.uname;
        let upwd=obj.upwd;
        let sql="SELECT count(uid) as c ,uid FROM users WHERE uname=? AND upwd=md5(?)";
        pool.query(sql,[uname,upwd],(err,result)=>{
            if(err) throw err;
            if(result[0].c>0){
                req.session.sign = true;
                req.session.uid= result[0].uid;
                res.json({code:1,msg:"登录成功"});
            }else{
                res.json({code:-1,msg:"用户名或密码错误"});
            }
        });
    })
});
//判断是否登录，获取如果登录，获取uid
app.get("/islogin",(req,res)=>{
    if(req.session.uid){
        res.json({code:1,msg:'您已登录',uid:req.session.uid});
    }else{
        res.json({code:-1});
    }
});
app.get("/signout",(req,res)=>{
    req.session.uid=null;
    res.json({msg:'已成功退出'})
});

app.get('/testuname',(req,res)=>{
    let uname = req.query.uname;
    let sql="SELECT count(uid) AS c FROM users WHERE uname=?";
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        let obj={};
        if(result[0].c>0){
            obj={code:-1,msg:'用户名已被占用，请输入其他用户名'};
        }else{
            obj={code:1,msg:'用户名可用'};
        }
        res.json(obj);
    });
});
app.post("/register",(req,res)=>{
    req.on("data",(buf)=>{
        let obj=qs.parse(buf.toString());
        let uname=obj.uname;
        let phone=obj.phone;
        let email=obj.email;
        let upwd=obj.upwd;
        let sql="INSERT INTO users(`uid`, `uname`, `upwd`, `email`, `phone`) VALUES (null,?,md5(?),?,?)";
        pool.query(sql,[uname,upwd,email,upwd],(err,result)=>{
            if(err) throw err;
            let row=result.affectedRows;
            if(row>0){
                res.json({code:1,msg:'注册成功'});
            }else{
                res.json({code:-1,msg:'注册失败'});
            }

        });
    })
});
app.get('/getShowProducts',(req,res)=>{
    let sql=`SELECT pid,md,price,title FROM products LIMIT 0,8 `;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json(result);
    });
})
app.get('/getnews',(req,res)=>{
    let assort=req.query.assort;
    let sql=` SELECT * FROM news WHERE assort like '%${assort}%' `;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.json(result);
    })

});
app.get("/getproducts",(req,res)=>{
    let pno=parseInt(req.query.pno);
    let pageSize=parseInt(req.query.pageSize);
    let count;
    let pageCount;
    let state=0;
    let obj={};
    obj.pno=pno;
    obj.pageSize=pageSize;
    let sqlcount=`SELECT count(pid) AS c FROM products`;
    pool.query(sqlcount,(err,result)=>{
        if(err) throw err;
        state+=50;
        count=result[0].c;
        pageCount=Math.ceil(count/pageSize);
        obj.pageCount=pageCount;
        if(state==100){
            res.json(obj);
        }
    });
    let offset=(pno-1)*pageSize;
    let sql=`SELECT pid,md,price,title FROM products LIMIT ?,? `;
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err;
        obj.data=result;
        state+=50;
        if(state==100){
            res.json(obj);
        }
    })
});
app.get("/getdetails",(req,res)=>{
    let pid=req.query.pid;
    let sql="SELECT * FROM products WHERE pid=?";
    let obj={};
    //用来记录异步对象的状态
    let s=0;
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        s+=10;
        obj.cdels=result[0];
        if(s==30){
            res.json(obj);
        }

    });
    //查找与该产品口味相同的产品
    let sql1='SELECT pid,sm,price,title FROM products   ';
    sql1+=` WHERE taste=(SELECT taste FROM products WHERE pid=? )  LIMIT 0,4`;
    pool.query(sql1,[pid],(err,result)=>{
        if(err)throw err;
        s+=10;
        obj.relates=result;
        if(s==30){
            res.json(obj);
        }
    });
    let sql2=`SELECT pid,sm,price,title FROM products ORDER BY sold_count LIMIT 0,10`;
    pool.query(sql2,(err,result)=>{
        if(err)throw err;
        s+=10;
        obj.hots=result;
        if(s==30){
            res.json(obj);
        }
    });
});