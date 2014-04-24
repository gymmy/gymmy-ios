//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMWorkoutTableViewCell.h"
#import "GYMWorkout.h"

@implementation GYMWorkoutTableViewCell
- (void)configureCellForWorkout:(GYMWorkout *)workout {
	self.workoutName.attributedText = [[NSAttributedString alloc] initWithString:workout.name];
	NSAttributedString *numberOfExercises = [[NSAttributedString alloc] initWithString:[@([workout.exercises count]) stringValue]];
	self.numberOfExercisesString.attributedText = numberOfExercises;
}
@end