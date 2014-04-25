//
// Created by Friedrich Pfitzmann on 25.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "UIView+GYMMYAdditions.h"

@implementation UIView (GYMMYAdditions)
- (UIImage *)gym_snapshot {
	UIGraphicsBeginImageContext(self.bounds.size);
	[self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

	return image;
}
@end