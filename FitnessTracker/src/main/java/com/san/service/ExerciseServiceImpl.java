package com.san.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.san.model.Activity;

@Service("exerciseService")
public class ExerciseServiceImpl implements ExerciseService {

	/* (non-Javadoc)
	 * @see com.san.service.ExerciseService#findAllActvities()
	 */
	@Override
	public List<Activity> findAllActvities() {

		List<Activity> activities = new ArrayList<Activity>();

		Activity run = new Activity();
		run.setDesc("Run");
		activities.add(run);

		Activity bike = new Activity();
		bike.setDesc("Bike");
		activities.add(bike);

		return activities;
	}

}
