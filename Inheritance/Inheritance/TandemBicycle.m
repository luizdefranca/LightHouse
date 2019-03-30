//
//  TandemBicycle.m
//  Inheritance
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "TandemBicycle.h"

@implementation TandemBicycle
-(void)makeNoise
{
    if (_hasTwoRiders){
        NSLog(@"Ding Dong  Ding Dong");
    } else {
        NSLog(@"Ding Dong");
    }
    
}

-(NSString *)description
{
    if (self.hasBasket & self.hasTwoRiders) {
        return [NSString stringWithFormat:@"We are two riders and we are traveling at %.2f miles per hour with a basket", self.currentSpeed];
    } else if(self.hasBasket){
        return [NSString stringWithFormat:@"traveling at %.2f miles per hour with a basket", self.currentSpeed];
    } else if (self.hasTwoRiders){
        return [NSString stringWithFormat:@"We are two riders and we are traveling at %.2f miles per hour", self.currentSpeed];
    }
    
    return [super description];
}
@end
