//
//  ViewController.m
//  MVVM-TableViewDemo
//
//  Created by 邵文乐 on 2017/2/14.
//  Copyright © 2017年 邵文乐. All rights reserved.
//

#import "ViewController.h"
#import "AAAATableViewCell.h"
#import "TableViewDelegate.h"
#import "TableViewDataSource.h"
#import "TableViewModel.h"

@interface ViewController ()
{
    TableViewDataSource *tableViewDataSource;
    TableViewDelegate *tableViewDelegate;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_tableView registerNib:[UINib nibWithNibName:@"AAAATableViewCell" bundle:nil] forCellReuseIdentifier:@"AAAATableViewCell" ];
    tableViewDataSource = [[TableViewDataSource alloc] init];
    tableViewDelegate = [[TableViewDelegate alloc] init];
    
    _tableView.dataSource = tableViewDataSource;
    _tableView.delegate = tableViewDelegate;
    
    TableViewModel *tableViewMdoel = [[TableViewModel alloc] init];
    tableViewDataSource.array = [[tableViewMdoel getDataViewModel] copy];
    tableViewDelegate.array = [[tableViewMdoel getDataViewModel] copy];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
