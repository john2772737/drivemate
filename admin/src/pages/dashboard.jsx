
import React from "react";
import Sidebar from "../component/sidebar"; // Adjust the path if necessary.
import TableContent from "../component/table_content"; // Adjust the path if necessary.

const Dashboard = () => {
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
      {/* Sidebar */}
      <Sidebar />

      {/* Main content */}
      <div className="flex-1 ml-14 md:ml-64 transition-all duration-300">
  <main className="p-4">
    {/* Main background container with border radius */}
    <div className="bg-gray-100 min-h-screen rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px]">
      
      {/* Header container */}
      <div className="bg-white p-6 rounded-tl-[20px] rounded-tr-[20px] shadow-lg flex justify-between items-center">
        <h2 className="text-2xl font-bold text-gray-800">Car Inventory</h2>

        {/* Search bar and notification icon container */}
        <div className="flex items-center space-x-4 mr-7">
          {/* Search bar */}
          <form action="/search" className="max-w-[250px] w-full px-4">
            <div className="relative flex justify-end">
              <input
                type="text"
                name="q"
                className="w-full max-w-xs border-transparent h-10 shadow p-4 rounded-full dark:text-gray-800 dark:border-gray-700 dark:bg-gray-200 outline-none"
                placeholder="Search"
              />
              <button
                type="submit"
                className="absolute bg-gray-500 text-white p-2.5 rounded-full hover:bg-gray-600"
              >
                <svg
                  className="h-5 w-5 fill-current"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlnsXlink="http://www.w3.org/1999/xlink"
                  version="1.1"
                  x="0px"
                  y="0px"
                  viewBox="0 0 56.966 56.966"
                  style={{ enableBackground: "new 0 0 56.966 56.966" }}
                  xmlSpace="preserve"
                >
                  <path
                    d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23 s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92 c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17 s-17-7.626-17-17S14.61,6,23.984,6z"
                  />
                </svg>
              </button>
            </div>
          </form>

          {/* Notification Icon */}
          <div className="relative">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              className="h-9 w-7 text-gray-800"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                strokeWidth="2"
                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6 6 0 10-12 0v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0a2 2 0 01-2 2 2 2 0 01-2-2m4 0H9"
              />
            </svg>

            {/* Notification badge */}
            <span className="absolute top-0 right-0 left-5 mt-1 -mr-0">
              <span className="animate-ping absolute inline-flex h-3 w-3 rounded-full bg-red-400 opacity-75"></span>
              <span className="absolute inline-flex rounded-full h-3 w-3 bg-red-500"></span>
            </span>
          </div>
          <span className="text-gray-800 text-sm font-semibold">Notification</span>
        </div>
      </div>

            {/* Container with a gray background to hold the filter, button, and table */}
            <div className="bg-gray-200 p-6 rounded-b-lg shadow-md">
              {/* Filter and Add button container */}
              <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
                <div className="flex justify-between items-center">
                  <div className="flex space-x-4">
                    <button className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700">
                      Filter
                    </button>
                  </div>

                  {/* Add button */}
                  <button className="px-10 py-1 bg-gray-900 text-white rounded-tl-[20px] rounded-tr-[20px] rounded-bl-[20px] rounded-br-[20px] hover:bg-gray-700">
                    Add
                  </button>
                </div>
              </div>

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



export default Dashboard;
