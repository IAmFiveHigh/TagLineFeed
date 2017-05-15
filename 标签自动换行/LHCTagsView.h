//
//  LHCTagsView.h
//  LHCTagsView
//
//  Created by 我是五高你敢信 on 2016/11/30.
//  Copyright © 2016年 我是五高你敢信. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LHCTagViewDelegate <NSObject>

- (void)tagBeClickWithTag:(NSInteger)tag;

@end

@interface LHCTagsView : UIView

@property (nonatomic, weak) id<LHCTagViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame tags:(NSArray *)tags;

@end
