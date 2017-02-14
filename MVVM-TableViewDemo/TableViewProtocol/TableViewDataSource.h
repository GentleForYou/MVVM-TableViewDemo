//
//  TableViewDataSource.h
//  MVVM-TableViewDemo
//
//  Created by 邵文乐 on 2017/2/14.
//  Copyright © 2017年 邵文乐. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic, strong) NSArray *array;

@end
