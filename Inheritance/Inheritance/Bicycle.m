//
//  Bicycle.m
//  Inheritance
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle

-(void)makeNoise
{
    NSLog(@"Ding Dong");
}

-(NSString *)description
{
    if (self.hasBasket) {
        return [NSString stringWithFormat:@"traveling at %.2f miles per hour with a basket", self.currentSpeed];
    }
    return [super description];
}
@end
