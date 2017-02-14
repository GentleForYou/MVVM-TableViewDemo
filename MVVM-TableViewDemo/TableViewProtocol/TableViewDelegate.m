//
//  TableViewDelegate.m
//  MVVM-TableViewDemo
//
//  Created by 邵文乐 on 2017/2/14.
//  Copyright © 2017年 邵文乐. All rights reserved.
//

#import "TableViewDelegate.h"

@implementation TableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"你点击了第%ld行",indexPath.row);
}
@end
