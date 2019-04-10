//
//  ChessBoard.m
//  QueenThreatDetector
//
//  Created by Luiz on 4/5/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "ChessBoard.h"

@implementation ChessBoard


//Custom Initializers
- (instancetype)initWithWhiteQueen:(NSArray *)whiteQueen blackQueen:(NSArray *)blackQueen
{
    
    self = [super init];
    if(self){
        _whiteQueen = whiteQueen;
        _blackQueen = blackQueen;
        arrayboard = [NSMutableArray array];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        [arrayboard addObject: [NSMutableArray arrayWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]] ];
        
        [self putOnTheBoard:_whiteQueen];
        [self putOnTheBoard:_blackQueen];
        
    }
    return self;
};

//Methods

- (NSArray *) layout
{
    return arrayboard;
};

- (BOOL) cellIsEqual:(int)column row:(int)row {
    return [arrayboard[row][column] isEqual: @1];
}

- (BOOL)queenThreat{
    
    int row = [_blackQueen[0] intValue];
    int column = [_blackQueen[1] intValue];
    
    //Searching in the North
    --row;
    while (row >= 0) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        row = row - 1;
    }
    
    //Searching in the Northest
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    --row;
    ++column;
    
    while (row >= 0 && column <8) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        --row;
        ++column;
    }
    
    //Searching in the East
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    ++column;
    while (column < 8) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        ++column;
    }
    
    //Searching in the Southeast
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    ++row;
    ++column;
    while (row <8 && column < 8) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        ++row;
        ++column;
    }
    
    //Searching in the South
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    ++row;
    while (row <8 ) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        ++row;
    }
    
    //Searching in the Southwest
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    ++row;
    --column;
    while (row <8 && column >= 0) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        ++row;
        --column;
    }
    
    //Searching in the West
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    --column;
    while (column >= 0) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        --column;
    }
    
    //Searching in the Northest
    row = [_blackQueen[0] intValue];
    column = [_blackQueen[1] intValue];
    --row;
    --column;
    while (row >= 0 && column >= 0) {
        if ([arrayboard[row][column] isEqual: @1]){
            return YES;
        };
        --row;
        --column;
    }
    
    return NO;
};

//Private Methods
-(void) putOnTheBoard: (NSArray *) piece
{
    int row = [[piece objectAtIndex:0] intValue];
    int column = [[piece objectAtIndex: 1] intValue];
    arrayboard[row][column] = @1;
}

@end
