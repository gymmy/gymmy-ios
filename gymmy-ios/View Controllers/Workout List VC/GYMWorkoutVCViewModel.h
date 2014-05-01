#import <Foundation/Foundation.h>

@class GYMWorkout;

@interface GYMWorkoutVCViewModel : NSObject
- (NSInteger)numberOfRows;
- (GYMWorkout *)workoutAtIndexPath:(NSIndexPath *)path;
- (void)addWorkoutWithName:(NSString *)x;
@end