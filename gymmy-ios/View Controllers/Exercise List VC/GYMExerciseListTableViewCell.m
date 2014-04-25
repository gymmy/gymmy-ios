#import "GYMExerciseListTableViewCell.h"
#import "GYMExercise.h"

@implementation GYMExerciseListTableViewCell
- (void)configureCellForExercise:(GYMExercise *)exercise {
	NSAttributedString *exerciseName = [[NSAttributedString alloc] initWithString:exercise.name];
	NSAttributedString *numOfSets = [[NSAttributedString alloc] initWithString:[@(exercise.numberOfSets) stringValue]];
	NSAttributedString *numOfRep = [[NSAttributedString alloc] initWithString:[@(exercise.numberOfRepetitions) stringValue]];
	NSAttributedString *duration = [[NSAttributedString alloc] initWithString:[@(exercise.weight) stringValue]];

	self.exerciseNameLabel.attributedText = exerciseName;
	self.numberOfRepetitionsLabel.attributedText = numOfRep;
	self.numberOfSetsLabel.attributedText = numOfSets;
	self.durationLabel.attributedText = duration;
}
@end