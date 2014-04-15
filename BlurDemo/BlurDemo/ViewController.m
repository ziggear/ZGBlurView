//
//  ViewController.m
//  BlurDemo
//
//  Created by ziggear on 14-4-15.
//  Copyright (c) 2014年 ziggear. All rights reserved.
//

#import "ViewController.h"
#import "ZGBlurView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *catImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    catImageView.image = [UIImage imageNamed:@"cat.jpg"];
    catImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:catImageView];
    
    ZGBlurView *subBlurView = [[ZGBlurView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:subBlurView];
    
    //should call "blur" after added to super view
    [subBlurView blur];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
