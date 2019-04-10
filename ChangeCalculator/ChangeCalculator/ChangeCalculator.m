//
//  ChangeCalculator.m
//  ChangeCalculator
//
//  Created by Luiz on 4/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ChangeCalculator.h"

@implementation ChangeCalculator

//Custom Initializers
- (instancetype)initWithTransactionTotal:(int)transactionTotal CashGiven:(int)cashGiven
{
    
        self = [super init];
        if (self) {
            _transactionTotal = transactionTotal;
            _cashGiven = cashGiven;
        }
        return self;
    
};

//Methods
- (NSDictionary *)calculateChange
{
    NSMutableDictionary *changeDictionary = [[NSMutableDictionary alloc]init];
    int change = (_cashGiven - _transactionTotal);
    int remaind = 0;
    int numberOfBillAndCoins = 0;
    if(change > 2000 )
    {
        numberOfBillAndCoins =  change / (2000);
        remaind = change % 2000;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"twentyDollar"];
        change = remaind;
    }
    if(change > 1000 )
    {
        numberOfBillAndCoins = change / 1000;
        remaind = change % 1000;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"ten"];
        change = remaind;
    }
    if(change > 500 )
    {
        numberOfBillAndCoins = change / 500;
        remaind = change % 500;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"fiveDollar"];
        change = remaind;
    }
    if(change > 200 )
    {
        numberOfBillAndCoins = change / 200 ;
        remaind = change % 200 ;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"twoDollar"];
        change = remaind;
    }
    if(change > 100 )
    {
        numberOfBillAndCoins = change / 100;
        remaind = change % 100;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"oneDollar"];
        change = remaind;
    }
    if(change > 25 )
    {
        numberOfBillAndCoins = change / 25;
        remaind = change % 25;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"quarter"];
        change = remaind;
    }
    if(change > 10 )
    {
        numberOfBillAndCoins = change / 10;
        remaind = change % 10;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"dime"];
        change = remaind;
    }
    if(change > 5 )
    {
        numberOfBillAndCoins = change / 5;
        remaind = change % 5;
        [changeDictionary setObject: [NSNumber numberWithInt: numberOfBillAndCoins] forKey: @"nickel"];
        change = remaind;
    }
    if(change)
    {
        [changeDictionary setObject: [NSNumber numberWithInt: change] forKey: @"penny"];
    }
    
    
    return changeDictionary;
};

@end
