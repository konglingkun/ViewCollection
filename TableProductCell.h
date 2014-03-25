//
//  TableProductCell.h
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//
@protocol TableProductCellDelegate;
#import <UIKit/UIKit.h>

@interface TableProductCell : UITableViewCell{
    NSArray *cellData;
}
@property (strong, nonatomic) IBOutlet UIButton *selectBtn;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;

@property (strong, nonatomic) IBOutlet UIImageView *headerImage;
@property (nonatomic, assign) id<TableProductCellDelegate>delegate;
-(void)setCellData:(NSArray*)array;
@end

@protocol TableProductCellDelegate <NSObject>
-(void)didSelectedCellButton:(UIButton*)button;
@end