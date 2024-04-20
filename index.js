const express =require("express");
const app = express();

app.get("/",(req,res)=>{
    res.json({
        "message":"this is hello from docker"
    })
})

app.listen(3000,(req,res)=>{
    console.log("server running at 3000");
})