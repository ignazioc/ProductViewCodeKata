//
//  ProductCell.h
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@protocol ProductCell <NSObject>

- (void)configureWithProduct:(id<Product>)product;

@end
