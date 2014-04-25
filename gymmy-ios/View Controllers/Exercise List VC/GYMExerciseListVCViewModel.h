#import <Foundation/Foundation.h>

@class GYMWorkout;
@class GYMExercise;

@interface GYMExerciseListVCViewModel : NSObject
@property(nonatomic, strong) GYMWorkout *workout;
- (NSInteger)numberOfRows;
- (GYMExercise *)exerciseForIndexPath:(NSIndexPath *)indexPath;
@end