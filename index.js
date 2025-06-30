const express=require('express')
const app=express()

app.get('/',(req,res)=>{
    res.send('Hello from Dockerized Node.js App!')
})

const PORT=process.env.PORT
app.listen(PORT,()=>{
    console.log(`App running on port ${PORT}`)
})