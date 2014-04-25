#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"

@interface GYMBaseTableViewController : GYMBaseViewController <UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, strong) UITableView *tableView;
@end