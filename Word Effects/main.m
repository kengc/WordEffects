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
//        a number, to indicate which operation to do
//            a string, to operate on
//            Wrap the whole app in an infinite while loop, so users can do multiple operations.
//                
//                Be sure to print out the menu of options at the start of each loop of the app.
//                
//                As you go through the steps of this assignment, be sure to commit regularly, and push your code to GitHub.
    
        char inputChars[255];
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
    }
    return 0;
}
