//
//  ProductList.h
//  Store
//
//  Created by konglingkun on 14-3-24.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//
@protocol ProductListDelegate;
#import <UIKit/UIKit.h>

@interface ProductList : UIView<UITableViewDataSource,UITableViewDelegate>{
    NSArray *dataSource;
}
@property (strong, nonatomic) IBOutlet UITableView *productInfo;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic, assign) id<ProductListDelegate>delegate;
-(instancetype)initWithData:(NSArray*)data;
@end
@protocol ProductListDelegate <NSObject>
-(void)didSelectedRowAtIndex:(NSInteger)index;
@end