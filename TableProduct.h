//
//  TableProduct.h
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableProductCell.h"


@interface TableProduct : UIView<UITableViewDataSource,UITableViewDelegate,TableProductCellDelegate>{
    NSArray *dataSource;
}
@property (strong, nonatomic) IBOutlet UITableView *myTable;
- (id)initWithFrame:(CGRect)frame withData:(NSArray*)array;
@end
