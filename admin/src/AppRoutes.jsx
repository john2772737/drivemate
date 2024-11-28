import React from 'react'
import { Routes, Route } from 'react-router-dom'
import "../src/pages/loading"
import Loading from '../src/pages/loading'
import Admin from './pages/admin'

function AppRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Loading />} />
      <Route path="/main" element={<Admin />} />
      
    </Routes>
  )
}

export default AppRoutes