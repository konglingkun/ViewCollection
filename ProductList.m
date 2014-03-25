//
//  ProductList.m
//  Store
//
//  Created by konglingkun on 14-3-24.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "ProductList.h"
#import "ProductListCell.h"
#import "ProductDetail.h"

@implementation ProductList
-(instancetype)initWithData:(NSArray*)data{//data = @[@[@"title1",@"1.png"],@[@"title2",@"2.png"],……]
    self = [super init];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"ProductList" owner:self options:nil] lastObject];
        dataSource = data;
        self.productInfo.scrollEnabled = NO;
        self.productInfo.delegate = self;
        self.productInfo.dataSource = self;
        [self loadScrollView];
    }
    return self;
}

-(void)loadScrollView{
    self.scrollView.contentSize = CGSizeMake(dataSource.count*self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    self.scrollView.scrollEnabled = NO;
    CGRect frame = self.scrollView.frame;
    for (int i=0; i<dataSource.count; i++) {
        UIImageView *imv = [[UIImageView alloc] initWithFrame:CGRectMake(i*frame.size.width, frame.origin.y, frame.size.width, frame.size.height)];
        if (i!=1) {
            imv.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
           [self.scrollView addSubview:imv];
        }else{
            ProductDetail *detail = [[ProductDetail alloc] init];
            detail.frame = CGRectMake(i*frame.size.width, frame.origin.y, frame.size.width, frame.size.height);
            [self.scrollView addSubview:detail];
        }
        
        
    }
}

#pragma mark - UITableView Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataSource.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    ProductListCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        UINib *nib = [UINib nibWithNibName:@"ProductListCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    cell.titleLabel.text = dataSource[indexPath.row][0];
    cell.imageView.image = [UIImage imageNamed:dataSource[indexPath.row][1]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CGRect rect = CGRectMake(indexPath.row*self.scrollView.frame.size.width, self.scrollView.frame.origin.y, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    [self.scrollView scrollRectToVisible:rect animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
