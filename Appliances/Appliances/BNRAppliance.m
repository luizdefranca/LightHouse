//
//  BNRAppliance.m
//  Appliances
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance
- (instancetype)init
{
    
    return [self initWithProductName: @"Unknown"];
}

//designated initializer
-(instancetype)initWithProductName: (NSString*) pn
{
    self = [super init];
    if(self){
        _productName = [pn copy];
        _voltage = 120;
    }
    return self;
}

-(NSString *) description
{
    return [NSString stringWithFormat: @"<%@: %d volts>", self.productName, self.voltage];
}
@end
