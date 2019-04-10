//
//  ChessBoard.h
//  QueenThreatDetector
//
//  Created by Luiz on 4/5/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChessBoard : NSObject
{
    NSMutableArray* arrayboard;
}

//PropCharProperties
@property (nonatomic, copy) NSArray* whiteQueen;
@property (nonatomic, copy) NSArray* blackQueen;
//@property
//Custom Initializers
- (instancetype)initWithWhiteQueen:(NSArray *)whiteQueen blackQueen:(NSArray *)blackQueen;

//Methods
- (NSArray *)layout;
- (BOOL)queenThreat;

@end

NS_ASSUME_NONNULL_END
