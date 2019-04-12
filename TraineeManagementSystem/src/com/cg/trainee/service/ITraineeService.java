package com.cg.trainee.service;

import java.util.List;

import com.cg.trainee.bean.Trainee;
import com.cg.trainee.exception.TraineeException;

public interface ITraineeService {
	
	public Trainee addTrainee(Trainee trainee);
	public boolean deleteTraineeById(int traineeId);
	public Trainee modifyTraineeById(int traineeId);
	public Trainee retriveoneTraineeById(int traineeId);
	public List<Trainee> getAllTraineeDetails();

}
