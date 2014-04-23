//
// Created by Friedrich Pfitzmann on 21.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GYMExerciseTableViewCell : UITableViewCell
@property(nonatomic, strong) IBOutlet UILabel *exerciseNameLabel;
@property(nonatomic, strong) IBOutlet UILabel *numberOfSetsLabel;
@property(nonatomic, strong) IBOutlet UILabel *numberOfRepetitionsLabel;
@property(nonatomic, strong) IBOutlet UILabel *durationLabel;
@end