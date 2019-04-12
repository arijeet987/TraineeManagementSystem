package com.cg.trainee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cg.trainee.bean.Trainee;
import com.cg.trainee.dao.ITraineeDao;
import com.cg.trainee.exception.TraineeException;



@Service
@Transactional
public class TraineeServiceImpl implements ITraineeService
{

	@Autowired
	private ITraineeDao traineeDao;
	
	
	
	
	public ITraineeDao getTraineeDao()
	{
		return traineeDao;
	}

	public void setTraineeDao(ITraineeDao traineeDao)
	{
		this.traineeDao = traineeDao;
	}

	@Override
	public Trainee addTrainee(Trainee trainee)
	{
		// TODO Auto-generated method stub
	
			return traineeDao.addTrainee(trainee);
	
	}

	@Override
	public boolean deleteTraineeById(int traineeId)  {
		// TODO Auto-generated method stub
		
			return traineeDao.deleteTrainee(traineeId);
		
	}

	@Override
	public Trainee modifyTraineeById(int traineeId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Trainee retriveoneTraineeById(int traineeId){
		
		// TODO Auto-generated method stub
		
			return traineeDao.retriveoneTraineeById(traineeId);
		
	
	}

	@Override
	public List<Trainee> getAllTraineeDetails()
	{
		
	return traineeDao.getAllTraineeDetails();
		
		
	}

}
