//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"

@class GYMWorkoutVCViewModel;

@interface GYMWorkoutViewController : GYMBaseViewController <UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) GYMWorkoutVCViewModel *viewModel;
@end