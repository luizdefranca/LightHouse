//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject
{
@private float _purchaseSharePrice;
@private float _currentSharePrice;
@private int _numberOfShares;
}

//Getters and Setters
-(float) purchaseSharePrice;
-(void) setPurchaseSharePrice: (float) p;

-(float) currentSharePrice;
-(void) setCurrentSharePrice: (float) c;

-(int) numberOfShare;
-(void) setNumberOfShare: (int) n;



-(float) costInDollars; //purchaseSharePrice * numberOfShares
-(float) valueInDollars; //currentSharePrice * numberOfShares


@end

NS_ASSUME_NONNULL_END
