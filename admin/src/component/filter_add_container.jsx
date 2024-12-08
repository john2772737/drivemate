import React, { useState } from 'react';
import axios from 'axios';
import { toast } from 'react-toastify'; // Make sure you have react-toastify installed

const FilterContainer = ({ onFilterClick, onAddClick }) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false); // Loading state

  // State for storing the car data
  const [carData, setCarData] = useState({
    make: '',
    model: '',
    year: new Date().getFullYear(),
    color: '',
    price: '',
    seats: 1,
    fuel: 'Gasoline',
    transmission: 'Automatic',
    category: 'Economy',
    image: '', // Image will be stored here
  });

  // State for storing the image file before uploading
  const [imageFile, setImageFile] = useState(null);

  // Function to open the modal
  const openModal = () => {
    setIsModalOpen(true);
  };

  // Function to close the modal
  const closeModal = () => {
    setIsModalOpen(false);
  };

  // Handle input changes
  const handleChange = (e) => {
    const { name, value } = e.target;
    setCarData({
      ...carData,
      [name]: value,
    });
  };

  // Handle image file selection
  const handleImageChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setImageFile(file); // Store the file for later upload
    }
  };

  // Handle image upload and form submission
  const handleAddCar = async () => {
    setIsLoading(true); // Start loading
    let imageUrl = '';

    // If there's an image file, upload it
    if (imageFile) {
      const formData = new FormData();
      formData.append('image', imageFile);

      try {
        const response = await axios.post(
          'https://api.imgbb.com/1/upload?key=4713a2e6319b66146b39ddedddde1bac', // Replace with your ImgBB API key
          formData
        );
        
        // Get the uploaded image URL
        imageUrl = response.data.data.url;
        
      } catch (error) {
        console.error('Error uploading image to ImgBB', error);
        toast.error('Error uploading image!'); // Show error toast
        setIsLoading(false); // Stop loading
        return;
      }
    }

    // Add the image URL to the car data
    const carWithImage = {
      ...carData,
      image: imageUrl,
    };

    try {
      // Send car data to the parent or backend
      await onAddClick(carWithImage);// Show success toast
      setIsLoading(false); // Stop loading
    } catch (error) {
      console.error('Error adding car', error);
     // Show error toast
      setIsLoading(false); // Stop loading
    }

    // Clear the form after submission
    setCarData({
      make: '',
      model: '',
      year: new Date().getFullYear(),
      color: '',
      price: '',
      seats: 1,
      fuel: 'Gasoline',
      transmission: 'Automatic',
      category: 'Economy',
      image: '',
    });
    setImageFile(null); // Reset the image file state
    closeModal(); // Close the modal
  };

  return (
    <div>
      {/* Filter and Add button container */}
      <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
        <div className="flex justify-between items-center">
          <div className="flex space-x-4">
            {/* Filter button */}
            <button
              className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700"
              onClick={onFilterClick}
            >
              Filter
            </button>
          </div>

          {/* Add button */}
          <button
            className="px-10 py-1 bg-gray-900 text-white rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px] hover:bg-gray-700"
            onClick={openModal}
          >
            Add
          </button>
        </div>
      </div>

      {/* Modal */}
      {isModalOpen && (
        <div className="fixed inset-0 bg-gray-900 bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg w-[80vw] max-w-6xl shadow-lg">
            <div className="flex justify-between items-center mb-4">
              <h3 className="text-xl font-semibold">Add New Car</h3>
              <button onClick={closeModal} className="text-gray-500 hover:text-gray-700">
                X
              </button>
            </div>
            {/* Modal content (form with inputs for car data) */}
            <div className="grid grid-cols-2 gap-4">
              <input
                type="text"
                name="make"
                value={carData.make}
                onChange={handleChange}
                placeholder="Make"
                className="w-full p-2 border border-gray-300 rounded-md"
              />
              <input
                type="text"
                name="model"
                value={carData.model}
                onChange={handleChange}
                placeholder="Model"
                className="w-full p-2 border border-gray-300 rounded-md"
              />
              <input
                type="text"
                name="color"
                value={carData.color}
                onChange={handleChange}
                placeholder="Color"
                className="w-full p-2 border border-gray-300 rounded-md"
              />
              <input
                type="number"
                name="price"
                value={carData.price}
                onChange={handleChange}
                placeholder="Price"
                className="w-full p-2 border border-gray-300 rounded-md"
              />
              <input
                type="number"
                name="seats"
                value={carData.seats}
                onChange={handleChange}
                placeholder="Seats"
                min="1"
                max="7"
                className="w-full p-2 border border-gray-300 rounded-md"
              />
              <select
                name="fuel"
                value={carData.fuel}
                onChange={handleChange}
                className="w-full p-2 border border-gray-300 rounded-md"
              >
                <option value="Gasoline">Gasoline</option>
                <option value="Diesel">Diesel</option>
                <option value="Electric">Electric</option>
                <option value="Hybrid">Hybrid</option>
              </select>
              <select
                name="transmission"
                value={carData.transmission}
                onChange={handleChange}
                className="w-full p-2 border border-gray-300 rounded-md"
              >
                <option value="Automatic">Automatic</option>
                <option value="Manual">Manual</option>
              </select>
              <select
                name="category"
                value={carData.category}
                onChange={handleChange}
                className="w-full p-2 border border-gray-300 rounded-md"
              >
                <option value="Economy">Economy</option>
                <option value="Luxury">Luxury</option>
                <option value="SUV">SUV</option>
                <option value="Convertible">Convertible</option>
                <option value="Sport">Sport</option>
              </select>
              {/* File input for image upload */}
              <label htmlFor="image" className="w-full p-2 border border-gray-300 rounded-md cursor-pointer bg-gray-100 text-center">
                Choose Car Image
                <input
                  type="file"
                  id="image"
                  name="image"
                  onChange={handleImageChange} // Use the image change handler
                  accept="image/*"
                  className="hidden"
                />
              </label>
            </div>
            <div className="mt-4 flex justify-end space-x-4">
              <button
                onClick={closeModal}
                className="px-6 py-2 bg-gray-300 text-gray-800 rounded-md hover:bg-gray-400"
              >
                Cancel
              </button>
              <button
                onClick={handleAddCar} // This will now handle image upload and form submission
                className={`px-6 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600 ${isLoading ? 'opacity-50 cursor-not-allowed' : ''}`}
                disabled={isLoading} // Disable the button while loading
              >
                {isLoading ? 'Adding...' : 'Add Car'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default FilterContainer;
