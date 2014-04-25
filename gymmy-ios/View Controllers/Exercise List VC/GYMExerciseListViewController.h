#import <Foundation/Foundation.h>
#import "GYMBaseTableViewController.h"

@class GYMExerciseListVCViewModel;

@interface GYMExerciseListViewController : GYMBaseTableViewController
@property(nonatomic, strong) IBOutlet UITableView *tableView;
@property(nonatomic, strong) GYMExerciseListVCViewModel *viewModel;
@end