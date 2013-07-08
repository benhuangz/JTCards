//
//  CardsViewController.m
//  Cards
//
//  Created by Armin Kroll on 8/07/13.
//  Copyright (c) 2013 jTribe. All rights reserved.
//

#import "JTCardsViewController.h"
#import "JTCardLayout.h"

@interface JTCardsViewController ()
@property BOOL showingAll;
@property (nonatomic,strong) NSMutableArray *cardControllers;
@property (nonatomic,strong) JTCardLayout *layout;
@end

@implementation JTCardsViewController

- (id) initWithCardControllers:(NSArray*)cardControllers
{
  self = [super init];
  if (self) {
    self.cardControllers =  [NSMutableArray arrayWithArray:cardControllers];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];

  for (UIViewController *controller in self.cardControllers)
  {
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
  }
  
  NSMutableArray *views = [NSMutableArray array];
  for (UIViewController *controller in self.childViewControllers) {
    [views addObject:controller.view];
  }
  self.layout = [[JTCardLayout alloc] initWithViews:views containerView:self.view];
  [self.layout layoutAllAnimated:NO];
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end