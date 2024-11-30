import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter } from 'react-router-dom';
import AppRoutes from './AppRoutes';
import { AuthProvider } from './context/authContext';
import '../../admin/src/css/main.css'

ReactDOM.createRoot(document.getElementById('root')).render(
    <AuthProvider>
  <BrowserRouter>
      <AppRoutes />
    </BrowserRouter>
    </AuthProvider>
  

);
