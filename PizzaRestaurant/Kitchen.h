//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Marina Mona June McPeak on 2019-05-30.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>

<<<<<<< HEAD
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza; 
=======
- (BOOL) kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL) kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

- (void) kitchenDidMakePizza:(Pizza *)pizza;
>>>>>>> 70591f1e05a0843c32664df2231b2019309cff9f

@end

@interface Kitchen : NSObject

@property id <KitchenDelegate> delegate;

@property int pizzaSize;

- (Pizza *)makePizzaWithSize:(int)size andToppings:(NSArray *)toppings;



@end
