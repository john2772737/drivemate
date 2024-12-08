const express = require("express");
const   Car = require("../model/cars.model");

const router = express.Router();

const {createCar,getAllCars, deleteCar, updateCar,getSingleCar}= require('../controller/cars.controller');

router.post("/createCar", createCar);
router.get("/getAllCars",getAllCars);
router.delete("/deleteCar/:id",deleteCar)
router.put("/updateCar/:id",updateCar)
router.get("/getSingleCar/:id",getSingleCar)

module.exports=router;