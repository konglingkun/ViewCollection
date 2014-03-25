//
//  ProductModel.h
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductModel.h"

@interface ProductModel : NSObject
@property (nonatomic) CollectionCellType optionType;
@property (nonatomic, strong) NSArray *contentArr;
-(id)initWithArray:(NSArray*)array;
@end
