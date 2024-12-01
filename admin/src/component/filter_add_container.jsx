// FilterContainer.js
import React from 'react';

const FilterContainer = ({ onFilterClick, onAddClick }) => {
  return (
    <div>
      {/* Filter and Add button container */}
      <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
        <div className="flex justify-between items-center">
          <div className="flex space-x-4">
            {/* Filter button */}
            <button
              className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700"
            >
              Filter
            </button>
          </div>

          {/* Add button */}
          <button
            className="px-10 py-1 bg-gray-900 text-white rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px] hover:bg-gray-700"
          >
            Add
          </button>
        </div>
      </div>
    </div>
  );
};

export default FilterContainer;
