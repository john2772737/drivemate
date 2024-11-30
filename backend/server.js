const express = require('express');
const mongoose = require('mongoose');
const CarRoute = require('./route/cars.route')
const app = express();
const port = 3000;

app.use(express.json());
app.use(express.urlencoded({extended: false}));

app.use("/cars", CarRoute);



mongoose
.connect(
   "mongodb+srv://johnregulacion5555:john1026@drivemate.cewhb.mongodb.net/?retryWrites=true&w=majority&appName=drivemate"
).then(()=>{
    console.log("Connected to database!");
    app.listen(3000, () => {
      console.log("Server is running on port 3000");
    });
}).catch(()=>{
    console.log("Connection failed!");
})
