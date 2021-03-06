package com.cg.trainee.dao;

import java.util.List;

import com.cg.trainee.bean.Trainee;
import com.cg.trainee.exception.TraineeException;



public interface ITraineeDao {
	
	public Trainee addTrainee(Trainee trainee) ;
	public boolean deleteTrainee(int traineeId);
	public Trainee modifyTraineeById(int traineeId);
	public Trainee retriveoneTraineeById(int traineeId); 
	public List<Trainee> getAllTraineeDetails();
}
