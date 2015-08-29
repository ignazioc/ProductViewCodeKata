//
//  UsedProductCell.h
//  ProductViewCodeKata
//
//  Created by Ignazio Calò on 29/08/2015.
//  Copyright (c) 2015 IgnazioC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductCell.h"


@interface UsedProductCell : UITableViewCell <ProductCell>
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UILabel *priceLbl;
@property (weak, nonatomic) IBOutlet UILabel *hasBoxLbl;

@end
