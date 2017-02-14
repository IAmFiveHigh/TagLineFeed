//
//  LHCTagsView.m
//  LHCTagsView
//
//  Created by 我是五高你敢信 on 2016/11/30.
//  Copyright © 2016年 我是五高你敢信. All rights reserved.
//

#import "LHCTagsView.h"

@interface LHCTagsView ()

@property (nonatomic, strong) NSArray *tags;

@end

@implementation LHCTagsView

- (instancetype)initWithFrame:(CGRect)frame tags:(NSArray *)tags {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        self.tags = tags;
        [self createButton];
    }
    return self;
}

- (void)createButton {
    CGFloat coordinateX = 0;
    NSInteger row = 0;
    
    for (int i = 0; i<self.tags.count; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.tag = 300+i;
        button.backgroundColor = [UIColor lightGrayColor];
        button.layer.masksToBounds = YES;
        button.layer.cornerRadius = 10;
        
        NSString *title = self.tags[i];
        CGSize titleSize = [title boundingRectWithSize:CGSizeMake(self.bounds.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesFontLeading|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesDeviceMetrics attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
        titleSize.width += 10;
        
        coordinateX += titleSize.width + 10;
        if (coordinateX >= self.bounds.size.width) {
            coordinateX = titleSize.width;
            
            row += 1;
            button.frame = CGRectMake(10, 10 + 50 * row, titleSize.width, 30);
            coordinateX += 10;
        }else {
            button.frame = CGRectMake(coordinateX - titleSize.width, 10 + 50 * row, titleSize.width, 30);
        }
        
        [button setTitle:title forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:button];
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
