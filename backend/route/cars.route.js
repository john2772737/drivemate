const express = require("express");
const   Car = require("../model/cars.model");

const router = express.Router();

const {createCar,getAllCars, deleteCar, updateCar,getSingleCar,getDistinctCarBrands,getCarsByBrand}= require('../controller/cars.controller');

router.post("/createCar", createCar);
router.get("/getAllCars",getAllCars);
router.get("/getDistinctCarBrands",getDistinctCarBrands);
router.delete("/deleteCar/:id",deleteCar)
router.put("/updateCar/:id",updateCar)
router.get("/getSingleCar/:id",getSingleCar)
router.get("/getcarsbybrand/:brand",getCarsByBrand)

module.exports=router;