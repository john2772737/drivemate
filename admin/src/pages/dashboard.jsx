import React from 'react';
import { Link, Outlet } from 'react-router-dom';

function Dashboard() {
  return (
    <div className="min-h-screen flex bg-gray-100">
      <aside className="w-64 bg-white shadow-md">
        <div className="p-4 text-lg font-semibold border-b">
          Dashboard
        </div>
        <nav className="p-4 space-y-4">
          <Link to="inventory" className="block text-gray-600 hover:text-blue-600">
            Inventory
          </Link>
          <Link to="booking" className="block text-gray-600 hover:text-blue-600">
            Booking
          </Link>
          <Link to="track" className="block text-gray-600 hover:text-blue-600">
            Track
          </Link>
        </nav>
      </aside>

      <main className="flex-1 p-6">
        <h1 className="text-3xl font-semibold mb-4">Welcome to the Dashboard</h1>
        <Outlet />
      </main>
    </div>
  );
}

export default Dashboard;
