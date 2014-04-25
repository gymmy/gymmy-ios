#import "GYMExerciseListViewController.h"
#import "GYMExerciseListVCViewModel.h"
#import "GYMExerciseListTableViewCell.h"
#import "GYMExercise.h"
#import "GYMExerciseDetailViewController.h"
#import "GYMExerciseDetailViewModel.h"

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

#pragma mark - prepareForSegue -

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	[super prepareForSegue:segue sender:sender];

	NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
	GYMExercise *exercise = [self.viewModel exerciseForIndexPath:indexPath];

	if ([segue.identifier isEqualToString:@"ExerciseDetailSegue"]) {
		GYMExerciseDetailViewController *vc = segue.destinationViewController;
		vc.viewModel.exercise = exercise;
		vc.title = exercise.name;
	}
}

@end