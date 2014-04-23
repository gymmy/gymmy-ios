//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMMainVCViewModel.h"
#import "GYMWorkoutTableViewCell.h"
#import "GYMWorkout.h"
#import "GYMExercise.h"


@implementation GYMMainVCViewModel

- (id)init {
	self = [super init];
	if (!self) return nil;

	NSObject *object1 = [NSObject new];
	NSObject *object2 = [NSObject new];

	GYMExercise *squats = [GYMExercise exerciseWithName:@"Squats" numberOfSets:3 numberOfRepetitions:8 duration:96];
	GYMExercise *benchPress = [GYMExercise exerciseWithName:@"Bench press" numberOfSets:3 numberOfRepetitions:8 duration:80];
	GYMExercise *militaryPress = [GYMExercise exerciseWithName:@"Military press" numberOfSets:2 numberOfRepetitions:15 duration:15];
	GYMExercise *classicPushUps = [GYMExercise exerciseWithName:@"Classic push ups" numberOfSets:3 numberOfRepetitions:15 duration:0];
	GYMExercise *deadLifts = [GYMExercise exerciseWithName:@"Dead lifts" numberOfSets:3 numberOfRepetitions:15 duration:150];
	GYMExercise *bizepsCurls = [GYMExercise exerciseWithName:@"Bizeps curls" numberOfSets:3 numberOfRepetitions:15 duration:22];


	GYMWorkout *fullBody = [[GYMWorkout alloc] initWithName:@"Full Body" exercises:
			@[squats, benchPress, militaryPress, classicPushUps, deadLifts, bizepsCurls]];
	GYMWorkout *pullPushSplit = [[GYMWorkout alloc] initWithName:@"Pull-Push-Split" exercises:@[object1, object2]];
	GYMWorkout *cardioOnly = [[GYMWorkout alloc] initWithName:@"Cardio only" exercises:@[object1]];

	self.dataSource =
			[[PFIArrayDataSource alloc]
			                     initWithItems:@[fullBody, pullPushSplit, cardioOnly]
						        cellIdentifier:@"WorkoutCellIdentifier"
							configureCellBlock:^(GYMWorkoutTableViewCell *cell, GYMWorkout *workout) {
								cell.workoutName.attributedText = [[NSAttributedString alloc] initWithString:workout.name];
								NSAttributedString *numberOfExercises =
										[[NSAttributedString alloc]
										                     initWithString:[@([workout.exercises count]) stringValue]];
								cell.numberOfExercisesString.attributedText = numberOfExercises;
							}];




	return self;
}




@end