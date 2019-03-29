//
//  main.m
//  Chapter_30_Properties_of_The_Big_Nerd_Ranch
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRPerson *mikey = [[BNRPerson alloc]init];
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f metter tall and weight %d kilos", height,weight);
        
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %.2f", bmi);
        
    }
    return 0;
}
