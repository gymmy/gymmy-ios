#import "GYMWorkoutTableViewCellModel.h"
#import "GYMWorkout.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation GYMWorkoutTableViewCellModel
- (id)init {
	self = [super init];
	if (!self) return nil;

	RACSignal *newWorkoutSignal = [RACObserve(self, workout) ignore:nil];

	RAC(self, workoutName) = [newWorkoutSignal map:^id(GYMWorkout *workout1) {
	    return workout1.name;
	}];

	RAC(self, numberOfExercises) = [newWorkoutSignal map:^id(GYMWorkout *workout2) {
	    NSString *numberOfExercisesString = [@([workout2.exercises count]) stringValue];
	    return numberOfExercisesString;
	}];

	return self;
}

@end