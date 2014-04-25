#import "GYMWorkoutTableViewCell.h"
#import "GYMWorkout.h"

@implementation GYMWorkoutTableViewCell
- (void)configureCellForWorkout:(GYMWorkout *)workout {
	self.workoutName.attributedText = [[NSAttributedString alloc] initWithString:workout.name];
	NSAttributedString *numberOfExercises = [[NSAttributedString alloc] initWithString:[@([workout.exercises count]) stringValue]];
	self.numberOfExercisesString.attributedText = numberOfExercises;
}
@end