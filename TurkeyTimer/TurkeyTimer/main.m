//
//  main.m
//  TurkeyTimer
//
//  Created by Luiz on 3/19/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

void showCookTimeForTurkey(int pounds){
    int necessaryMinutes = 15 + 15 * pounds;
    NSLog(@"Cook for %i minutes. \n", necessaryMinutes);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int totalWeight = 10;
        int gibletsWeight = 1;
        int turkeyWeight = totalWeight - gibletsWeight;
        showCookTimeForTurkey(turkeyWeight);
    }
    return 0;
}
