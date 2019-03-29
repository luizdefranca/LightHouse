//
//  main.m
//  ClassesAndMethods
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Animal *liger = [[Animal alloc] init];
        liger.name = @"Liger";
        liger.group = Mammal;
        liger.isExtinct = NO;
        
        [liger eat:@"nachos"];
        
        NSMutableArray *litter = [liger produceOffSpring:3];
        for (Animal *baby in litter) {
            NSLog(@"baby %lu name: %@", [litter indexOfObject:baby] + 1, baby.name);
        }
        
        
    }
    return 0;
}
