//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-19.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings
{
  self = [super init];
  if (self) {
    _size = size;
    _toppings = toppings;
  }
  return self;
}

- (NSString *) description {
  NSString *size = @"";
  if (_size == PizzaSizeSmall) {
    size = @"small";
  } else if (_size == PizzaSizeMedium) {
    size = @"medium";
  } else if (_size == PizzaSizeLarge) {
    size = @"large";
  }
  
  NSString *toppings = [self.toppings componentsJoinedByString:@", "];
  return [NSString stringWithFormat:@"%@ pizza with %@", size, toppings];
}

@end
