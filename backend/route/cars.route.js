const express = require("express");
const   Car = require("../model/cars.model");

const router = express.Router();

const {createCar,getAllCars, deleteCar, updateCar}= require('../controller/cars.controller');

router.post("/createCar", createCar);
router.get("/getAllCars",getAllCars);
router.delete("/deleteCar/:id",deleteCar)
router.put("/updateCar/:id",updateCar)

module.exports=router;