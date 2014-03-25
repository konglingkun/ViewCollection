//
//  ProductDetail.m
//  Store
//
//  Created by konglingkun on 14-3-24.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "ProductDetail.h"
#import "TableProduct.h"
#import "CollectionProduct.h"
#import "ProductModel.h"


@implementation ProductDetail

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(instancetype)init{
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"ProductDetail" owner:self options:nil] lastObject];
        NSArray *tableArr = @[
        @[@"JinLi Beauty",@"0.jpg",@"speecial care for specified\n cance years of payment speecial care for specifie"],
        @[@"Easy life",@"1.jpg",@"speecial care for specified cance years of payment"],
        @[@"Comfort life",@"2.jpg",@"speecial\n care for specified cance years of payment"],
        @[@"Ankang",@"3.jpg",@"speecial care for specified cance\n years of payment"],
        @[@"TaiBao",@"4.jpg",@"speecial care for\n specified cance years of payment"]];
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
            self.bounds = CGRectMake(0, -20, self.frame.size.width, self.frame.size.height);
        }
        CGRect frame = self.frame;
        TableProduct *table = [[TableProduct alloc] initWithFrame:CGRectMake(0, 0, frame.size.width/2, frame.size.height) withData:tableArr];
        [self.rightView addSubview:table];
        
        
        ProductModel *model = [[ProductModel alloc] initWithArray:@[@[@"1"],@[@"1"],@[@"1"],@[@"1"],@[@"1"],@[@"1"],@[@"0"]]];
        CollectionProduct *product = [[CollectionProduct alloc] initWithFrame:CGRectMake(0, 0, 351, 724) withData:model];
        [self.leftView addSubview:product];
    }
    return self;
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
