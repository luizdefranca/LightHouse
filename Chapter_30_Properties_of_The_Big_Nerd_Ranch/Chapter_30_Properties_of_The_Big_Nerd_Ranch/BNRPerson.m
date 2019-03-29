//
//  BNRPerson.m
//  Chapter_30_Properties_of_The_Big_Nerd_Ranch
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson
-(float) bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos]/(h*h);
};
@end
