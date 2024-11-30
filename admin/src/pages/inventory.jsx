import React from "react";
import TableContent from "../component/table_content";
import Header from "../component/header"
import Filter_Add from "../component/filter_add_container"


const Inventory = () => {
  // Table headers
  const headers = ["Picture", "Brand", "Model", "Color", "Fuel", "Price", "Seats", "Edit"];

  // Table rows
  const rows = [
    [
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "Toyota",
      "Camry",
      "Red",
      "Gasoline",
      "$20,000",
      "5",
    ],
    [
      "",
      "Ford",
      "Mustang",
      "Blue",
      "Gasoline",
      "$30,000",
      "4",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    [
      "",
      "Dodge",
      "Dodge",
      "Blue",
      "Black",
      "₱20,000",
      "5",
    ],
    // Add more rows as needed
  ];

  return (
    <div className="bg-custom-gray rounded-b-lg shadow-md overflow-auto max-h-screen">

      {/* Main content */}
      <div className="flex-1 ml-14 md:ml-64 transition-all duration-300">
  <main className="p-4">
    {/* Main background container with border radius */}
    <div className="bg-gray-100 min-h-screen rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px]">
      <Header/>
            {/* Container with a gray background to hold the filter, button, and table */}
            <div className="bg-gray-200 p-6 rounded-b-lg shadow-md">
              {/* Filter and Add button container */}
              <Filter_Add/>

              {/* Table container with responsiveness */}
              <div className="overflow-x-auto">
                {/* Pass headers and rows to the table */}
                <TableContent headers={headers} rows={rows} />
              </div>
            </div>
          </div>
        </main>
      </div>
    </div>
  );
};

export default Inventory;
