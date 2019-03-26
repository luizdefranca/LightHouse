//
//  main.m
//  BMITime
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create an instance of BNRPerson;
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        //Give the instance variables interesting values using setters
        [mikey setWeightInKilos: 96];
        [mikey setHeightInMeters:1.8];
        
        //Log the instance variables using the getters
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        //Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"Mikey has a BMI of %.2f", bmi);
        
        
    }
    return 0;
}
