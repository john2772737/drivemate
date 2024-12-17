const mongoose = require('mongoose');

const CarsSchema = new mongoose.Schema(
  {
    make: {
      type: String,
      required: true
    },
    model: {
      type: String,
      required: true
    },
    year: {
      type: Number,
      required: true,
      min: 2003,
      max: new Date().getFullYear()
    },
    color: {
      type: String,
      required: true
    },
    price: {
      type: Number,
      required: true,
      min: 0
    },
    availabilityStatus: {
      type: String,
      enum: ['Available', 'Pending', 'Not Available'],
      default: 'Available',
      required: true
    },
    mileage: {
      type: Number,
      required: false
    },
    seats: {
      type: Number,
      required: true,
      min: 1,
      max: 7
    },
    fuel: {
      type: String,
      required: true,
      enum: ['Gasoline', 'Diesel', 'Electric', 'Hybrid',],
    },
    fuelConsumption: {
      type: Number,
      required: false,
      min: 0,
      description: "Fuel consumption in liters per 100 km"
    },
    transmission: {
      type: String,
      required: true,
      enum: ['Automatic', 'Manual'],
      description: "The transmission type of the car"
    },
    category: {
      type: String,
      required: true,
      enum: ['Economy', 'Luxury', 'SUV', 'Convertible', 'Sport','Pickup Truck','Electric'],
      description: "The category of the car"
    },
    frontImage: { // Changed name from image to frontImageView
      type: String, 
      required: false, 
      description: "URL or path of the front view of the car"
    },
    backImage: { // Added back view image
      type: String, 
      required: false, 
      description: "URL or path of the back view of the car"
    },
    sideImage: { // Added side view image
      type: String, 
      required: false, 
      description: 
      "URL or path of the side view of the car"
    },
    rentalStartDate: { 
      type: Date, 
      required: false, 
      description: "Date when the car was rented" 
    },
    rentalEndDate: { 
      type: Date, 
      required: false, 
      description: "Date when the car rental ends"
    }
  },
);

const Car = mongoose.model('Car', CarsSchema);

module.exports = Car;
