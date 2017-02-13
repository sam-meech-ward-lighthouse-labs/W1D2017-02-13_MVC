//
//  AlienView.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-02-13.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "AlienView.h"

@implementation AlienView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
//    
//    self.backgroundColor = [UIColor cyanColor];
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches began on Alien View");
    
    [self.nextResponder touchesBegan:touches withEvent:event];
}



@end
