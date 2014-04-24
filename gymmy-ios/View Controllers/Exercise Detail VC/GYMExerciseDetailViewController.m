//
// Created by Friedrich Pfitzmann on 24.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseDetailViewController.h"
#import "GYMExerciseDetailViewModel.h"
#import "ReactiveCocoa/ReactiveCocoa.h"

@interface GYMExerciseDetailViewController ()
@property(weak, nonatomic) IBOutlet UILabel *numberOfSetsLabel;
@property(weak, nonatomic) IBOutlet UILabel *numberOfRepsLabel;
@property(weak, nonatomic) IBOutlet UILabel *weightLabel;
@property(weak, nonatomic) IBOutlet UIButton *minusWeightButton;
@property(weak, nonatomic) IBOutlet UIButton *plusWeightButton;
@property(weak, nonatomic) IBOutlet UIButton *confirmExerciseButton;
@end

@implementation GYMExerciseDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (void)setupViewModel {
	self.viewModel = [GYMExerciseDetailViewModel new];
}

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	RAC(self.numberOfRepsLabel, text) = RACObserve(self.viewModel, numberOfRepetitions);
	RAC(self.numberOfSetsLabel, text) = RACObserve(self.viewModel, numberOfSets);
	RAC(self.weightLabel, text) = RACObserve(self.viewModel, weight);
}

@end