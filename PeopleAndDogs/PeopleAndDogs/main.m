//
//  main.m
//  PeopleAndDogs
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LRPerson.h"
#import "LRDog.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LRPerson *brian = [[LRPerson alloc] init];
        
        LRDog *toto = [[LRDog alloc]init];
        toto.name = @"Toto";
        brian.pet = toto;
        NSLog(@"Brian's pet name is %@", brian.pet.name);
        [toto speak];
        
        LRDog *snoop = [[LRDog alloc]init];
        snoop.name = @"Snoop";
        brian.pet = snoop;
        NSLog(@"Brian's pet name is %@", brian.pet.name);
        [snoop speak];
        
    }
    return 0;
}
