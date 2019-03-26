//
//  main.m
//  Stocks
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        //First Instance
        BNRStockHolding *firstStock = [[BNRStockHolding alloc] init];
        [firstStock setPurchaseSharePrice:2.30];
        [firstStock setCurrentSharePrice:4.50];
        [firstStock setNumberOfShare:40];
        
        
        //Second Instance
        BNRStockHolding *secondStock = [[BNRStockHolding alloc] init];
        [secondStock setPurchaseSharePrice:12.19];
        [secondStock setCurrentSharePrice:10.56];
        [secondStock setNumberOfShare:90];
        
        //Third Instance
        BNRStockHolding *thirdStock = [[BNRStockHolding alloc] init];
        [thirdStock setPurchaseSharePrice:45.10];
        [thirdStock setCurrentSharePrice:49.51];
        [thirdStock setNumberOfShare:210];
        
        NSMutableArray *stockArray = [NSMutableArray arrayWithObjects: firstStock, secondStock, thirdStock, nil];
        
        for (BNRStockHolding *stock in stockArray) {
            int index = (int) [stockArray indexOfObject:stock] + 1;
            float costInDollars = [stock costInDollars];
            float valueInDollars = [stock valueInDollars];
            
            NSLog(@"The stock holding the number %i has the cost of $%.2f and the value $%.2f", index, costInDollars, valueInDollars);
        }
    }
    return 0;
}
