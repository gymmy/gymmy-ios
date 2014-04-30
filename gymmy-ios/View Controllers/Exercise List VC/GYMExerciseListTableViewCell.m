#import "GYMExerciseListTableViewCell.h"
#import "GYMExerciseListTableViewCellModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface GYMExerciseListTableViewCell ()
@property(nonatomic, weak) IBOutlet UILabel *exerciseNameLabel;
@property(nonatomic, weak) IBOutlet UILabel *numberOfSetsLabel;
@property(nonatomic, weak) IBOutlet UILabel *numberOfRepetitionsLabel;
@property(nonatomic, weak) IBOutlet UILabel *durationLabel;
@end

@implementation GYMExerciseListTableViewCell
- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	self.viewModel = [GYMExerciseListTableViewCellModel new];

	return self;
}

- (void)awakeFromNib {
	[super awakeFromNib];

	RAC(self.exerciseNameLabel, text) = RACObserve(self, viewModel.exerciseName);
	RAC(self.numberOfSetsLabel, text) = RACObserve(self, viewModel.numberOfSets);
	RAC(self.numberOfRepetitionsLabel, text) = RACObserve(self, viewModel.numberOfRepetitions);
	RAC(self.durationLabel, text) = RACObserve(self, viewModel.weight);
}

@end