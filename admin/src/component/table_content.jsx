import React, { useState, useEffect } from "react";
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';


const Table_Content = ({ headers, rows , update}) => {
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;
  const [isModalOpen, setIsModalOpen] = useState(false); // Modal visibility state
  const [selectedId, setSelectedId] = useState(null); // Store the selected ID for editing
  const [editValue, setEditValue] = useState({}); // State for the input fields
  const [imageFile, setImageFile] = useState(null); // To store the uploaded image file
  
  const totalItems = rows.length;
  const totalPages = Math.ceil(totalItems / itemsPerPage);

  // Get the rows for the current page
  const currentRows = rows.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage
  );

  // Handle page change
  const goToPage = (page) => {
    if (page > 0 && page <= totalPages) {
      setCurrentPage(page);
    }
  };

  // Handle next and previous
  const goToNextPage = () => {
    if (currentPage < totalPages) {
      setCurrentPage(currentPage + 1);
    }
  };

  const goToPrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
    }
  };

  // Handle Edit functionality (get the ID only)
  const handleEdit = (row) => {
    const id = row[0]; // Assuming the first column is the ID
    setSelectedId(id); // Set the selected ID
    setIsModalOpen(true); // Open the modal
  };

  // Fetch car data based on the selected ID
  useEffect(() => {
    if (selectedId) {
      axios
        .get(`http://localhost:3000/cars/getSingleCar/${selectedId}`)
        .then((response) => {
          setEditValue(response.data); // Populate the fields with the fetched data
        })
        .catch((error) => {
          console.error("Error fetching car data:", error);
        });
    }
  }, [selectedId]); // This runs when selectedId changes

  // Handle closing the modal
  const closeModal = () => {
    setIsModalOpen(false); // Close the modal
    setSelectedId(null); // Reset selected ID
    setEditValue({}); // Reset editValue state
    setImageFile(null); // Reset the image file state
  };

  // Handle the image upload to ImageBB API
  // Handle the image upload to ImageBB API
const uploadImage = async (file) => {
  if (!file) {
    return null;
  }

  const formData = new FormData();
  formData.append('image', file);

  try {
    const response = await axios.post(
      'https://api.imgbb.com/1/upload?key=4713a2e6319b66146b39ddedddde1bac',
      formData,
      { headers: { 'Content-Type': 'multipart/form-data' } }
    );
    const imageUrl = response.data.data.url;
    setEditValue({ ...editValue, image: imageUrl }); // Set the image URL to editValue state
    return imageUrl;
  } catch (error) {
    console.error('Error uploading image:', error);
    return null;
  }
};

