package com.spring.TrainingStatusApp.service;

import java.io.IOException;

public interface TraineeService {

	int createNewTrainee(Trainee trainee,MultipartFile esrn,MultipartFile ssrn,MultipartFile tsrn) throws IOException;

}
