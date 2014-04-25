#import <Foundation/Foundation.h>

@interface GYMWorkout : NSObject
@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSArray *exercises;

+ (instancetype)workoutWithName:(NSString *)name exercises:(NSArray *)exercises;

- (instancetype)initWithName:(NSString *)name exercises:(NSArray *)exercises;

@end