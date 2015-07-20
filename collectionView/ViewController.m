//
//  ViewController.m
//  collectionView
//
//  Created by ～采菇凉的小蘑菇～ on 15/3/26.
//  Copyright (c) 2015年 ～采菇凉的小蘑菇～. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.automaticallyAdjustsScrollViewInsets = YES;
    
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    [flow setScrollDirection:UICollectionViewScrollDirectionHorizontal];

    flow.minimumLineSpacing = 0;
    
    //flow.minimumInteritemSpacing
    
    UICollectionView * collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)collectionViewLayout:flow];
    
    collectionView.pagingEnabled = YES;
    
    collectionView.delegate = self;
    
    collectionView.dataSource = self;
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellId"];
    
    NSLog(@"%f",self.view.frame.size.width);
    
    [self.view addSubview:collectionView];
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{

    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}


-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithRed:(arc4random() % 100) / 100.0 green:(arc4random() % 100) / 100.0 blue:(arc4random() % 100) / 100.0 alpha:1];
    
    return cell;

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
