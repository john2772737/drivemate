const Cars= require('../model/cars.model')


const createCar= async (req,res) =>{
    try {
        const Car= await Cars.create(req.body);
        res.status(200).json(Car);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}

const getAllCars= async (req,res) =>{
    try {
        const listCars= await Cars.find();
        res.status(200).json(listCars);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}

const deleteCar = async (req, res) => {
    try {
      const { id } = req.params;  
      const deletedCar = await Cars.findByIdAndDelete(id);
      if (!deletedCar) {
        return res.status(404).json({ message: 'Car not found' });
      }
      res.status(200).json({ message: 'Car deleted successfully', deletedCar });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  };
  
  const updateCar = async (req, res) => {
    try {
      const { id } = req.params; 
      const updatedCar = await Cars.findByIdAndUpdate(id, req.body, { new: true });
  
      if (!updatedCar) {
        return res.status(404).json({ message: 'Car not found' });
      }
  
      res.status(200).json(updatedCar); 
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  };






module.exports ={createCar, getAllCars,deleteCar,updateCar };