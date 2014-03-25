//
//  CollectionProductCell.m
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "CollectionProductCell.h"

@implementation CollectionProductCell

-(void)initWithData:(ProductModel*)data{
    dataSource = data;
    if ([self viewWithTag:100]) {
        [[self viewWithTag:100] removeFromSuperview];
    }
    switch (data.optionType) {
        case UICollectionViewCellScroll:
            [self addScrollView];
            break;
        case UICollectionViewCellNomal:
            [self addQuestionView];
            break;
        default:
            break;
    }
}
-(void)addScrollView{
    UIScrollView *scroll = [[UIScrollView alloc] init];
    scroll.backgroundColor = [UIColor purpleColor];
    scroll.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    scroll.scrollEnabled = YES;
    scroll.contentSize = CGSizeMake(dataSource.contentArr.count * scroll.frame.size.width, scroll.frame.size.height);
    [self addSubview:scroll];

}

-(void)addQuestionView{
    UILabel *label = [[UILabel alloc] init];
    label.layer.borderColor = [[UIColor grayColor] CGColor];
    label.layer.borderWidth = 0.5;
    label.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    label.text = @"oortwertwertw";
    label.backgroundColor = [UIColor clearColor];
    [self addSubview:label];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
