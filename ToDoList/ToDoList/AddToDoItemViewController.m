//
//  ViewController.m
//  ToDoList
//
//  Created by mac on 16/1/5.
//  Copyright © 2016年 shiziwen. All rights reserved.
//

#import "AddToDoItemViewController.h"

@interface AddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation AddToDoItemViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender == self.doneButton) {
        if (self.textField.text.length > 0) {
            self.toDoItem = [[ToDoItem alloc] init];
            self.toDoItem.itemName = self.textField.text;
            self.toDoItem.completed = NO;
        }
    } else {
        return;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
