//
//  ViewController.m
//  DYDotsViewDemo
//
//  Created by Dwarven on 15/1/10.
//  Copyright (c) 2015年 Dwarven. All rights reserved.
//

#import "ViewController.h"
#import "DYDotsView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DYDotsView *dotsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DYDotsView * dots = [[DYDotsView alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    [dots setNumberOfDots:@5];
//    [dots setDuration:@0.4];
    [dots setDotsColor:[UIColor redColor]];
    [dots startAnimating];
    [dots setCenter:self.view.center];
    [self.view addSubview:dots];
    
    [_dotsView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
