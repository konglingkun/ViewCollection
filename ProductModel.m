//
//  ProductModel.m
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "ProductModel.h"

@implementation ProductModel
-(id)initWithArray:(NSArray*)array{
    self = [super init];
    if (self && array) {
        self.contentArr = [self InitializeContentData:array];
    }
    return self;
}

-(NSArray*)InitializeContentData:(NSArray*)arr{
    NSMutableArray *content = [[NSMutableArray alloc] init];
    for (int i=0; i<arr.count; i++) {
        ProductModel *rows = [ProductModel new];
        rows.optionType = [arr[i][0] integerValue];
        [content addObject:rows];
    }
    return content;
}
@end
