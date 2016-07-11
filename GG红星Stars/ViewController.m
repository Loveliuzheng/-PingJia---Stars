//
//  ViewController.m
//  GG红星Stars
//
//  Created by cqy on 16/6/7.
//  Copyright © 2016年 刘征. All rights reserved.
//

#import "ViewController.h"
#import "XRStar.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XRStar *star = [[XRStar alloc]initWithFrame:CGRectMake(100, 200, 150, 14)];
    
    star.redValue = 3.5;
    
    
    [self.view addSubview:star];


}


@end
