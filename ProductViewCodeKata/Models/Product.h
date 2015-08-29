//
//  Product.h
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Product <NSObject>
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, strong) NSDecimalNumber *price;
@end
