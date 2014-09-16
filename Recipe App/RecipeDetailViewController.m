//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Emily Hoehne on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "RARecipes.h"

@interface RecipeDetailViewController ()

@property (strong, nonatomic) UIScrollView *scrollView;

@end

@implementation RecipeDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    //Because you are in the dvController, you can use self to access title. You want to get the row because the return will be an integer. The row was removed here because recipeIndex in an integer.
    self.title= [RARecipes titleAtIndex:self.recipeIndex];
    
   
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.scrollView];
    [self addLabelDescription];
    [self addLabelIngredientTitles];
    [self addLabelDirectionsTitle];
    
    
}

-(void)addLabelDescription {
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    description.numberOfLines = 0;
    [self.scrollView addSubview:description];
}

-(void)addLabelIngredientTitles
{
    UILabel *ingredientTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
    ingredientTitle.text = @"Ingredients";
    [self.scrollView addSubview:ingredientTitle];
}
-(void)addLabelDirectionsTitle {
    UILabel *directionTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 100)];
    directionTitle.text= @"Directions";
    [self.scrollView addSubview:directionTitle];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
