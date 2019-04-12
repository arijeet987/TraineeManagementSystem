package com.cg.trainee.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.trainee.bean.Trainee;


@Repository
public class TraineeDaoImpl implements ITraineeDao {
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Trainee addTrainee(Trainee trainee) {

			entityManager.persist(trainee);
			entityManager.flush();
			return trainee;

	}

	@Override
	public Trainee modifyTraineeById(int traineeId) 
	{
		
		
		return null;
	}

	@Override
	public Trainee retriveoneTraineeById(int traineeId)  {
		
			Trainee trainee = entityManager.find(Trainee.class, traineeId);
			return trainee;

	}

	@Override
	public List<Trainee> getAllTraineeDetails() {

			TypedQuery<Trainee> query =	entityManager.createQuery("SELECT t FROM Trainee t",Trainee.class);
			return query.getResultList();

	}

	@Override
	public boolean deleteTrainee(int traineeId) 
	{

			Trainee trainee = entityManager.find(Trainee.class, traineeId);

			// Call remove method to remove the entity
			if (trainee != null) {
				entityManager.remove(trainee);
				return true;
			}
	
		return false;

	}

}
