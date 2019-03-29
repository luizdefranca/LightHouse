//
//  Dog.h
//  PeopleAndDogs
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LRDog : NSObject
//Properties
@property (nonatomic, strong) NSString *name;

-(void) speak;

@end

NS_ASSUME_NONNULL_END
