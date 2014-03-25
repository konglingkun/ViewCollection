//
//  CollectionProductCell.h
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductModel.h"

@interface CollectionProductCell : UICollectionViewCell{
    ProductModel *dataSource;
}
-(void)initWithData:(ProductModel*)data;
@end
