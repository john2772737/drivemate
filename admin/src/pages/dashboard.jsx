import React, { useState } from "react";
import { Link, Outlet, useLocation } from "react-router-dom";
import logo from "../assets/images/logo_png.png"; 

function Dashboard() {
  const [activeItem, setActiveItem] = useState(""); // State to track the active item
  const location = useLocation(); // Get current location

  // Update activeItem based on the current route
  React.useEffect(() => {
    setActiveItem(location.pathname.split("/")[2] || "");
  }, [location]);

  return (
    <div className="min-h-screen flex bg-custom-gray">
      <aside className="fixed flex flex-col top-0 left-0 w-14 hover:w-64 md:w-64 bg-custom-gray dark:bg-custom-gray h-full text-white transition-all duration-300 border-none z-10 sidebar">
        <div className="flex flex-row items-center py-2 px-4">
          <img
            src={logo}
            alt="Logo"
            className="w-16 h-16 sm:w-20 sm:h-20 rounded-full mr-3 mt-2"
          />
          <span className="text-sm sm:text-lg font-semibold text-white truncate">Admin</span> 
        </div>

        <div className="overflow-y-auto overflow-x-hidden flex flex-col justify-between flex-grow">
          <ul className="flex flex-col py-1 space-y-1">
            <li className="px-8 hidden md:block">
              <div className="flex flex-row items-center h-8">
                <div className="text-sm font-light tracking-wide text-gray-400 uppercase">Auctions</div>
              </div>
            </li>
            <li>
              <Link
                to="inventory"
                className={`relative flex flex-row items-center h-11 focus:outline-none ${
                  activeItem === "inventory"
                    ? "bg-blue-800 text-white"
                    : "hover:bg-blue-800 dark:hover:bg-gray-600 text-white-600 hover:text-white"
                } border-l-4 ${
                  activeItem === "inventory" ? "border-blue-500" : "border-transparent"
                } pr-6 transition-all duration-300`}
                onClick={() => setActiveItem("inventory")}
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 10h16M4 14h10" />
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Inventory</span>
              </Link>
            </li>
            <li>
              <Link
                to="booking"
                className={`relative flex flex-row items-center h-11 focus:outline-none ${
                  activeItem === "booking"
                    ? "bg-blue-800 text-white"
                    : "hover:bg-blue-800 dark:hover:bg-gray-600 text-white-600 hover:text-white"
                } border-l-4 ${
                  activeItem === "booking" ? "border-blue-500" : "border-transparent"
                } pr-6 transition-all duration-300`}
                onClick={() => setActiveItem("booking")}
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 7V3m8 4V3M5 11h14M17 16h-6m6 0a2 2 0 002-2h-6a2 2 0 01-2 2m2 0h6" />
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Booking</span>
              </Link>
            </li>
            <li>
              <Link
                to="track"
                className={`relative flex flex-row items-center h-11 focus:outline-none ${
                  activeItem === "track"
                    ? "bg-blue-800 text-white"
                    : "hover:bg-blue-800 dark:hover:bg-gray-600 text-white-600 hover:text-white"
                } border-l-4 ${
                  activeItem === "track" ? "border-blue-500" : "border-transparent"
                } pr-6 transition-all duration-300`}
                onClick={() => setActiveItem("track")}
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 20l-5.447-2.724A2 2 0 013 15.382V8.618a2 2 0 01.553-1.382L9 4m0 16l5.447-2.724A2 2 0 0021 15.382V8.618a2 2 0 00-.553-1.382L9 4m0 16v-4m0-8V4" />
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Track</span>
              </Link>
            </li>
          </ul>
        </div>
      </aside>

      {/* Main content area */}
      <main className="ml-5 flex-1">
        <Outlet />
      </main>
    </div>
  );
}

export default Dashboard;
