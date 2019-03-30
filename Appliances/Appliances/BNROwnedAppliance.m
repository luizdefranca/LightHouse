//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance(){
    NSMutableSet * _ownerNames;
    
}
@end
@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn{
    return [self initWithProductName:pn firstOwnerName: @"Non name"];
}

- (instancetype)initWithProductName:(NSString *)pn
                      firstOwnerName:(NSString *)n
{
    // Call the superclass's initializer
    if (self = [super initWithProductName:pn]){
        
        // Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
    
        // Is the first owner name non-nil?
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    // Return a pointer to the new object
    return self;
}

- (void)addOwnerName:(NSString *)n
{
    if ([_ownerNames containsObject:@"Non name"])
    {
          [_ownerNames removeObject: @"Non name"];
    }
  
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

//Description Method
- (NSString*) description
{
    NSMutableString *description = [NSMutableString stringWithFormat: @"%@",[super description]];
    
    NSMutableString *owners = [NSMutableString stringWithString:@"\nOwners: \n"];
    
    for (NSString *owner in _ownerNames) {
        [owners appendFormat:@"%@ \n", owner ];
    }
    
    [description appendString:owners];
    
    return description;
};

@end
