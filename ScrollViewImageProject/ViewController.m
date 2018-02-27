//
//  ViewController.m
//  ScrollViewImageProject
//
//  Created by Chris Eloranta on 2018-02-26.
//  Copyright © 2018 Christopher Eloranta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewOne;


@property (nonatomic) UIImageView *imageViewOneHolder;
@property (nonatomic) UIImageView *imageViewTwoHolder;
@property (nonatomic) UIImageView *imageViewThreeHolder;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // create image objects from provided images
    UIImage *imageOne = [UIImage imageNamed:@"Lighthouse"];
    UIImage *imageTwo = [UIImage imageNamed:@"Lighthouse-night"];
    UIImage *imageThree = [UIImage imageNamed:@"Lighthouse-in-Field"];
    
    //
    // NOTE:  should refactor this to load content into an array and interate as many of the following processes as possible
    //
    
    // create image views for each object
    self.imageViewOneHolder = [[UIImageView alloc]initWithImage:imageOne];
    self.imageViewTwoHolder = [[UIImageView alloc]initWithImage:imageTwo];
    self.imageViewThreeHolder = [[UIImageView alloc]initWithImage:imageThree];
    
    // add ImageViews to UIScrollView object
    [self.scrollViewOne addSubview:_imageViewOneHolder];
    [self.scrollViewOne addSubview:_imageViewTwoHolder];
    [self.scrollViewOne addSubview:_imageViewThreeHolder];
    
    // constrain images to their aspect ratios within their bounds
    self.imageViewOneHolder.contentMode = YES;
    self.imageViewTwoHolder.contentMode = YES;
    self.imageViewThreeHolder.contentMode = YES;

    
    // turn off auto-resizing
    self.imageViewOneHolder.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageViewTwoHolder.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageViewThreeHolder.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    // create constraints for each UIImageView against each other and against the UIScrollView
    [self.imageViewOneHolder.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.imageViewOneHolder.widthAnchor constraintEqualToConstant:self.view.frame.size.width].active =YES;
    [self.imageViewOneHolder.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.imageViewOneHolder.leadingAnchor constraintEqualToAnchor:self.scrollViewOne.leadingAnchor].active = YES;
    
    [self.imageViewTwoHolder.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.imageViewTwoHolder.leadingAnchor constraintEqualToAnchor:self.imageViewOneHolder.trailingAnchor].active = YES;
    [self.imageViewTwoHolder.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.imageViewTwoHolder.widthAnchor constraintEqualToConstant:self.view.frame.size.width].active = YES;
    

    [self.imageViewThreeHolder.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.imageViewThreeHolder.leadingAnchor constraintEqualToAnchor:self.imageViewTwoHolder.trailingAnchor].active = YES;
    [self.imageViewThreeHolder.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.imageViewThreeHolder.widthAnchor constraintEqualToConstant: self.view.frame.size.width].active = YES;
        // Extra bound required here to pin end of images to the pannable scroll view area
    [self.imageViewThreeHolder.trailingAnchor constraintEqualToAnchor:self.scrollViewOne.trailingAnchor].active = YES;
    
    // Disallow zooming
    self.scrollViewOne.minimumZoomScale = 1;
    self.scrollViewOne.maximumZoomScale = 1;
    
    // Enable paging
    [self.scrollViewOne setPagingEnabled:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
