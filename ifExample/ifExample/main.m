//
//  main.m
//  ifExample
//
//  Created by Luiz on 3/13/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int stormCategory = 4;
        
        if (stormCategory != 1) {
            NSLog(@"Storm's a-coming!");
        }
        
        if (stormCategory == 4 || stormCategory == 5) {
            NSLog(@"Catastrophe!");
        }
    }
    return 0;
}