// Handle saving the changes (This is a placeholder for actual update logic)
const handleSave = async () => {
  // Upload the image first
  const imageUrl = await uploadImage(imageFile);

  if (!imageUrl) {
    toast.error('Failed to upload image!');
    return;
  }

  // Now update the car data with the new image URL
  axios
    .put(`http://localhost:3000/cars/updateCar/${selectedId}`, { ...editValue, image: imageUrl })
    .then((response) => {
      console.log('Car updated:', response.data);
      toast.success('Car data updated successfully!');
      update();
      closeModal();
    })
    .catch((error) => {
      console.error('Error updating car data:', error);
      toast.error('Failed to update car data!');
    });
};

  return (
    
    <div className="mt-4 mx-4">
      <ToastContainer />  

       <div className="w-full overflow-hidden rounded-lg shadow-xs">
        <div className="w-full overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b" style={{ backgroundColor: '#F4F2FF' }}>
                {headers.map((header, index) => (
                  <th key={index} className="px-4 py-3">
                    {header}
                  </th>
                ))}
              </tr>
            </thead>
            <tbody>
              {currentRows.map((row, rowIndex) => (
                <tr key={rowIndex} className={`${rowIndex % 2 === 0 ? 'bg-white' : 'bg-[#F4F2FF]'} hover:bg-gray-100 text-gray-700`}>
                  {row.slice(1).map((cell, cellIndex) => (  // Skip the first cell (ID)
                    <td key={cellIndex} className="px-4 py-3 text-sm">
                      {typeof cell === "object" ? cell.content : cell}
                    </td>
                  ))}
                  <td className="px-4 py-3 text-sm">
                    {/* Edit Button */}
                    <button
                      onClick={() => handleEdit(row)} // Pass the full row to the handleEdit function
                      className="w-4 h-4 text-blue-500 hover:text-blue-700"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 24 24"
                        fill="currentColor"
                        aria-hidden="true"
                        className="w-full h-full"
                      >
                        <path d="M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-12.15 12.15a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32L19.513 8.2z"></path>
                      </svg>
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
        <div className="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t bg-white sm:grid-cols-9">
          <span className="flex items-center col-span-3">
            Showing {(currentPage - 1) * itemsPerPage + 1}- {Math.min(currentPage * itemsPerPage, totalItems)} of {totalItems}
          </span>
          <span className="col-span-2"></span>
          <span className="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
            <nav aria-label="Table navigation">
              <ul className="inline-flex items-center">
                <li>
                  <button
                    onClick={goToPrevPage}
                    className="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
                    aria-label="Previous"
                    disabled={currentPage === 1}
                  >
                    <svg aria-hidden="true" className="w-4 h-4 fill-current" viewBox="0 0 20 20">
                      <path
                        d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
                        clipRule="evenodd"
                        fillRule="evenodd"
                      ></path>
                    </svg>
                  </button>
                </li>
                {/* Display page numbers */}
                {Array.from({ length: totalPages }).map((_, index) => (
                  <li key={index}>
                    <button
                      onClick={() => goToPage(index + 1)}
                      className={`px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple ${currentPage === index + 1 ? "bg-purple-600 text-white" : ""}`}
                    >
                      {index + 1}
                    </button>
                  </li>
                ))}
                <li>
                  <button
                    onClick={goToNextPage}
                    className="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
                    aria-label="Next"
                    disabled={currentPage === totalPages}
                  >
                    <svg aria-hidden="true" className="w-4 h-4 fill-current" viewBox="0 0 20 20">
                      <path
                        d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 111.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                        clipRule="evenodd"
                        fillRule="evenodd"
                      ></path>
                    </svg>
                  </button>
                </li>
              </ul>
            </nav>
          </span>
        </div>
      </div>
      
      {/* Modal */}
      {isModalOpen && (
        <div className="fixed inset-0 bg-gray-600 bg-opacity-50 flex items-center justify-center">
          <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-lg max-h-[80vh] overflow-y-auto">
            <h2 className="text-lg font-semibold mb-4">Edit Item</h2>
            <p className="mb-4">Selected ID: {selectedId}</p>

            {/* Wrap fields in a flex container for landscape layout */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {/* Image Field */}
              <div key="image" className="mb-4">
                <label className="block text-sm font-medium text-gray-700">Image</label>

                {/* Display the image if a valid URL exists */}
                {editValue.image && (
                  <div className="mb-2">
                    <img
                      src={editValue.image}
                      alt="Car"
                      className="w-full h-48 object-cover rounded-md border"
                    />
                  </div>
                )}

                {/* Input field for updating the image URL */}
                <input
                  type="file"
                  onChange={(e) => setImageFile(e.target.files[0])}
                  className="w-full px-3 py-2 border rounded-md"
                />
              </div>
                {/* Make Field */}
        <div key="make" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Make</label>
          <input
            type="text"
            value={editValue.make || ""}
            onChange={(e) => setEditValue({ ...editValue, make: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Make"
          />
        </div>

        {/* Model Field */}
        <div key="model" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Model</label>
          <input
            type="text"
            value={editValue.model || ""}
            onChange={(e) => setEditValue({ ...editValue, model: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Model"
          />
        </div>

        {/* Year Field */}
        <div key="year" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Year</label>
          <input
            type="number"
            value={editValue.year || ""}
            onChange={(e) => setEditValue({ ...editValue, year: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Year"
          />
        </div>

        {/* Color Field */}
        <div key="color" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Color</label>
          <input
            type="text"
            value={editValue.color || ""}
            onChange={(e) => setEditValue({ ...editValue, color: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Color"
          />
        </div>

        {/* Fuel Field */}
        <div key="fuel" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Fuel</label>
          <input
            type="text"
            value={editValue.fuel || ""}
            onChange={(e) => setEditValue({ ...editValue, fuel: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Fuel Type"
          />
        </div>

        {/* Price Field */}
        <div key="price" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Price</label>
          <input
            type="number"
            value={editValue.price || ""}
            onChange={(e) => setEditValue({ ...editValue, price: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Price"
          />
        </div>

        {/* Seats Field */}
        <div key="seats" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Seats</label>
          <input
            type="number"
            value={editValue.seats || ""}
            onChange={(e) => setEditValue({ ...editValue, seats: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Number of Seats"
          />
        </div>

        {/* Category Field */}
        <div key="category" className="mb-4">
          <label className="block text-sm font-medium text-gray-700">Category</label>
          <input
            type="text"
            value={editValue.category || ""}
            onChange={(e) => setEditValue({ ...editValue, category: e.target.value })}
            className="w-full px-3 py-2 border rounded-md"
            placeholder="Enter Category"
          />
        </div>
            

            </div>

            <div className="flex justify-end mt-4">
              <button
                onClick={handleSave}
                className="px-4 py-2 bg-blue-500 text-white rounded-md mr-2"
              >
                Save
              </button>
              <button
                onClick={closeModal}
                className="px-4 py-2 bg-gray-500 text-white rounded-md"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default Table_Content;
