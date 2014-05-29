//
//  AIListViewController.m
//  app-ideas
//
//  Created by Jeff Bennion on 5/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AIListViewController.h"
#import "AIListTableViewDataSource.h"

@interface AIListViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) AIListTableViewDataSource *dataSource;

@end

@implementation AIListViewController

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
    
    self.navigationItem.title = @"App Ideas";
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @"Ideas"
                                   style:UIBarButtonItemStylePlain
                                   target:nil
                                   action:nil];
    
    [self.navigationItem setBackBarButtonItem:backButton];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addIdea)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    _dataSource = [AIListTableViewDataSource new];
    [_dataSource registerTableView:_tableView];
    
    _tableView.dataSource = _dataSource;
    
    
}

- (void) addIdea
{
    [_dataSource newItem];
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
