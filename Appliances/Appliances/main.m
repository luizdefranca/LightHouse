//
//  main.m
//  Appliances
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"
#import "BNROwnedAppliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        
        BNROwnedAppliance *ownedAppliance = [[BNROwnedAppliance alloc] initWithProductName: @"Toaster"];
        NSLog(@"%@", ownedAppliance);
        [ownedAppliance addOwnerName: @"Bill"];
        NSLog(@"%@", ownedAppliance);
        
    }
    return 0;
}
