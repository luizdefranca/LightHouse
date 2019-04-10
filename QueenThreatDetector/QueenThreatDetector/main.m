//
//  main.m
//  QueenThreatDetector
//
//  Created by Luiz on 4/5/19.
//  Copyright © 2019 Luiz. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ChessBoard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *whiteQueen = @[@0, @05];
        NSArray *blackQueen = @[@5, @0];
        
        ChessBoard *board = [[ChessBoard alloc] initWithWhiteQueen:whiteQueen blackQueen:blackQueen];
        
        NSLog(@"%@", [board layout]);
        
        NSLog(@"%d", [board queenThreat]); // 1 (1 == YES, 0 == NO)
        
        /*
         [
         [0, 0, 0, 0, 0, 1, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [1, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0],
         [0, 0, 0, 0, 0, 0, 0, 0]
         ]
         */
        
    }
    return 0;
}
