//
//  TableViewModel.m
//  MVVM-TableViewDemo
//
//  Created by 邵文乐 on 2017/2/14.
//  Copyright © 2017年 邵文乐. All rights reserved.
//

#import "TableViewModel.h"

#import "CustomModel.h"

@implementation TableViewModel

- (NSMutableArray *)getDataViewModel
{
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0; i < 15; i++) {
        CustomModel *model = [[CustomModel alloc] init];
        model.title = [NSString stringWithFormat:@"第%d行",i];
        [arr addObject:model];
    }
    
    return arr;
}

@end
