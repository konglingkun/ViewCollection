//
//  ViewController.m
//  Store
//
//  Created by konglingkun on 14-3-24.
//  Copyright (c) 2014年 konglingkun. All rights reserved.
//

#import "ViewController.h"
#import "ProductList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array = @[@[@"PROTET",@""],@[@"Health",@""],@[@"Life",@""],@[@"Family",@""],@[@"Retirement",@""],@[@"Car",@""],@[@"Property",@""],@[@"Travel",@""]];
    ProductList *product = [[ProductList alloc] initWithData:array];
    product.frame = CGRectMake(0, 0, 1024, 768);
    [self.groupView addSubview:product];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
