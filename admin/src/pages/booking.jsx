import React from "react";
import TableContent from "../component/table_content";
import Header from "../component/header"
import Filter_Add from "../component/filter_add_container"

const Booking = () => {
  // Table headers
  const headers = ["Name", "Email", "Phone Number", "License", "Model", "Pick-up Date", "Return Date", "Payment Method", "Total/Price", "View"];

  // Table rows
  const rows = [
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",  
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
    [
      "Ralph De Guzman",
      "DeguzmanRalphLaurence27@gmail.com",
      "09991794230",
      {
        content: (
          <img
            className="w-8 h-8 rounded-full"
            src="https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"
            alt="Car"
          />
        ),
      },
      "2022 Dodge Challenger",
      "Jan. 24, 2025, 1:00PM",
      "Jan. 26, 2025, 12:00NN",
      "Debit/Credit Card",
      "₱40,000",
    ],
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
            <div className="bg-white p-4 shadow-md mb-4 ml-4 mr-4 rounded-tl-[50px] rounded-tr-[50px] rounded-bl-[50px] rounded-br-[50px]">
        <div className="flex justify-between items-center">
          <div className="flex space-x-4">
            <button
              className="px-6 ml-6 py-1 bg-gray-900 text-white rounded-md hover:bg-gray-700"
            >
              Filter
            </button>
          </div>
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

export default Booking;
