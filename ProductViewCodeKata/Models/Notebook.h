//
//  Notebook.h
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Notebook : NSObject <Product>

@property (nonatomic, copy)   NSString *name;
@property (nonatomic, strong) NSDecimalNumber *price;

@property (nonatomic, copy)   NSString *screenSize;
@end
