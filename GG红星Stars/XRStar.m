//
//  XRStar.m
//  GG红星Stars
//
//  Created by cqy on 16/6/7.
//  Copyright © 2016年 刘征. All rights reserved.
//

#import "XRStar.h"

@implementation XRStar


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self layoutSubview];
    }
    return self;
}

-(void)layoutSubview{
    
    self.image = [UIImage imageNamed:@"starGray5"];
    
    _redBgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    
    [self addSubview:self.redBgView];
    
    UIImageView *redImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    
    redImage.image = [UIImage imageNamed:@"starRed5"];
    
    [self.redBgView addSubview:redImage];
    
    
    self.redBgView.clipsToBounds = YES;
    
    
    
}
-(void)setRedValue:(float)redValue{
    
    _redValue = redValue;
    
    CGRect rect = self.redBgView.frame;
    
    rect.size.width = rect.size.width*(redValue/5.0);
    
    self.redBgView.frame = rect;
    
}
@end
