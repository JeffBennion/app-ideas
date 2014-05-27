//
//  AIListViewController.m
//  App Ideas
//
//  Created by Joshua Howland on 5/26/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AIListViewController.h"
#import "AIListTableViewDataSource.h"

@interface AIListViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) AIListTableViewDataSource *dataSource;

@end

@implementation AIListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.dataSource = [AIListTableViewDataSource new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tableView.dataSource = self.dataSource;
    
    [self.view addSubview:tableView];
    self.tableView = tableView;

}

@end