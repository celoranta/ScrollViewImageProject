//
//  ViewControllerTwo.m
//  ScrollViewImageProject
//
//  Created by Chris Eloranta on 2018-02-26.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewTwo;

@property (nonatomic) UIImageView *detailsImageView;
@property (nonatomic) UIImage *currentDetailImage;

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //for testing purposes, point the imageView pointer at an image
    self.currentDetailImage = [UIImage  imageNamed:@"Lighthouse"];
    
    //initalize an image view to a property field with the current detail image at the pointer
    self.detailsImageView = [[UIImageView alloc]initWithImage:self.currentDetailImage];
    
    // add imageView to scroll view
    [self.scrollViewTwo  addSubview:self.detailsImageView];
    
    // disable 'translates AutoresizingMaskIntoConstraints ... why?
    self.scrollViewTwo.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Set zoom limits
    
    self.scrollViewTwo.maximumZoomScale = 4;
    self.scrollViewTwo.minimumZoomScale = .25;
    
    // set image content size to the detail image's native size
    self.scrollViewTwo.contentSize = self.currentDetailImage.size;

    // constrain scroll view to root view
    [self.detailsImageView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor];
    [self.detailsImageView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor];
    [self.detailsImageView.topAnchor constraintEqualToAnchor:self.view.topAnchor];
    [self.detailsImageView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor];

    
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.detailsImageView;
}

@end
