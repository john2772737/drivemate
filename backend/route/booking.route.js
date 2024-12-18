const express = require('express');
const router = express.Router();

// Import Booking Controller
const {
  createBooking,
  getUnconfirmedBookings,
  deleteBooking,
} = require('../controller/booking.controller');

// Create a new booking
router.post('/createBooking', createBooking);
router.get('/getunconfirmed',getUnconfirmedBookings);

// Delete a booking by ID
router.delete('/deleteBooking/:id', deleteBooking);

module.exports = router;
