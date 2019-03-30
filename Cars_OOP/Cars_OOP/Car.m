//
//  Car.m
//  Cars_OOP
//
//  Created by Luiz on 3/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Car.h"

@implementation Car

//Initializers
- (instancetype)initWithModel: (NSString*) model
{
    self = [super init];
    if (self) {
        _model = model;
    }
    return self;
}

//Methods
-(void)drive
{
    NSLog(@"%@", self.model);
}
@end
