//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseListViewController.h"
#import "GYMExerciseListVCViewModel.h"
#import "GYMExerciseListTableViewCell.h"
#import "GYMExercise.h"

@implementation GYMExerciseListViewController

#pragma mark - initialization -
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
	self.viewModel = [GYMExerciseListVCViewModel new];
}

#pragma mark - view lifecycle -
- (void)viewDidLoad {
	[super viewDidLoad];
	self.tableView.dataSource = self;
	self.tableView.delegate = self;
}

#pragma mark - UITableViewDataSource Methods -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.viewModel numberOfRows];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	GYMExerciseListTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ExerciseCellIdentifier"
	                                                                          forIndexPath:indexPath];
	GYMExercise *exercise = [self.viewModel exerciseForIndexPath:indexPath];
	[cell configureCellForExercise:exercise];

	return cell;
}

@end