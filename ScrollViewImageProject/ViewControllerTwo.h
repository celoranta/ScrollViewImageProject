//
//  ViewControllerTwo.h
//  ScrollViewImageProject
//
//  Created by Chris Eloranta on 2018-02-26.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerTwo : UIViewController <UIScrollViewDelegate>
@property (nonatomic) UIImage *currentDetailImage;

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView;

@end



