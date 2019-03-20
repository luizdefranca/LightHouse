//
//  main.m
//  BMICalc
//
//  Created by Luiz on 3/19/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Person {
    float heightInMeters;
    int weightInKilos;
    
};

float bodyMassIndex(struct Person p){
    return p.weightInKilos / p.heightInMeters * p.heightInMeters;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct Person mikey;
        mikey.heightInMeters = 1.7;
        mikey.weightInKilos = 96;
        float bmiOfMikey = bodyMassIndex(mikey);
        NSLog(@"Mikey has a BMI of %.2f", bmiOfMikey);
        
        struct Person aaron;
        aaron.heightInMeters = 1.97;
        aaron.weightInKilos = 84;
        float bmiOfAaron = bodyMassIndex(aaron);
        NSLog(@"Aaron has a BMI of %.2f", bmiOfAaron);
        
    }
    return 0;
}
