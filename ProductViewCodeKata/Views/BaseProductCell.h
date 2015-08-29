//
//  BaseProductCell.h
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductCell.h"

@interface BaseProductCell : UITableViewCell <ProductCell>
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *priceLbl;


- (void)configureWithProduct:(id<Product>)product;
@end
