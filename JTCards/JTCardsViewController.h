//
//  CardsViewController.h
//  Cards
//
//  Created by Armin Kroll on 8/07/13.
//  Copyright (c) 2013 jTribe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JTCardsLayout.h"

@interface JTCardsViewController : UIViewController

- (id) initWithCards:(NSArray*)cardControllers;
- (id) initWithCards:(NSArray*)cardControllers layout:(JTCardsLayout*)layout;

@end
