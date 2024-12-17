const Cars = require("../model/cars.model");

const createCar = async (req, res) => {
  try {
    const Car = await Cars.create(req.body);
    res.status(200).json(Car);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getAllCars = async (req, res) => {
  try {
    const listCars = await Cars.find();
    res.status(200).json(listCars);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const deleteCar = async (req, res) => {
  try {
    const { id } = req.params;
    const deletedCar = await Cars.findByIdAndDelete(id);
    if (!deletedCar) {
      return res.status(404).json({ message: "Car not found" });
    }
    res.status(200).json({ message: "Car deleted successfully", deletedCar });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const updateCar = async (req, res) => {
  try {
    const { id } = req.params;
    const updatedCar = await Cars.findByIdAndUpdate(id, req.body, {
      new: true,
    });

    if (!updatedCar) {
      return res.status(404).json({ message: "Car not found" });
    }

    res.status(200).json(updatedCar);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getSingleCar = async (req, res) => {
  try {
    const { id } = req.params;
    const getSingleCar = await Cars.findById(id);

    if (!getSingleCar) {
      return res.status(404).json({ message: "Car not found" });
    }

    res.status(200).json(getSingleCar);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

const getDistinctCarBrands = async (req, res) => {
  try {
    const brands = await Cars.distinct("make");
    res.status(200).json(brands);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
const getCarsByBrand = async (req, res) => {
  try {
      const { brand } = req.params;  // Get the brand name from the URL params
      const carsByBrand = await Cars.find({ make: brand });  // Query the cars by make

      if (carsByBrand.length === 0) {
          return res.status(404).json({ message: `No cars found for brand ${brand}` });
      }

      res.status(200).json(carsByBrand);  // Return the cars of the requested brand
  } catch (error) {
      res.status(500).json({ message: error.message });
  }


  
};
const getCarById = async (req, res) => {
  try {
    const { id } = req.params;  // Get the car ID from the URL parameters
    const car = await Cars.findById(id);  // Find the car by its ID

    if (!car) {
      return res.status(404).json({ message: "Car not found" });  // If no car is found
    }

    res.status(200).json(car);  // Return the found car
  } catch (error) {
    res.status(500).json({ message: error.message });  // If there's any error, respond with a message
  }
};


module.exports = {
  createCar,
  getAllCars,
  deleteCar,
  updateCar,
  getSingleCar,
  getDistinctCarBrands,
  getCarsByBrand,
  getCarById
};
