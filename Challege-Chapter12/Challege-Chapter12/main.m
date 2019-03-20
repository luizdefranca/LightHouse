//
//  main.m
//  Challege-Chapter12
//
//  Created by Luiz on 3/20/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *currentHost = [NSHost currentHost];
        NSString *computerName = [currentHost localizedName];
        
        NSLog(@"The name of this computer is %@", computerName );
    }
    return 0;
}
