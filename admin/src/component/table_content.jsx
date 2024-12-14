import React, { useState, useEffect } from "react";
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

const Table_Content = ({ headers, rows, update }) => {
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [selectedId, setSelectedId] = useState(null);
  const [editValue, setEditValue] = useState({});
  const [frontImage, setFrontImage] = useState(null); // Front image file state
  const [backImage, setBackImage] = useState(null);   // Back image file state
  const [sideImage, setSideImage] = useState(null);    // Side image file state

  const totalItems = rows.length;
  const totalPages = Math.ceil(totalItems / itemsPerPage);

  const currentRows = rows.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage
  );

  const goToPage = (page) => {
    if (page > 0 && page <= totalPages) {
      setCurrentPage(page);
    }
  };

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

  const handleEdit = (row) => {
    const id = row[0]; 
    setSelectedId(id);
    setIsModalOpen(true);
  };

  useEffect(() => {
    if (selectedId) {
      axios
        .get(`http://localhost:3000/cars/getSingleCar/${selectedId}`)
        .then((response) => {
          setEditValue(response.data);
        })
        .catch((error) => {
          console.error("Error fetching car data:", error);
        });
    }
  }, [selectedId]);

  const closeModal = () => {
    setIsModalOpen(false);
    setSelectedId(null);
    setEditValue({});
    setFrontImage(null);
    setBackImage(null);
    setSideImage(null);
  };

  const uploadImage = async (file) => {
    if (!file) return null;
    const formData = new FormData();
    formData.append('image', file);

    try {
      const response = await axios.post(
        'https://api.imgbb.com/1/upload?key=4713a2e6319b66146b39ddedddde1bac',
        formData,
        { headers: { 'Content-Type': 'multipart/form-data' } }
      );
      return response.data.data.url;
    } catch (error) {
      console.error('Error uploading image:', error);
      return null;
    }
  };

  const handleSave = async () => {
    const frontImageUrl = await uploadImage(frontImage);
    const backImageUrl = await uploadImage(backImage);
    const sideImageUrl = await uploadImage(sideImage);

    if (!frontImageUrl || !backImageUrl || !sideImageUrl) {
      toast.error('Failed to upload images!');
      return;
    }

    axios
      .put(`http://localhost:3000/cars/updateCar/${selectedId}`, { ...editValue, frontImageUrl, backImageUrl, sideImageUrl })
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

  // Render check mark if file is selected
  const renderCheckMark = (file) => file ? <span className="text-green-500">✔️</span> : null;

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
                  {row.slice(1).map((cell, cellIndex) => (
                    <td key={cellIndex} className="px-4 py-3 text-sm">
                      {typeof cell === "object" ? cell.content : cell}
                    </td>
                  ))}
                  <td className="px-4 py-3 text-sm">
                    <button
                      onClick={() => handleEdit(row)}
                      className="w-4 h-4 text-blue-500 hover:text-blue-700"
                    >
                      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" className="w-full h-full">
                        <path d="M21.731 2.269a2.625 2.625 0 00-3.712 0l-1.157 1.157 3.712 3.712 1.157-1.157a2.625 2.625 0 000-3.712zM19.513 8.199l-3.712-3.712-12.15 12.15a5.25 5.25 0 00-1.32 2.214l-.8 2.685a.75.75 0 00.933.933l2.685-.8a5.25 5.25 0 002.214-1.32L19.513 8.2z"></path>
                      </svg>
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>

      {/* Modal */}
      {isModalOpen && (
        <div className="fixed inset-0 z-50 flex justify-center items-center bg-gray-900 bg-opacity-50">
          <div className="bg-white p-8 rounded-lg shadow-lg w-full sm:w-2/3 lg:w-1/2">
            <h2 className="text-xl font-semibold mb-4">Edit Car</h2>

            <div className="grid grid-cols-2 gap-4">
              {/* Form Fields */}
              {['make', 'model', 'year', 'color', 'fuel', 'price', 'seats', 'category'].map((field, index) => (
                <div key={index}>
                  <label className="block text-sm font-medium text-gray-700">{field.charAt(0).toUpperCase() + field.slice(1)}</label>
                  <input
                    type="text"
                    value={editValue[field] || ""}
                    onChange={(e) => setEditValue({ ...editValue, [field]: e.target.value })}
                    className="w-full px-3 py-2 border rounded-md"
                    placeholder={`Enter ${field.charAt(0).toUpperCase() + field.slice(1)}`}
                  />
                </div>
              ))}
            </div>

            {/* Image Upload Fields */}
            <div className="mt-4">
              {['frontImage', 'backImage', 'sideImage'].map((imageType, index) => (
                <div className="mb-4" key={index}>
                  <label className="block text-sm font-medium text-gray-700">
                    {imageType.charAt(0).toUpperCase() + imageType.slice(1).replace('Image', ' Image')}
                  </label>
                  <input
                    type="file"
                    onChange={(e) => {
                      if (imageType === 'frontImage') setFrontImage(e.target.files[0]);
                      if (imageType === 'backImage') setBackImage(e.target.files[0]);
                      if (imageType === 'sideImage') setSideImage(e.target.files[0]);
                    }}
                    className="w-full px-3 py-2 border rounded-md"
                  />
                  <div className="mt-2">
                    {renderCheckMark(imageType === 'frontImage' ? frontImage : imageType === 'backImage' ? backImage : sideImage)}
                  </div>
                </div>
              ))}
            </div>

            <div className="mt-4 flex justify-end">
              <button onClick={closeModal} className="px-4 py-2 mr-2 bg-gray-500 text-white rounded-md">Cancel</button>
              <button onClick={handleSave} className="px-4 py-2 bg-blue-500 text-white rounded-md">Save</button>
            </div>
          </div>
        </div>
      )}

      {/* Pagination */}
      <div className="flex justify-between items-center mt-4">
        <button onClick={goToPrevPage} disabled={currentPage === 1} className="px-4 py-2 bg-gray-200 rounded-md">Previous</button>
        <span>Page {currentPage} of {totalPages}</span>
        <button onClick={goToNextPage} disabled={currentPage === totalPages} className="px-4 py-2 bg-gray-200 rounded-md">Next</button>
      </div>
    </div>
  );
};

export default Table_Content;
