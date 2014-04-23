//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"

@class GYMExerciseListVCViewModel;

@interface GYMExerciseListViewController : GYMBaseViewController <UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) IBOutlet UITableView *tableView;
@property(nonatomic, strong) GYMExerciseListVCViewModel *viewModel;
@end