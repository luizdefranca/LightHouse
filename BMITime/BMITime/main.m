//
//  main.m
//  BMITime
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"
#import "Maid.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create an instance of BNREmployee;
        BNREmployee *mikey = [[BNREmployee alloc] init];
        
        //Give the instance variables interesting values using setters
        [mikey setWeightInKilos: 96];
        [mikey setHeightInMeters:1.8];
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        
        //Log the instance variables using the getters
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms", height, weight);
       // NSLog(@"Employee %u hired on %@", mikey.employeeID, mikey.hireDate);
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
        
        
        
        //Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"Mikey has a BMI of %.2f", bmi);
        double years = [mikey yearsOfEmployment];
        NSLog(@"%@ has worked with us for %.2f years", mikey, years);
        
        
        //Creating a new instance of BNRPerson and seting the eye color
        
        BNRPerson *peter = [[BNRPerson alloc]init];
        peter.eyeColor = @"blue";
        
        NSLog(@"Peter has %@ eyes", peter.eyeColor);
        
        //Creating a instance of Maid
        Maid *christine = [[Maid alloc]init];
        christine.cleaningBill = 100;
        NSLog(@"%i", christine.cleaningBill);
    }
    return 0;
}
