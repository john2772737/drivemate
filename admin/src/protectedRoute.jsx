import React from 'react';
import { Navigate } from 'react-router-dom';
import { useAuth } from './context/authContext';

function ProtectedRoute({ children }) {
  const { isAuthenticated } = useAuth();

  if (!isAuthenticated) {
    return <Navigate to="/main" />;
  }

  return children;
}

export default ProtectedRoute;
