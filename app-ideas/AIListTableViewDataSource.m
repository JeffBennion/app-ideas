//
//  AIListTableViewDataSource.m
//  app-ideas
//
//  Created by Jeff Bennion on 5/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AIListTableViewDataSource.h"

@interface AIListTableViewDataSource ()

@property (nonatomic, strong) NSArray *ideas;

@end

static NSString * const cellIdentifier = @"identifier";

@implementation AIListTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
    //default way of setting up a tableview
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

- (void) newItem
{
    NSLog(@"newItem");
}

@end
