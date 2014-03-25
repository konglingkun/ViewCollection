//
//  CollectionProduct.h
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductModel.h"

@interface CollectionProduct : UIView<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>{
    NSArray *dataSource;
    ProductModel *collectionData;
}
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) IBOutlet UICollectionView *myCollectionView;
- (id)initWithFrame:(CGRect)frame withData:(ProductModel*)data;
@end
