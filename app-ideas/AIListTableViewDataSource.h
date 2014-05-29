//
//  AIListTableViewDataSource.h
//  app-ideas
//
//  Created by Jeff Bennion on 5/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AIListTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;
- (void) newItem;

@end
