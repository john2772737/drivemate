import React from 'react'
import { Routes, Route } from 'react-router-dom'
import "../src/pages/loading"
import Loading from '../src/pages/loading'
import Admin from './pages/admin'
import Dashboard from './pages/dashboard'
import Booking from './pages/booking'
import Track from './pages/track'

function AppRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Loading />} />
      <Route path="/main" element={<Admin />} />
      <Route path='/dashboard' element={<Dashboard />} />
      <Route path='/booking' element={<Booking />} />
      <Route path='/track' element={<Track />} />
      
    </Routes>
  )
}

export default AppRoutes