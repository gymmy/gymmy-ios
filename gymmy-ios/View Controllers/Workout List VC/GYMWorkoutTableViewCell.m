#import "GYMWorkoutTableViewCell.h"
#import "GYMWorkoutTableViewCellModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface GYMWorkoutTableViewCell ()
@property(nonatomic, weak) IBOutlet UILabel *numberOfExercisesLabel;
@property(nonatomic, weak) IBOutlet UILabel *workoutNameLabel;
@end

@implementation GYMWorkoutTableViewCell

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	self.viewModel = [GYMWorkoutTableViewCellModel new];

	return self;
}

- (void)awakeFromNib {
	[super awakeFromNib];

	RAC(self.workoutNameLabel, text) = RACObserve(self, viewModel.workoutName);
	RAC(self.numberOfExercisesLabel, text) = RACObserve(self, viewModel.numberOfExercises);
}

@end