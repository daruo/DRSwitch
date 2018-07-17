//
//  ViewController.m
//  TestSwitch
//
//  Created by Daruo on 2018/7/17.
//  Copyright © 2018年 BeeSmart. All rights reserved.
//

#import "ViewController.h"
#import "XXRSwitchCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
/** <#param#>     */
@property (nonatomic, strong) UITableView                    *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect tableFrame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    self.tableView = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.backgroundColor = [UIColor orangeColor];
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"123";

//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (nil == cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
//    }
//
//
//    UISwitch *sw = [[UISwitch  alloc] init];
//    cell.accessoryType = UITableViewCellAccessoryNone;
//    cell.accessoryView = sw;
    
    static NSString *identifier2 = @"1234";
    XXRSwitchCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier2];
    if (nil == cell) {
        cell = [[XXRSwitchCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier2];
    }
    cell.textLabel.text = @"定时护眼";
    __weak typeof(cell)weakCell = cell;
    cell.rightSwitch.clickBlock = ^{
        NSLog(@"value ---- %d",weakCell.rightSwitch.isOn);
    };
    
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
