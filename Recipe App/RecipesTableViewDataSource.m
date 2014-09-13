//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Emily Hoehne on 9/12/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
static NSString * const cellIdentifier = @"identifier";

@implementation RecipesTableViewDataSource

-(void)registerTableview:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [RARecipes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text= [RARecipes titleAtIndex:indexPath.row];
    return cell;
}

//This adds a section header
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Recipes";
}

@end
