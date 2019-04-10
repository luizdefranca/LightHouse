//
//  ChangeCalculator.h
//  ChangeCalculator
//
//  Created by Luiz on 4/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChangeCalculator : NSObject
//Proprieties
@property int transactionTotal;
@property int cashGiven;

//Custom Initializers
- (instancetype)initWithTransactionTotal:(int)transactionTotal CashGiven:(int)cashGiven;

//Methods
- (NSDictionary *)calculateChange;

@end

NS_ASSUME_NONNULL_END
