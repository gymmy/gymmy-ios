#import <Foundation/Foundation.h>

@class GYMExercise;

@interface GYMExerciseListTableViewCell : UITableViewCell
@property(nonatomic, strong) IBOutlet UILabel *exerciseNameLabel;
@property(nonatomic, strong) IBOutlet UILabel *numberOfSetsLabel;
@property(nonatomic, strong) IBOutlet UILabel *numberOfRepetitionsLabel;
@property(nonatomic, strong) IBOutlet UILabel *durationLabel;
- (void)configureCellForExercise:(GYMExercise *)exercise;
@end