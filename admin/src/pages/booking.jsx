import React, { useState, useEffect } from "react";
import axios from "axios";
import Header from "../component/header";
import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const Booking = () => {
  // State management
  const [bookings, setBookings] = useState([]); // State for bookings
  const [loading, setLoading] = useState(false); // Loading state

  // Fetch unconfirmed bookings
  const fetchBookings = async () => {
    setLoading(true); // Start loading
    try {
      const response = await axios.get("http://localhost:3000/booking/getunconfirmed");
      setBookings(response.data); // Update bookings state with fetched data
    } catch (error) {
      console.error("Error fetching bookings:", error);
      toast.error("Failed to load bookings. Please try again.");
    } finally {
      setLoading(false); // Stop loading
    }
  };

  // Confirm a booking
  const confirmBooking = async (id) => {
    try {
      await axios.put(`http://localhost:3000/booking/confirm/${id}`);
      toast.success("Booking confirmed successfully!");
      fetchBookings(); // Refresh bookings
    } catch (error) {
      console.error("Error confirming booking:", error);
      toast.error("Failed to confirm booking. Please try again.");
    }
  };

  // Delete a booking
  const deleteBooking = async (id) => {
    try {
      await axios.delete(`http://localhost:3000/booking/delete/${id}`);
      toast.success("Booking deleted successfully!");
      fetchBookings(); // Refresh bookings
    } catch (error) {
      console.error("Error deleting booking:", error);
      toast.error("Failed to delete booking. Please try again.");
    }
  };

  // Fetch bookings on component mount
  useEffect(() => {
    fetchBookings();
  }, []);

  return (
    <div className="bg-custom-gray rounded-b-lg shadow-md overflow-auto max-h-screen">
      <div className="flex-1 ml-14 md:ml-64 transition-all duration-300">
        <main className="p-4">
          <div className="bg-gray-100 min-h-screen rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px]">
            <Header />
            <div className="bg-gray-200 p-6 rounded-b-lg shadow-md">
              <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
                <div className="flex justify-between items-center">
                  <button
                    onClick={fetchBookings}
                    className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700"
                  >
                    Refresh
                  </button>
                </div>
              </div>

              <div className="overflow-x-auto">
                {loading ? (
                  <div className="text-center py-6 text-gray-600">
                    Loading bookings...
                  </div>
                ) : bookings.length > 0 ? (
                  <table className="table-auto w-full border-collapse border border-gray-300">
                    <thead>
                      <tr className="bg-gray-100">
                        <th className="py-2 px-4 border">Name</th>
                        <th className="py-2 px-4 border">Email</th>
                        <th className="py-2 px-4 border">Phone Number</th>
                        <th className="py-2 px-4 border">License</th>
                        <th className="py-2 px-4 border">Model</th>
                        <th className="py-2 px-4 border">Rental Date</th>
                        <th className="py-2 px-4 border">Total/Price</th>
                        <th className="py-2 px-4 border">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      {bookings.map((booking) => (
                        <tr key={booking._id} className="text-center">
                          <td className="py-2 px-4 border">{booking.name}</td>
                          <td className="py-2 px-4 border">{booking.email}</td>
                          <td className="py-2 px-4 border">{booking.phone}</td>
                          <td className="py-2 px-4 border">{booking.idImage}</td>
                          <td className="py-2 px-4 border">{booking.model}</td>
                          <td className="py-2 px-4 border">
                            {new Date(booking.rentalDate).toLocaleDateString()}
                          </td>
                          <td className="py-2 px-4 border">
                            {booking.totalPrice !== undefined
                              ? `₱${booking.totalPrice.toLocaleString()}`
                              : "N/A"}
                          </td>
                          <td className="py-2 px-4 border">
                            <div className="flex justify-center space-x-2">
                              <button
                                onClick={() => confirmBooking(booking._id)}
                                className="bg-green-500 text-white px-2 py-1 rounded-md hover:bg-green-700"
                              >
                                Confirm
                              </button>
                              <button
                                onClick={() => deleteBooking(booking._id)}
                                className="bg-red-500 text-white px-2 py-1 rounded-md hover:bg-red-700"
                              >
                                Delete
                              </button>
                            </div>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                ) : (
                  <div className="text-center py-6 text-gray-600">
                    No unconfirmed bookings found.
                  </div>
                )}
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
  );
};

export default Booking;
