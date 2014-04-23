//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseVCViewModel.h"
#import "PFIArrayDataSource.h"
#import "GYMWorkout.h"
#import "GYMExerciseTableViewCell.h"
#import "GYMExercise.h"


@implementation GYMExerciseVCViewModel
- (void)setWorkout:(GYMWorkout *)workout {
	_workout = workout;
	self.dataSource = [[PFIArrayDataSource alloc] initWithItems:workout.exercises
	                                             cellIdentifier:@"ExerciseCellIdentifier"
				                             configureCellBlock:^(GYMExerciseTableViewCell *cell, GYMExercise *exercise) {
					                             NSAttributedString *exerciseName = [[NSAttributedString alloc] initWithString:exercise.name];
					                             NSAttributedString *numOfSets = [[NSAttributedString alloc] initWithString:[@(exercise.numberOfSets) stringValue]];
					                             NSAttributedString *numOfRep = [[NSAttributedString alloc] initWithString:[@(exercise.numberOfRepetitions) stringValue]];
					                             NSAttributedString *duration = [[NSAttributedString alloc] initWithString:[@(exercise.duration) stringValue]];

					                             cell.exerciseNameLabel.attributedText = exerciseName;
					                             cell.numberOfRepetitionsLabel.attributedText = numOfRep;
					                             cell.numberOfSetsLabel.attributedText = numOfSets;
					                             cell.durationLabel.attributedText = duration;
				                             }];
}

@end