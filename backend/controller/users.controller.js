const Users = require("../model/users.model"); // Import User model
const Cars = require("../model/cars.model"); // Import Car model

// Create a new User with an optional rented car
const createUser = async (req, res) => {
  try {
    const user = req.body; // Extract email and optional carId

    

   

    // Create the user with or without a rented car
    const newUser = await Users.create(user);

    res.status(201).json(newUser); // Return the created user
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
const checkUser = async (req, res) => {
    const { email } = req.params;

  try {
    // Check if a user with the given email exists in the database
    const user = await Users.findOne({ email });

    if (user) {
      return res.json({ exists: true }); // User exists
    } else {
      return res.json({ exists: false }); // User does not exist
    }
  } catch (error) {
    console.error('Error checking user:', error);
    res.status(500).json({ message: 'Error checking user' });
  }
  };
  

// Fetch all users
const getAllUsers = async (req, res) => {
  try {
    const users = await Users.find().populate('rentedCar'); // Populate rentedCar details
    res.status(200).json(users);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Delete a user by ID
const deleteUser = async (req, res) => {
  try {
    const { id } = req.params;

    const deletedUser = await Users.findByIdAndDelete(id);

    if (!deletedUser) {
      return res.status(404).json({ message: "User not found" });
    }

    res.status(200).json({ message: "User deleted successfully", deletedUser });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Update a user with a new rented car
const updateUserCar = async (req, res) => {
  try {
    const { id } = req.params;
    const { carId } = req.body;

    // Check if the car exists
    const rentedCar = await Cars.findById(carId);
    if (!rentedCar) {
      return res.status(404).json({ message: "Car not found" });
    }

    // Update the user with the rented car
    const updatedUser = await Users.findByIdAndUpdate(
      id,
      { rentedCar: rentedCar._id },
      { new: true }
    );

    if (!updatedUser) {
      return res.status(404).json({ message: "User not found" });
    }

    res.status(200).json(updatedUser);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

module.exports = {
  createUser,
  getAllUsers,
  deleteUser,
  updateUserCar,
  checkUser
};
