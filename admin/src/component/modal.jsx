import React, { useState } from "react";

function Modal_com({ Title, body, show, onHide, onSubmit, onCancel }) {
  const [focusedField, setFocusedField] = useState(null);

  const handleFocus = (name) => {
    setFocusedField(name);
  };

  if (!show) return null; // Don't render the modal if `show` is false

  return (
    <div className="fixed inset-0 flex items-center justify-center z-50 bg-gray-800 bg-opacity-50">
      <div className="bg-white p-6 rounded-lg shadow-lg w-96">
        <div className="flex justify-between items-center mb-4">
          <h3 className="text-xl font-semibold">{Title}</h3>
          <button
            onClick={onHide}
            className="text-gray-500 hover:text-gray-700 text-xl"
          >
            &times;
          </button>
        </div>

        <div>
          {body &&
            body.map((group, index) => (
              <div className="mb-4" key={index}>
                <label
                  htmlFor={group.controlId}
                  className="block text-gray-700 font-semibold"
                >
                  {group.placeholder}
                </label>
                <input
                  id={group.controlId}
                  type={group.type}
                  name={group.name}
                  placeholder={group.placeholder}
                  className={`w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 ${
                    group.error ? "border-red-500" : ""
                  }`}
                  value={group.value}
                  onChange={group.onChange}
                  onFocus={() => handleFocus(group.name)}
                  onBlur={() => setFocusedField(null)}
                />
                {group.error && group.name !== focusedField && (
                  <p className="text-red-500 text-sm">{group.errortext}</p>
                )}
              </div>
            ))}
        </div>

        <div className="flex justify-end gap-2">
          <button
            onClick={onCancel}
            className="px-6 py-2 bg-gray-300 text-gray-700 rounded-md hover:bg-gray-400"
          >
            Cancel
          </button>
          <button
            onClick={onSubmit}
            className="px-6 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600"
          >
            Submit
          </button>
        </div>
      </div>
    </div>
  );
}

export default Modal_com;
