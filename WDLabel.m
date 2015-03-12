//
//  DRLabel.m
//  Whyd
//
//  Created by Damien Romito on 18/03/2014.
//  Copyright (c) 2014 Damien Romito. All rights reserved.
//

#import "DRLabel.h"

@interface DRLabel()
@end

@implementation DRLabel

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.edgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    }
    return self;
}

- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}

- (void)sizeToFit
{
    [super sizeToFit];
    CGRect frame = self.frame;
    frame.size.height += self.edgeInsets.top + self.edgeInsets.bottom;
    frame.size.width += self.edgeInsets.right + self.edgeInsets.left;
    self.frame = frame;
}


@end
