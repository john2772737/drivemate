const express = require('express');
const router = express.Router();

// Import Booking Controller
const {
  createBooking,
  deleteBooking,
} = require('../controller/booking.controller');

// Create a new booking
router.post('/createBooking', createBooking);

// Delete a booking by ID
router.delete('/deleteBooking/:id', deleteBooking);

module.exports = router;
