//
//  ProductListCell.m
//  Store
//
//  Created by konglingkun on 14-3-24.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "ProductListCell.h"

@implementation ProductListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
