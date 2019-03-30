//
//  Vehicle.m
//  Inheritance
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(NSString *)description
{
    return [NSString stringWithFormat:@"traveling at %.2f miles per hour", self.currentSpeed];
}

-(void) makeNoise
{
    
}
@end
