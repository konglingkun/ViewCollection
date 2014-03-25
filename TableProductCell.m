//
//  TableProductCell.m
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "TableProductCell.h"

@implementation TableProductCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setCellData:(NSArray*)array{
    cellData = array;
    self.titleLabel.text = cellData[0];
    self.headerImage.image = [UIImage imageNamed:cellData[1]];
    [self.contentLabel setNumberOfLines:4];
    self.contentLabel.text = cellData[2];
    self.selectBtn.clipsToBounds = YES;
    [self.selectBtn setBackgroundImage:[UIImage imageNamed:@"UICheckBoxNormal"] forState:UIControlStateNormal];
    [self.selectBtn setBackgroundImage:[UIImage imageNamed:@"UICheckBoxSelected"] forState:UIControlStateSelected];
    [self.selectBtn addTarget:self action:@selector(didSelectButton:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)didSelectButton:(UIButton*)button{
    button.selected = !button.selected;
    [self.delegate didSelectedCellButton:button];
 
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
