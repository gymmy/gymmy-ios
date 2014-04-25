#import "GYMExerciseListVCViewModel.h"
#import "GYMWorkout.h"
#import "GYMExercise.h"

@implementation GYMExerciseListVCViewModel
- (NSInteger)numberOfRows {
	if (self.workout) {
		return [self.workout.exercises count];
	} else {
		return 0;
	}
}

- (GYMExercise *)exerciseForIndexPath:(NSIndexPath *)indexPath {
	return self.workout.exercises[(NSUInteger) [indexPath row]];
}
@end