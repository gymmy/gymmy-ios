#import <Foundation/Foundation.h>

@class GYMExercise;

@interface GYMExerciseDetailViewModel : NSObject
@property(nonatomic, strong) GYMExercise *exercise;
@property(nonatomic, copy, readonly) NSString *exerciseName;
@property(nonatomic, copy, readonly) NSString *numberOfRepetitions;
@property(nonatomic, copy, readonly) NSString *numberOfSets;
@property(nonatomic, copy, readonly) NSString *weight;
@end