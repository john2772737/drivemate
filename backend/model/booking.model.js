const mongoose = require('mongoose');

// Define Booking Schema
const BookingSchema = new mongoose.Schema(
  {
    email: {
      type: String,
      required: true, // Email of the user making the booking
      trim: true,
      lowercase: true,
    },
    name: {
      type: String,
      required: true, // Name of the user making the booking
    },
    phone: {
      type: String,
      required: true, // Phone number of the user making the booking
    },
    rentalDate: {
      type: Date,
      required: true, // Date of rental
    },
    idImage: {
      type: String,
      required: true, // URL to the uploaded ID image
    },
    isConfirmed: {
      type: Boolean,
      default: false, // Default to false if not provided
    },
  },
  { timestamps: true } // Automatically add createdAt and updatedAt
);

// Create Booking Model
const Booking = mongoose.model('Booking', BookingSchema);

module.exports = Booking;
