//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMWorkoutVCViewModel.h"
#import "GYMWorkout.h"
#import "GYMExercise.h"

@interface GYMWorkoutVCViewModel ()
@property(nonatomic, copy) NSArray *workouts;
@end

@implementation GYMWorkoutVCViewModel

- (id)init {
	self = [super init];
	if (!self) return nil;

	[self setupDummyData];

	return self;
}

- (void)setupDummyData {
	GYMExercise *squats = [GYMExercise exerciseWithName:@"Squats" numberOfSets:3 numberOfRepetitions:8 weight:96];
	GYMExercise *benchPress = [GYMExercise exerciseWithName:@"Bench press" numberOfSets:3 numberOfRepetitions:8 weight:80];
	GYMExercise *militaryPress = [GYMExercise exerciseWithName:@"Military press" numberOfSets:2 numberOfRepetitions:15 weight:15];
	GYMExercise *classicPushUps = [GYMExercise exerciseWithName:@"Classic push ups" numberOfSets:3 numberOfRepetitions:15 weight:0];
	GYMExercise *deadLifts = [GYMExercise exerciseWithName:@"Dead lifts" numberOfSets:3 numberOfRepetitions:15 weight:150];
	GYMExercise *bizepsCurls = [GYMExercise exerciseWithName:@"Bizeps curls" numberOfSets:3 numberOfRepetitions:15 weight:22];

	GYMWorkout *fullBody = [[GYMWorkout alloc] initWithName:@"Full Body" exercises:
			@[squats, benchPress, militaryPress, classicPushUps, deadLifts, bizepsCurls]];
	GYMWorkout *pullPushSplit = [[GYMWorkout alloc] initWithName:@"Pull-Push-Split" exercises:@[classicPushUps, deadLifts]];
	GYMWorkout *cardioOnly = [[GYMWorkout alloc] initWithName:@"Cardio only" exercises:@[bizepsCurls, militaryPress, benchPress]];

	self.workouts = @[fullBody, pullPushSplit, cardioOnly];
}

- (NSInteger)numberOfRows {
	return [self.workouts count];
}

- (GYMWorkout *)workoutAtIndexPath:(NSIndexPath *)path {
	return self.workouts[(NSUInteger) [path row]];
}
@end