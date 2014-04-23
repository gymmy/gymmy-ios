//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMWorkoutViewController.h"
#import "GYMWorkoutVCViewModel.h"
#import "GYMExerciseListViewController.h"
#import "GYMExerciseListVCViewModel.h"
#import "GYMWorkout.h"
#import "GYMWorkoutTableViewCell.h"

@implementation GYMWorkoutViewController

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
	self.viewModel = [GYMWorkoutVCViewModel new];
}

#pragma mark - View lifecycle -
- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.tableView reloadData];
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.tableView.dataSource = self;
	self.tableView.delegate = self;
}

#pragma mark - prepareForSegue -
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	[super prepareForSegue:segue sender:sender];

	NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
	GYMWorkout *workout = [self.viewModel workoutAtIndexPath:indexPath];

	if ([segue.identifier isEqualToString:@"ExercisListSegue"]) {
		GYMExerciseListViewController *vc = segue.destinationViewController;
		vc.viewModel.workout = workout;
		vc.title = workout.name;
	}
}

#pragma mark - UITableViewDataSource methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.viewModel numberOfRows];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	GYMWorkoutTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"WorkoutCellIdentifier"
	                                                                     forIndexPath:indexPath];
	GYMWorkout *workout = [self.viewModel workoutAtIndexPath:indexPath];
	[cell configureCellForWorkout:workout];
	return cell;
}

@end