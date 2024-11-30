import React from "react";
import { useNavigate, Outlet } from "react-router-dom";

const Dashboard = () => {
  const navigate = useNavigate();

  return (
    <div className="bg-custom-gray rounded-b-lg shadow-md overflow-auto max-h-screen">
      {/* Sidebar Code */}
      <div className="fixed flex flex-col top-0 left-0 w-14 hover:w-64 md:w-64 bg-custom-gray h-full text-white transition-all duration-300 z-10">
        <div className="overflow-y-auto overflow-x-hidden flex flex-col justify-between flex-grow">
          <ul className="flex flex-col py-4 space-y-1">
            <li className="px-5 hidden md:block">
              <div className="flex flex-row items-center h-8">
                <div className="text-sm font-light tracking-wide text-gray-400 uppercase">Auctions</div>
              </div>
            </li>
            <li>
              <div
                onClick={() => navigate("/dashboard")}
                className="relative flex flex-row items-center h-11 focus:outline-none cursor-pointer hover:bg-blue-800 text-white-600 hover:text-white-800 border-transparent border-l-4 pr-6"
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                    ></path>
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Dashboard</span>
              </div>
            </li>
            <li>
              <div
                onClick={() => navigate("/dashboard/booking")}
                className="relative flex flex-row items-center h-11 focus:outline-none cursor-pointer hover:bg-blue-800 text-white-600 hover:text-white-800 border-transparent border-l-4 pr-6"
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M20 13V6a2 2 0 00-2-2H6a2 2 0 00-2 2v7m16 0v5a2 2 0 01-2 2H6a2 2 0 01-2-2v-5m16 0h-2.586a1 1 0 00-.707.293l-2.414 2.414a1 1 0 01-.707.293h-3.172a1 1 0 01-.707-.293l-2.414-2.414A1 1 0 006.586 13H4"
                    ></path>
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Booking</span>
              </div>
            </li>
            <li>
              <div
                onClick={() => navigate("/dashboard/inventory")}
                className="relative flex flex-row items-center h-11 focus:outline-none cursor-pointer hover:bg-blue-800 text-white-600 hover:text-white-800 border-transparent border-l-4 pr-6"
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M9 12l2 2l4-4m-6 8a9 9 0 110-18 9 9 0 010 18z"
                    ></path>
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Inventory</span>
              </div>
            </li>
            <li>
              <div
                onClick={() => navigate("/dashboard/tracking")}
                className="relative flex flex-row items-center h-11 focus:outline-none cursor-pointer hover:bg-blue-800 text-white-600 hover:text-white-800 border-transparent border-l-4 pr-6"
              >
                <span className="inline-flex justify-center items-center ml-4">
                  <svg
                    className="w-5 h-5"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      d="M3 10h11M9 21l3-3m0-3H9m12-3v8m-6 4v-8"
                    ></path>
                  </svg>
                </span>
                <span className="ml-2 text-sm tracking-wide truncate">Tracking</span>
              </div>
            </li>
          </ul>
        </div>
      </div>

      {/* Main content area */}
      <div className="flex-1 ml-14 md:ml-64 transition-all duration-300">
        <main className="p-4">
          {/* Outlet for rendering child routes */}
          <Outlet />
        </main>
      </div>
    </div>
  );
};

export default Dashboard;
