//
//  CollectionProduct.m
//  Store
//
//  Created by konglingkun on 14-3-25.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "CollectionProduct.h"
#import "CollectionProductCell.h"

@implementation CollectionProduct
@synthesize myCollectionView = _myCollectionView;

- (id)initWithFrame:(CGRect)frame withData:(ProductModel*)data
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"CollectionProduct" owner:self options:nil] lastObject];
        collectionData = data;
        dataSource = data.contentArr;
        [self loadCollectionView];
    }
    return self;
}

-(void)loadCollectionView{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    _myCollectionView.delegate = self;
    _myCollectionView.dataSource = self;
    [_myCollectionView registerClass:[CollectionProductCell class] forCellWithReuseIdentifier:@"CollectionViewCell"];
    _myCollectionView.collectionViewLayout = flowLayout;
}

#pragma mark- collectionView Delegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return dataSource.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionProductCell *Cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    ProductModel *model = collectionData.contentArr[indexPath.row];
    [Cell initWithData:model];
    return Cell;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 2:{
            CGSize size = CGSizeMake(_myCollectionView.frame.size.width/3, _myCollectionView.frame.size.height*.7);
            return size;
        }
            break;
        case 5:{
            CGSize size = CGSizeMake(_myCollectionView.frame.size.width*3/4, _myCollectionView.frame.size.height*.3);
            return size;
        }
            break;
            
        case 6:{
            CGSize size = CGSizeMake(_myCollectionView.frame.size.width*3/4, _myCollectionView.frame.size.height*.3);
            return size;
        }
            break;
        default:
            break;
    }
    CGSize size = CGSizeMake(_myCollectionView.frame.size.width/3, _myCollectionView.frame.size.height*.35);
    return size;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"56");
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    //可以定义每个Section中每行的间距
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    //可以定义每个Section中每行的单元格之间的距离
    return 0;
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
