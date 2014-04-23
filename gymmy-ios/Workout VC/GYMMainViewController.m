//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMMainViewController.h"
#import "GYMMainVCViewModel.h"
#import "GYMWorkoutExercisesListVC.h"
#import "GYMExerciseVCViewModel.h"
#import "GYMWorkout.h"

@implementation GYMMainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (void)setupViewModel {
	self.title = @"Workouts";
	self.viewModel = [GYMMainVCViewModel new];
}


- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.tableView.dataSource = self.viewModel.dataSource;
	self.tableView.delegate = self;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	[super prepareForSegue:segue sender:sender];

	NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
	GYMWorkout *workout = [self.viewModel.dataSource itemAtIndexPath:indexPath];

	if ([segue.identifier isEqualToString:@"ExercisListSegue"]) {
		GYMWorkoutExercisesListVC *vc = segue.destinationViewController;
		vc.viewModel.workout = workout;
		vc.title = workout.name;
	}
}


@end