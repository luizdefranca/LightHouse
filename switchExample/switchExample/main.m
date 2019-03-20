//
//  main.m
//  switchExample
//
//  Created by Luiz on 3/13/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int stormCategory = 4;
        switch (stormCategory) {
            case 1:
                NSLog(@"Time to get indoors.");
                break;
            case 2:
                NSLog(@"Extensive damage - rum and hide!");
                break;
            case 3:
            case 4:
                NSLog(@"Catastrophic damage!");
                break;
            default:
                NSLog(@"That's all");
                break;
        }
    }
    return 0;
}
