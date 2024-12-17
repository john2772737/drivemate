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
const rentCarToUser = async (userUid, carId) => {
  try {
    // Check if the car exists
    const car = await Cars.findById(carId);
    if (!car) {
      return console.log('Car not found!');
    }

    // Find the user by UID and update their rentedCar field
    const updatedUser = await Users.findOneAndUpdate(
      { uid: userUid }, // Find the user by UID
      { rentedCar: carId }, // Set rentedCar to the Car ID
      { new: true } // Return the updated document
    );

    if (!updatedUser) {
      console.log('User not found!');
    } else {
      console.log('Car rented successfully:', updatedUser);
    }
  } catch (error) {
    console.error('Error updating rented car:', error.message);
  }
};const checkIfUserHasRentedCar = async (req, res) => {
  try {
    const { uid } = req.params; // Get the UID from the request parameters

    // Find the user by their UID and check if the rentedCar field is populated
    const user = await Users.findOne({ uid });

    if (!user) {
      return res.status(404).json({ message: 'User not found' }); // If user is not found
    }

    // Check if the user already has a rented car
    if (user.rentedCar) {
      return res.status(400).json({ message: 'User already has a rented car.' }); // If user has rented a car
    }

    // If user does not have a rented car
    res.status(200).json({ message: 'User does not have a rented car.' });
  } catch (error) {
    res.status(500).json({ message: error.message }); // Return the error message if any
  }
};




module.exports = {
  createUser,
  getAllUsers,
  deleteUser,
  updateUserCar,
  checkUser,
  rentCarToUser,
  checkIfUserHasRentedCar
};
