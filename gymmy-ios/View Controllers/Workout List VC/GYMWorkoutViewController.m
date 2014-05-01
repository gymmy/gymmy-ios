#import "GYMWorkoutViewController.h"
#import "GYMWorkoutVCViewModel.h"
#import "GYMExerciseListViewController.h"
#import "GYMExerciseListVCViewModel.h"
#import "GYMWorkout.h"
#import "GYMWorkoutTableViewCell.h"
#import "GYMWorkoutTableViewCellModel.h"
#import "GYMAddWorkoutViewController.h"
#import "GYMAddWorkoutViewModel.h"

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

	@weakify(self);
	if ([segue.identifier isEqualToString:@"GYMAddWorkoutViewControllerSegue"]) {
		GYMAddWorkoutViewController *vc = segue.destinationViewController;
		[vc.viewModel.saveCommand.executionSignals subscribeNext:^(RACSignal *signal) {
		    [signal subscribeNext:^(NSString *x) {
			    @strongify(self);
		        [self.viewModel addWorkoutWithName:x];
		    }];
		}];
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
	cell.viewModel.workout = workout;
	return cell;
}

@end