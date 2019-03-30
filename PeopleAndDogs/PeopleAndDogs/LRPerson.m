//
//  LRPerson.m
//  PeopleAndDogs
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "LRPerson.h"

@implementation LRPerson

- (instancetype)init
{
    _dateOfBirth = [NSDate date];
    return [self initWithName: @""  andPet:[[LRDog alloc]init] ];
}

- (instancetype)initWithName: (NSString*) name andPet:  (LRDog*) pet
{
    self = [super init];
    if (self) {
        _dateOfBirth = [NSDate date];
        _name = name;
        _pet = pet;
    }
    return self;
}



@end
