//
//  ProductFactory.m
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import "ProductFactory.h"
#import "Notebook.h"
#import "SecondHand.h"

@implementation ProductFactory

+ (NSArray *)productList {
    NSMutableArray *products = [NSMutableArray arrayWithCapacity:20];

    for (int i = 0; i<20; i++) {
        int flip = rand() % 2;

        if (flip == 0) {
            Notebook *n = [[Notebook alloc] init];
            n.name = @"Notebook demo";
            n.price = [NSDecimalNumber decimalNumberWithString:@"799.99"];
            n.screenSize = @"17\"";

            [products addObject:n];

        } else {
            SecondHand *sh = [[SecondHand alloc] init];
            sh.name = @"Second hand demo";
            sh.price = [NSDecimalNumber decimalNumberWithString:@"9.99"];
            sh.hasBox = (rand() % 2) == 0;


            [products addObject:sh];
        }


    }
    return products;
}
@end
