//
//  DYDotsView.m
//  DYDotsViewDemo
//
//  Created by Dwarven on 15/1/10.
//  Copyright (c) 2015年 Dwarven. All rights reserved.
//

#import "DYDotsView.h"


@interface DYDotView : UIView

@property(nonatomic, strong) UIColor * fillColor;
@property(nonatomic) CGFloat diameter;

@end

@implementation DYDotView

- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.fillColor setFill];
    CGContextAddEllipseInRect(context, CGRectMake(0, 0, self.diameter, self.diameter));
    CGContextDrawPath(context, kCGPathFill);
    CGContextStrokePath(context);
}

@end

@implementation DYDotsView

- (void)setDotsColor:(UIColor *)dotsColor{
    _dotsColor = dotsColor;
    [self buildView];
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self buildView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self buildView];
    }
    return self;
}

- (void)buildView{
    self.layer.cornerRadius = self.bounds.size.width/2;
    for (id subview in self.subviews) {
        [subview removeFromSuperview];
    }
    CGFloat numberDots = 3;
    CGFloat width = self.bounds.size.width/(numberDots + 1);
    CGFloat margin = (self.bounds.size.width - (width * numberDots)) / 1.3;
    CGFloat dotDiameter = width/3;
    CGRect frame = CGRectMake(margin, self.bounds.size.height/2 - dotDiameter/2, dotDiameter, dotDiameter);
    
    for (int i = 0; i <= numberDots -1; i++) {
        DYDotView * dot = [[DYDotView alloc] initWithFrame:frame];
        [dot setDiameter:frame.size.width];
        [dot setFillColor:self.dotsColor];
        [dot setBackgroundColor:[UIColor clearColor]];
        
        [self addSubview:dot];
        frame.origin.x += width;
    }
}

- (void)startAnimating{
    int i = 0;
    for (DYDotView * dot in self.subviews) {
        if ([dot isKindOfClass:[DYDotView class]]) {
            dot.transform = CGAffineTransformMakeScale(0.01, 0.01);
            CGFloat delay = 0.1 * i;
            [UIView animateWithDuration:0.5
                                  delay:delay
                                options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse
                             animations:^{
                                 dot.transform = CGAffineTransformMakeScale(1, 1);
                             } completion:^(BOOL finished) {
                                 
                             }];
            i++;
        }
    }
}

- (void)stopAnimating{
    for (DYDotView * dot in self.subviews) {
        if ([dot isKindOfClass:[DYDotView class]]) {
            dot.transform = CGAffineTransformMakeScale(1, 1);
            [dot.layer removeAllAnimations];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end