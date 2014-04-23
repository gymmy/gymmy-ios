//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PFIArrayDataSource;
@class GYMWorkout;


@interface GYMExerciseVCViewModel : NSObject
@property (nonatomic, strong) PFIArrayDataSource *dataSource;
@property (nonatomic, strong) GYMWorkout *workout;
@end