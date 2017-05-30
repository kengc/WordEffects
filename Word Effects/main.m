//
//  main.m
//  Word Effects
//
//  Created by Kevin Cleathero on 2017-05-29.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputNum = 0;
        char inputChars[255];
        int loop = 1;
        
        do{
            printf("Input a number: ");
            fgets(&inputNum, 255, stdin);
            printf("Your number is %c\n", inputNum);
            
            switch (inputNum) {
                case '1':{
                    //1. Uppercase
                    printf("Input a string in all lower case: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *upperCase = [inputString uppercaseString];
                    NSLog(@"Input as upper case: %@", upperCase);
                }
                    break;
                case '2':{
                    //2. Lowercase
                    printf("Input a string in all UPPER case: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *lowerCase = [inputString lowercaseString];
                    NSLog(@"Input as lower case:  %@", lowerCase);
                }
                    break;
                case '3':{
                    //3. Numberize
                    printf("Input another number: ");
                    fgets(inputChars, 255, stdin);
                    
                    NSString *chars = [NSString stringWithUTF8String:inputChars];
                    
                    NSString *trimmed = [[chars componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
                    
                    NSNumberFormatter *f = [[NSNumberFormatter alloc]init];
                    f.numberStyle = NSNumberFormatterDecimalStyle;
                    NSNumber *myNumber = [f numberFromString:trimmed];
                    
                    NSLog(@"string as an NSNumber: %@",myNumber);//NSString to NSNumber
                }
                    break;
                case '4':{
                    //4. Canadianize
                    printf("Input a sentence: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *append = [inputString stringByAppendingString:@", eh?"];
                    NSLog(@"Your 'Canadianized senetence is:  %@", append);
                }
                    
                    break;
                case '5':{
                    //5. Respond
                    printf("Input a sentence ending with either a ? or !: ");
                    fgets(inputChars, 255, stdin);
                    
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *trimmed = [[inputString componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""];
                    
                    if([trimmed hasSuffix:@"?"]){
                        NSLog(@"I don't know");
                    }
                    if ([trimmed hasSuffix:@"!"]){
                        NSLog(@"Whoa, calm down!");
                    }
                }
                    break;
                case '6':{
                    //6. De-Space-It
                    printf("Input a sentence: ");
                    fgets(inputChars, 255, stdin);
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSString *newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Your new sentence is:  %@", newString);
                }
                    break;
                case '7':{
                    //7. word count
                    __block int wordCount = 0;
                    __block int charCount = 0;
                    
                    printf("Input a sentence: ");
                    fgets(inputChars, 255, stdin);
                    
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    
                    [inputString enumerateSubstringsInRange:NSMakeRange(0, [inputString length])
                                                    options:NSStringEnumerationByWords
                                                 usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                                     wordCount += 1;
                                                     charCount += substringRange.length;
                                                 }];
                    
                    if(wordCount <= 1){
                        NSLog(@"Your sentence contained %tu word", wordCount);
                    } else {
                        NSLog(@"Your sentence contains %tu words", wordCount);
                    }
                    
                }
                    break;
                case '8':{
                    //8. remove punctuation
                    printf("Input a sentence: ");
                    fgets(inputChars, 255, stdin);
                    
                    NSString *inputString = [NSString stringWithUTF8String:inputChars];
                    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
                    NSString *strippedReplacement = [[inputString componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@" "];
                    
                    NSLog(@"Your new sentence is:  %@", strippedReplacement);
                }
                    break;
                default:
                    break;
            }
            
        } while(loop == 1);
        
    }
    return 0;
}
