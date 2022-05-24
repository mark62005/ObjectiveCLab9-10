//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

- (NSString *)deliverPizza: (Pizza *)pizza {
  NSLog(@"Pizza has been delivered.");
  return [pizza description];
}

@end
