const express = require('express');
const router = express.Router();

// Import User Controller
const {
  createUser,
  getAllUsers,
  deleteUser,
  updateUserCar,
  checkUser
} = require('../controller/users.controller');

// Create a new user
router.post('/createUser', createUser);

// Get all users
router.get('/getAllUsers', getAllUsers);
router.get('/checkUser/:email', checkUser);

// Delete a user by ID
router.delete('/deleteUser/:id', deleteUser);

// Update the user's rented car by user ID
router.put('/updateUserCar/:id', updateUserCar);

module.exports = router;
