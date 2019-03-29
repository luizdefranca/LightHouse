//
//  main.m
//  initializerDemo
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *playerObject = [[Player alloc]init];
        NSLog(@"The score is %i", playerObject.score);
     
        Player *secondPlayer = [[Player alloc] initWithInteger:999];
        
        NSLog(@"The score is %i", playerObject.score);
    }
    return 0;
}
