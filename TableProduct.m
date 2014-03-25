//
//  TableProduct.m
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "TableProduct.h"


@implementation TableProduct

- (id)initWithFrame:(CGRect)frame withData:(NSArray*)array
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"TablePoduct" owner:self options:nil] lastObject];
        dataSource = array;
        self.myTable.frame = frame;
        self.myTable.showsHorizontalScrollIndicator = NO;
        self.myTable.showsVerticalScrollIndicator = NO;
        self.myTable.scrollEnabled = YES;
        self.myTable.delegate = self;
        self.myTable.dataSource = self;
    }
    
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataSource.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    TableProductCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        UINib *nib = [UINib nibWithNibName:@"TableProductCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    [tableView setSeparatorColor:[UIColor clearColor]];
    [cell setCellData:dataSource[indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectBtn.tag = indexPath.row;
    cell.delegate = self;
    return cell;
}
#pragma mark - TableCel lDelegate

-(void)didSelectedCellButton:(UIButton *)button{

}

#pragma mark - UITableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 130;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 0, self.myTable.frame.size.width, 130);
    imageView.image = [UIImage imageNamed:@"SectionHeader.png"];
    return imageView;
}
@end
