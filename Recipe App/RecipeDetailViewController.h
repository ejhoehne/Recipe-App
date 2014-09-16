//
//  RecipeDetailViewController.h
//  Recipe App
//
//  Created by Emily Hoehne on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeDetailViewController : UIViewController

//To set up the path to the data, create a new property of NSIndexPath here. 
//@property (nonatomic, strong) NSIndexPath *selectedIndexPath;

@property (nonatomic, assign) NSInteger recipeIndex;

@end
