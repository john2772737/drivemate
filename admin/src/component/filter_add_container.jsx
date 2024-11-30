import React, { useState } from "react";
import ModalCom from "./modal";
import { Toaster, toast } from "react-hot-toast";

const FilterAddContainer = ({ onFilterClick, onAddClick }) => {
  const [modalShow, setModalShow] = useState(false);
  
  // Adjust formData to match the fields in modalForm
  const [formData, setFormData] = useState({
    picture: "",
    brand: "",
    model: "",
    color: "",
    fuel: "",
    price: "",
    seats: "",
  });
  
  const [required, setRequired] = useState({
    picture: false,
    brand: false,
    model: false,
    color: false,
    fuel: false,
    price: false,
    seats: false,
  });

  const handleModalClose = () => setModalShow(false);
  const handleModalShow = () => setModalShow(true);

  const handleInputChange = (event) => {
    const { name, value } = event.target;
    setRequired((prevRequired) => ({
      ...prevRequired,
      [name]: false, // Reset the required validation on input change
    }));
    setFormData((prevFormData) => ({
      ...prevFormData,
      [name]: value,
    }));
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    let hasEmptyField = false;

    // Validate form fields
    modalForm.forEach((field) => {
      if (!formData[field.name]) {
        setRequired((prevState) => ({ ...prevState, [field.name]: true }));
        hasEmptyField = true;
      } else {
        setRequired((prevState) => ({ ...prevState, [field.name]: false }));
      }
    });

    if (hasEmptyField) {
      toast.error("Please fill in all required fields.");
      return;
    }

    // Simulating form submission as there's no actual API call
    toast.success("Form submitted successfully!");
    handleModalClose();
  };

  // Updated modalForm to match formData
  const modalForm = [
    {
      name: "picture",
      controlId: "formPicture",
      type: "text",
      placeholder: "Enter picture URL",
      onChange: handleInputChange,
      errortext: required.picture ? "Picture is required" : "",
      error: required.picture,
    },
    {
      name: "brand",
      controlId: "formBrand",
      type: "text",
      placeholder: "Enter brand",
      onChange: handleInputChange,
      errortext: required.brand ? "Brand is required" : "",
      error: required.brand,
    },
    {
      name: "model",
      controlId: "formModel",
      type: "text",
      placeholder: "Enter model",
      onChange: handleInputChange,
      errortext: required.model ? "Model is required" : "",
      error: required.model,
    },
    {
      name: "color",
      controlId: "formColor",
      type: "text",
      placeholder: "Enter color",
      onChange: handleInputChange,
      errortext: required.color ? "Color is required" : "",
      error: required.color,
    },
    {
      name: "fuel",
      controlId: "formFuel",
      type: "text",
      placeholder: "Enter fuel type",
      onChange: handleInputChange,
      errortext: required.fuel ? "Fuel type is required" : "",
      error: required.fuel,
    },
    {
      name: "price",
      controlId: "formPrice",
      type: "number",
      placeholder: "Enter price",
      onChange: handleInputChange,
      errortext: required.price ? "Price is required" : "",
      error: required.price,
    },
    {
      name: "seats",
      controlId: "formSeats",
      type: "number",
      placeholder: "Enter number of seats",
      onChange: handleInputChange,
      errortext: required.seats ? "Seats are required" : "",
      error: required.seats,
    },
  ];

  return (
    <div>
      <Toaster />
      <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
        <div className="flex justify-between items-center">
          <div className="flex space-x-4">
            <button
              onClick={onFilterClick}
              className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700"
            >
              Filter
            </button>
          </div>
          <button
            onClick={handleModalShow}
            className="px-10 py-1 bg-gray-900 text-white rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px] hover:bg-gray-700"
          >
            Add
          </button>
        </div>
      </div>

      <ModalCom
        Title="Add Rental Car"
        body={modalForm}
        show={modalShow}
        onHide={handleModalClose}
        onSubmit={handleSubmit}
        onCancel={handleModalClose}
      />
    </div>
  );
};

export default FilterAddContainer;
