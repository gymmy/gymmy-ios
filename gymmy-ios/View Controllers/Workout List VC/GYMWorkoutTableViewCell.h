#import <Foundation/Foundation.h>

@class GYMWorkout;


@interface GYMWorkoutTableViewCell : UITableViewCell
@property(nonatomic, strong) IBOutlet UILabel *workoutName;
@property(nonatomic, strong) IBOutlet UILabel *numberOfExercisesString;

- (void)configureCellForWorkout:(GYMWorkout *)workout;
@end