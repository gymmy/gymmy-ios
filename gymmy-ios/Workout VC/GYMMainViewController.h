//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GYMNavigationViewController.h"

@class GYMMainVCViewModel;

@interface GYMMainViewController : GYMNavigationViewController <UITableViewDelegate>
@property(nonatomic, strong) GYMMainVCViewModel *viewModel;
@end