import React, { useEffect } from 'react';
import Lottie from 'react-lottie';
import { useNavigate } from 'react-router-dom';
import AnimateData from '../assets/AnimateData.json'; // path to your Lottie JSON file
import '../css/Loading.css';  // Import your CSS file

function Loading() {
  const navigate = useNavigate();

  useEffect(() => {
    const timer = setTimeout(() => {
      navigate('/main'); 
    }, 3000);

    return () => clearTimeout(timer);
  }, [navigate]);

  const options = {
    loop: true,
    autoplay: true, 
    animationData: AnimateData,
    rendererSettings: {
      preserveAspectRatio: 'xMidYMid slice'
    }
  };

  return (
    <div className="loading-container">
      <div className="lottie-container">
        <Lottie options={options} height={200} width={200} />
      </div>
      <p>Loading, please wait...</p>
    </div>
  );
}

export default Loading;
