//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GYMWorkout;


@interface GYMWorkoutTableViewCell : UITableViewCell
@property(nonatomic, strong) IBOutlet UILabel *workoutName;
@property(nonatomic, strong) IBOutlet UILabel *numberOfExercisesString;

- (void)configureCellForWorkout:(GYMWorkout *)workout;
@end