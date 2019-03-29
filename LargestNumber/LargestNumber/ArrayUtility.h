//
//  ArrayUtility.h
//  LargestNumber
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayUtility : NSObject
-(NSNumber*) largestNumber: (NSArray *) numbers;
-(NSNumber*) smallestNumber: (NSArray *) numbers;
-(NSNumber*) medianNumber: (NSArray*) numbers;
@end

NS_ASSUME_NONNULL_END
