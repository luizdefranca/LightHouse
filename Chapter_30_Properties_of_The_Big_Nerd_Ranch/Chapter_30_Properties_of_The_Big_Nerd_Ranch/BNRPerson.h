//
//  BNRPerson.h
//  Chapter_30_Properties_of_The_Big_Nerd_Ranch
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

-(float) bodyMassIndex;
@end

NS_ASSUME_NONNULL_END
