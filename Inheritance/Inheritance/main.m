//
//  main.m
//  Inheritance
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Train.h"
#import "Bicycle.h"
#import "TandemBicycle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Train *myTrain = [[Train alloc]init];
        myTrain.currentSpeed = 90;
        [myTrain makeNoise];
        NSLog(@"%@", myTrain);
        
        Bicycle *myBicycle = [[Bicycle alloc] init];
        myBicycle.currentSpeed = 45;
        myBicycle.hasBasket = YES;
        [myBicycle makeNoise];
        NSLog(@"%@", myBicycle);
        
        TandemBicycle *myTandeBike = [[TandemBicycle alloc]init];
        myTandeBike.currentSpeed = 60;
        myTandeBike.hasTwoRiders = YES;
        myTandeBike.hasBasket = NO;
        [myTandeBike makeNoise];
        NSLog(@"%@", myTandeBike);
    }
    return 0;
}
