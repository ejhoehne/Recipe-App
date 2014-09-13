//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Emily Hoehne on 9/12/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecipesTableViewDataSource : NSObject <UITableViewDataSource>
-(void)registerTableview:(UITableView*)tableView;

@end
