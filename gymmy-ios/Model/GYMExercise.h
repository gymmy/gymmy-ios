#import <Foundation/Foundation.h>

@interface GYMExercise : NSObject
@property(nonatomic, copy) NSString *name;
@property(assign) NSInteger numberOfSets;
@property(assign) NSInteger numberOfRepetitions;
@property(assign) NSInteger weight;

- (instancetype)initWithName:(NSString *)name numeberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions weight:(NSInteger)weight;

+ (instancetype)exerciseWithName:(NSString *)name numberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions weight:(NSInteger)weight;
@end