//
//  TableViewDataSource.m
//  MVVM-TableViewDemo
//
//  Created by 邵文乐 on 2017/2/14.
//  Copyright © 2017年 邵文乐. All rights reserved.
//

#import "TableViewDataSource.h"
#import "AAAATableViewCell.h"
#import "CustomModel.h"
@implementation TableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AAAATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AAAATableViewCell" forIndexPath:indexPath];
    if (_array.count > 0) {
        cell.nameLabel.text = ((CustomModel *)_array[indexPath.row]).title;

    }
    
    return cell;
}

@end
