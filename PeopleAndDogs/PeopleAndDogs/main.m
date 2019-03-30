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
        
        
        
        LRDog *toto = [[LRDog alloc]init];
        toto.name = @"Toto";
        [toto speak];
        
        LRPerson *brian = [[LRPerson alloc] initWithName:@"Brian" andPet:toto];
        NSLog(@"Brian's pet name is %@", brian.pet.name);
        NSLog(@"Brian's birthday is %@", brian.dateOfBirth);
        
        
        LRDog *snoop = [[LRDog alloc]init];
        snoop.name = @"Snoop";
        brian.pet = snoop;
        NSLog(@"Brian's pet name is %@", brian.pet.name);
        [snoop speak];
        
        LRPerson *adam = [[LRPerson alloc]init];
        adam.name = @"Adam";
        NSLog(@"%@", adam.name);
        NSLog(@"Adam's birthday is %@", adam.dateOfBirth);
//        adam.dateOfBirth = [NSDate date];
        
    }
    return 0;
}
