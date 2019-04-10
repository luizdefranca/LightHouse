//
//  ConditionalAdder.h
//  ConditionalSums
//
//  Created by Luiz on 3/31/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConditionalAdder : NSObject

//Properties
@property (nonatomic, copy) NSArray* numbers;

//Custom Initializers
- (instancetype)initWithNumbers:(NSArray *)numbers;


//Methods
- (int)sumWithCondition:(NSString *)condition;
@end

NS_ASSUME_NONNULL_END
