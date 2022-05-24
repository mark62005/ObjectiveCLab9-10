//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Manager.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DeliveryServiceDelegate <NSObject>

- (NSString *)deliverPizza: (Pizza *)pizza;

@end

@interface DeliveryService : NSObject <DeliveryServiceDelegate>;

@property (nonatomic, weak) id<DeliveryServiceDelegate> delegate;
@property NSMutableArray *pizzaRecord;

- (NSString *)deliverPizza: (Pizza *)pizza;
- (NSMutableArray *)returnPizzaRecord;

@end

NS_ASSUME_NONNULL_END
