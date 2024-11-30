import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Loading from '../src/pages/loading';
import Admin from './pages/admin';
import Dashboard from './pages/dashboard';
import Inventory from './pages/inventory';
import Booking from './pages/booking';
import Track from './pages/track';
import ProtectedRoute from './protectedRoute';

function AppRoutes() {
  return (
    <Routes>
      <Route path="*" element={<h1>NO PAGES</h1>} />
      <Route path="/" element={<Loading />} />
      <Route path="/main" element={<Admin />} />
      <Route path="/dashboard" element={<ProtectedRoute><Dashboard /></ProtectedRoute>}>
        <Route path="inventory" element={<Inventory />} />
        <Route path="booking" element={<Booking />} />
        <Route path="track" element={<Track />} />
      </Route>
    </Routes>
  );
}

export default AppRoutes;
