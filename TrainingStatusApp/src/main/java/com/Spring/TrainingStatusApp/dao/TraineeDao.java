package com.Spring.TrainingStatusApp.dao;

import java.io.IOException;

public interface TraineeDao {

	int createNewTrainee(Trainee trainee,String tPath,String sPath,String tsPath) throws IOException;

}
