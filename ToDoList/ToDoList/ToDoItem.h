//
//  ToDoItem.h
//  ToDoList
//
//  Created by mac on 16/1/6.
//  Copyright © 2016年 shiziwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property (nonatomic, weak) NSString *itemName;
@property (nonatomic) BOOL completed;
@property (nonatomic, readonly) NSDate *creationDate;



@end
