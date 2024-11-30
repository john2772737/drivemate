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
    isAvailable: {
      type: Boolean,
      default: true
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
      enum: ['Gasoline', 'Diesel', 'Electric', 'Hybrid'],
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
      enum: ['Economy', 'Luxury', 'SUV', 'Convertible', 'Sport'],
      description: "The category of the car"
    },
    image: {
      type: String, 
      required: false, 
      description: "URL or path of the car image"
    }
  },
  
);

const Car = mongoose.model('Car', CarsSchema);

module.exports = Car;
