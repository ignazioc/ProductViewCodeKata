//
//  UsedProductCell.m
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import "UsedProductCell.h"

@implementation UsedProductCell

- (void)configureWithProduct:(id<Product>)product {
    self.nameLbl.text = product.name;
    self.priceLbl.text = [product.price description];
}
@end
