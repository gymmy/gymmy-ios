//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GYMWorkout;
@class GYMExercise;

@interface GYMExerciseListVCViewModel : NSObject
@property(nonatomic, strong) GYMWorkout *workout;
- (NSInteger)numberOfRows;
- (GYMExercise *)exerciseForIndexPath:(NSIndexPath *)indexPath;
@end