//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerWhoHatesAnchovies.h"
#import "ManagerWhoIsCheery.h"

NSString* getUserInput(NSString *prompt) {
  NSLog(@"%@", prompt);
  NSLog(@"> ");
  char str[100];
  fgets (str, 100, stdin);
  
  NSString *inputString = [[NSString alloc] initWithUTF8String:str];
  inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  return inputString;
}

NSString* validateManagerInput(NSString *managerInput) {
  while ([managerInput intValue] < 1 || [managerInput intValue] > 3) {
    NSLog(@"Something went wrong, please enter a number from 1-3.");
    managerInput = getUserInput(@"Please choose a manager: \n1. James \n2. Thomas \n3. None");
  }
  return managerInput;
}

NSString* validatePizzaSizeInput(NSString *sizeInput) {
  NSRegularExpression *sizeRegex = [NSRegularExpression regularExpressionWithPattern:@"^(small|medium|large)$" options:NSRegularExpressionCaseInsensitive error:nil];
  while ([sizeRegex numberOfMatchesInString:sizeInput options:0 range:NSMakeRange(0, [sizeInput length])] < 1) {
    NSLog(@"Something went wrong, please enter \"small\" or \"medium\" or \"large\".");
    sizeInput = getUserInput(@"Please enter the size of your pizza: ");
  }
  return sizeInput;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool {
    Kitchen *restaurantKitchen = [Kitchen new];
    ManagerWhoHatesAnchovies *james = [ManagerWhoHatesAnchovies new];
    ManagerWhoIsCheery *thomas = [ManagerWhoIsCheery new];
    
    while (TRUE) {
      NSString *mangerInput = getUserInput(@"Please choose a manager: \n1. James \n2. Thomas \n3. None");
      mangerInput = validateManagerInput(mangerInput);
      
      if ([mangerInput intValue] == 1) {
        restaurantKitchen.delegate = james;
      } else if ([mangerInput intValue] == 2) {
        restaurantKitchen.delegate = thomas;
      }
      
      NSString *inputString = getUserInput(@"Please pick your pizza size and toppings:");
      // Take the first word of the command as the size, and the rest as the toppings
      NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
      
      // And then send some message to the kitchen...
      NSString *sizeInput = [[commandWords firstObject] lowercaseString];
      sizeInput = validatePizzaSizeInput(sizeInput);
      
      PizzaSize pizzaSize;
      if ([sizeInput isEqualToString:@"small"]) {
        pizzaSize = PizzaSizeSmall;
      }
      else if ([sizeInput isEqualToString:@"medium"]) {
        pizzaSize = PizzaSizeMedium;
      }
      else if ([sizeInput isEqualToString:@"large"]) {
        pizzaSize = PizzaSizeLarge;
      }
      else {
        pizzaSize = PizzaSizeMedium;
      }
      
      NSArray *toppingsInput = [[NSArray alloc] initWithArray:[commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)]];
      Pizza *pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppingsInput];
      
      if (pizza) {
        NSLog(@"Pizza has been made successfully.");
      } else {
        NSLog(@"Something went wrong.");
      }
    }
  }
  return 0;
}

