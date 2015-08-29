//
//  ViewController.m
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import "ViewController.h"
#import "ProductFactory.h"
#import "ProductCell.h"

#import "Notebook.h"


@interface ViewController ()
@property (nonatomic) NSArray *productList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.productList = [ProductFactory productList];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate / UITableViewDataSource

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.productList count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    id product = self.productList[indexPath.row];

    UITableViewCell *cell = nil;

    //THIS IS WRONG! :)
    if ([product isKindOfClass:[Notebook class]]) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"BaseProductCell" forIndexPath:indexPath];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"UsedProductCell" forIndexPath:indexPath];
    }

    [(id<ProductCell>)cell configureWithProduct:self.productList[indexPath.row]];

    return cell;
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}


@end
