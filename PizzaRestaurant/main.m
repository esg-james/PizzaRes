//
//  main.m
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "AngryKitchenManager.h"
#import "CheeryKitchenManager.h"
#import "InputHandler.h"
#import "KitchenManager.h"



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
<<<<<<< HEAD
        
        
        NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces): ");

        Kitchen *restaurantKitchen = [[Kitchen alloc]init];
        KitchenManager *myKitchenManager = [[KitchenManager alloc] init];
        NSString *formattedUserInputString = [InputHandler formatUserInput];
        NSMutableArray *commandWords = [[formattedUserInputString componentsSeparatedByString:@" "] mutableCopy];
        NSString *theSize = commandWords[0];
        
        
        
        
        
        Pizza* madePizza;
        
        if ([commandWords[0] isEqualToString: @"pepperoni"])
        {
            madePizza = [restaurantKitchen makePizzaWithSize:0
                                                 andToppings:[[NSArray alloc] initWithObjects: commandWords[0], nil]];
        }
        else
        {
            int numSize = -1;
            if([theSize isEqualToString:@"small"])
                numSize = 0;
            else if ([theSize isEqualToString:@"medium"])
                numSize = 1;
            else if ([theSize isEqualToString:@"large"])
                numSize = 2;
            
            restaurantKitchen.delegate = myKitchenManager;
            NSArray *toppingsArr = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count-1)];
=======
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        AngryKitchenManager *angryKitchenManager = [[AngryKitchenManager alloc] init];
        CheeryKitchenManager *cheeryKitchenManager = [[CheeryKitchenManager alloc] init];
        
        NSLog(@"Please select your manager of choice.\nEnter 1 for Angry Mangager, 2 for Cheery Manager, or 3 to get the pizza yourself.");

        while (YES) {
            
            NSString *formattedUserInputManagerString = [InputHandler formatUserInput];
            
            if ([formattedUserInputManagerString isEqualToString:@"1"]) {
                
                restaurantKitchen.delegate = angryKitchenManager;
                break;
                
            } else if ([formattedUserInputManagerString isEqualToString:@"2"]) {
                
                restaurantKitchen.delegate = cheeryKitchenManager;
                break;
                
            } else if ([formattedUserInputManagerString isEqualToString:@"3"]) {
                
                restaurantKitchen.delegate = NULL;
                break;
                
            } else {
                
                NSLog(@"Oops, sorry, %@ not a valid input. Please try again.", formattedUserInputManagerString);
                
            }
        }
        
        NSLog(@"Please enter the size of pizza you'd like, as well as the desired toppings (separated by spaces): ");
        
        while (YES) {
            
            NSString *formattedUserInputString = [InputHandler formatUserInput];
            
            Pizza *thePizza = [restaurantKitchen makePizzaWithSize:formattedUserInputString];
            
            if (thePizza == NULL) {
                
                continue;
                
            } else {
                
            NSLog(@"%@",thePizza);
                
            }
>>>>>>> 70591f1e05a0843c32664df2231b2019309cff9f
            
            
            if([restaurantKitchen.delegate kitchen:restaurantKitchen
                             shouldMakePizzaOfSize: numSize
                                       andToppings:commandWords])
            {

                
                madePizza =  [restaurantKitchen makePizzaWithSize: numSize
                                                      andToppings: toppingsArr];
            }

            
            
            // what type is it
            
           NSLog(@"%@",  [madePizza description] );
        }
        
        
        
    }
    
    
    
    return 0;
}
