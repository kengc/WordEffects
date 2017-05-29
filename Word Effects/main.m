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
      
//        The app will take in two pieces of data from the user:
//        
//        a number - to indicate which operation to do
//        a string - to operate on
//
//        Wrap the whole app in an infinite while loop, so users can do multiple operations.
//                
//        Be sure to print out the menu of options at the start of each loop of the app.
//                
//        As you go through the steps of this assignment, be sure to commit regularly, and push your code to GitHub.
        
        char inputNum = 0;
        char inputChars[255];
        
        printf("Input a number: ");
        fgets(&inputNum, 255, stdin);
        printf("Your number is %c\n", inputNum);
        
//        printf("Input a string: ");
//        fgets(inputChars, 255, stdin);
//        printf("Your string is %s\n", inputChars);
        
       
        
        //NSLog(@"Input was: %@", inputString);
        
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
                
                NSLog(@"string as a number: %@",myNumber);//NSString to NSNumber
            }
                break;
            case 4:
                //4. Canadianize
                break;
            case 5:
                //5. Respond
                break;
            case 6:
                //6. De-Space-It
                break;
                
            default:
                break;
        }
        
        
    }
    return 0;
}
