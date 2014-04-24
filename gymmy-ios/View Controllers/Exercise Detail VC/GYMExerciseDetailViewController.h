//
// Created by Friedrich Pfitzmann on 24.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"

@class GYMExerciseDetailViewModel;

@interface GYMExerciseDetailViewController : GYMBaseViewController
@property(nonatomic, strong) GYMExerciseDetailViewModel *viewModel;
@end