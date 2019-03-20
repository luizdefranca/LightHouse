//
//  main.m
//  Calculator
//
//  Created by Luiz on 3/19/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    
    
    @autoreleasepool {
        enum OperationType {
            add,
            subtract,
            multiply,
            divide
        };
        
        enum OperationType currentOperation = multiply;
        NSInteger  firstNumber = 20;
        NSInteger  secondNumber = 10;
        NSInteger  result = firstNumber * secondNumber;
        NSString * operationdDescription = @"";
        switch (currentOperation) {
            case add:
                result = firstNumber + secondNumber;
                operationdDescription = @"addition";
                break;
            case subtract:
                result = firstNumber - secondNumber;
                 operationdDescription = @"subtraction";
                break;
            case divide:
                result = firstNumber / secondNumber;
                 operationdDescription = @"divison";
                break;
            default:
                result = firstNumber * secondNumber;
                 operationdDescription = @"multiplication";
                break;
        }
        
        NSLog(@"The first number is %ld, the second number is %ld, and the %@ is %ld", (long)firstNumber, (long)secondNumber, operationdDescription, (long)result);
        
    }
    return 0;
}
