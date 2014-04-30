#import <Foundation/Foundation.h>

@class GYMWorkout;

@interface GYMWorkoutTableViewCellModel : NSObject
@property(nonatomic, copy, readonly) NSString *workoutName;
@property(nonatomic, copy, readonly) NSString *numberOfExercises;
@property(nonatomic, strong) GYMWorkout *workout;
@end