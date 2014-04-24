//
// Created by Friedrich Pfitzmann on 24.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMAddWorkoutViewController.h"
#import "GYMAddWorkoutViewModel.h"

@interface GYMAddWorkoutViewController ()
@property(weak, nonatomic) IBOutlet UIButton *cancelButton;
@property(weak, nonatomic) IBOutlet UIButton *saveButton;
@property(weak, nonatomic) IBOutlet UITextField *workoutNameTextField;
@property(weak, nonatomic) IBOutlet UIButton *addExercisesButton;
@end

@implementation GYMAddWorkoutViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	self.cancelButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
		[self dismissViewControllerAnimated:YES completion:nil];
		return [RACSignal empty];
	}];

	RACSignal *validWorkoutNameSignal = [self.workoutNameTextField.rac_textSignal map:^id(NSString *workoutName) {
		return @(([workoutName length] > 3));
	}];

	self.saveButton.rac_command = [[RACCommand alloc] initWithEnabled:validWorkoutNameSignal
	                                                      signalBlock:^RACSignal *(id input) {
		                                                      [self dismissViewControllerAnimated:YES completion:nil];
		                                                      return [RACSignal empty];
	                                                      }];
}

@end