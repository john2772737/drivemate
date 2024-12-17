const mongoose = require('mongoose');

// Define User Schema
const UserSchema = new mongoose.Schema(
  {
    uid: {
      type: String,
      required: true,
      unique: true, // Ensures each user has a unique UID
    },
    email: {
      type: String,
      required: true,
      unique: true, // Ensures no duplicate users
      trim: true,
      lowercase: true,
    },
    rentedCar: {
      type: mongoose.Schema.Types.ObjectId, // Reference to Car model
      ref: 'Car',
      required: false, // Optional: User might not have rented a car
    },
  },
  { timestamps: true } // Automatically add createdAt and updatedAt
);

// Create User Model
const User = mongoose.model('User', UserSchema);

module.exports = User;
