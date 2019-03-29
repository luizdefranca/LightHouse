//
//  LRPerson.h
//  PeopleAndDogs
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRDog.h"

NS_ASSUME_NONNULL_BEGIN

@interface LRPerson : NSObject

@property NSString *name;
@property LRDog *pet;
@end

NS_ASSUME_NONNULL_END
