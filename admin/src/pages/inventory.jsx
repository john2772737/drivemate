import React, { useEffect, useState } from 'react';
import axios from 'axios';
import TableContent from "../component/table_content";
import Header from "../component/header";
import Filter_Add from "../component/filter_add_container";
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

const Inventory = () => {
  const [cars, setCars] = useState([]); // State to hold the cars data
  const [loading, setLoading] = useState(true); // State to track loading

  // Function to fetch car data
  const fetchCars = () => {
    setLoading(true); // Set loading state
    axios.get('http://localhost:3000/cars/getAllCars')
      .then(response => {
        console.log(response.data);
        setCars(response.data); // Update the state with the fetched data
        setLoading(false); // Set loading to false once data is fetched
      })
      .catch(error => {
        console.error('Error fetching car data:', error);
        toast.error('Failed to load car data. Please try again later.');
        setLoading(false); // Set loading to false in case of error
      });
  };

  useEffect(() => {
    // Fetch car data on initial load
    fetchCars();
  }, []); // Empty dependency array ensures it runs only once when the component mounts

  // Function to handle adding a new car (called by Filter_Add component)
  const handleAddCar = (newCar) => {
    axios.post('http://localhost:3000/cars/createCar', newCar)
      .then(() => {
        toast.success('Car added successfully!');
        fetchCars(); // Fetch updated car list after adding a new car
      })
      .catch(error => {
        console.error('Error adding car:', error);
        toast.error('Failed to add car. Please try again.');
      });
  };

  // Table headers
  const headers = ["Picture", "Make", "Model","Year", "Color", "Fuel", "Price" ,"Seats","Category", "Edit"];

  // Table rows dynamically populated based on the fetched cars data
  const rows = cars.map(car => [
    car._id,
    {

      
      content: (
<img
  className="w-48 h-48 object-cover" // Adjust the size and make it square
  src={car.image || 'default-car-image.jpg'} // Default image if car doesn't have one
  alt="Car"
/>
      ),
    },
    
    car.make,
    car.model,
    car.year,
    car.color,
    car.fuel,
    `$${car.price.toLocaleString()}`, // Format price
    car.seats,
    car.category,
  ]);

  return (
    <div className="bg-custom-gray rounded-b-lg shadow-md overflow-auto max-h-screen">
      <ToastContainer /> {/* Toast notification container */}
      <div className="flex-1 ml-14 md:ml-64 transition-all duration-300">
        <main className="p-4">
          <div className="bg-gray-100 min-h-screen rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px]">
            <Header />
            <div className="bg-gray-200 p-6 rounded-b-lg shadow-md">
              <Filter_Add onAddClick={handleAddCar} /> {/* Pass handleAddCar as a prop */}
              <div className="overflow-x-auto">
                {loading ? (
                  <div className="flex justify-center items-center h-64">
                    <div className="spinner-border animate-spin border-4 border-t-4 border-gray-200 rounded-full w-8 h-8"></div>
                    <span className="ml-2">Loading...</span>
                  </div>
                ) : (
                  <TableContent headers={headers} rows={rows} update={fetchCars} />
                )}
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
  );
};

export default Inventory;
