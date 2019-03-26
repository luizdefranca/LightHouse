//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNRStockHolding.h"
#import "BNRStockHolding.h"


@implementation BNRStockHolding
//Getters and Setters
-(float) purchaseSharePrice
{
    return _purchaseSharePrice;
};
-(void) setPurchaseSharePrice: (float) p
{
    _purchaseSharePrice = p;
};

-(float) currentSharePrice
{
    return _currentSharePrice;
};
-(void) setCurrentSharePrice: (float) c
{
    _currentSharePrice = c;
};

-(int) numberOfShare
{
    return _numberOfShares;
};
-(void) setNumberOfShare: (int) n
{
    _numberOfShares = n;
};



-(float) costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}; //purchaseSharePrice * numberOfShares
-(float) valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}; //currentSharePrice * numberOfShares
@end
