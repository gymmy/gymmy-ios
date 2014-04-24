//
// Created by Friedrich Pfitzmann on 24.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"

@interface GYMBaseTableViewController : GYMBaseViewController <UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, strong) UITableView *tableView;
@end