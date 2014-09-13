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
    
   
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height-64)];
    [self.view addSubview:self.scrollView];
    self.scrollView = scrollView;
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    //Because you are in the dvController, you can use self to access title. You want to get the row because the return will be an integer. 
    self.title= [RARecipes titleAtIndex:self.selectedIndexPath.row];
}

-(void)addLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    [self.view addSubview:label];
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
