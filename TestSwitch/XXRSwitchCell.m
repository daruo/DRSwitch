//
//  XXRSwitchCell.m
//  XiaoxianRobot
//
//  Created by Daruo on 2018/7/16.
//  Copyright © 2018年 达若. All rights reserved.
//

#import "XXRSwitchCell.h"

@interface XXRSwitchCell()

@end

@implementation XXRSwitchCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupSubView];
    }
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    return self;
}

-(void)setupSubView {
    self.rightSwitch = [[XXRSwitch alloc] init];
    [self.rightSwitch addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
    self.accessoryView = self.rightSwitch;
    
}

-(void)valueChange:(XXRSwitch*)sender {
    if (sender.clickBlock) {
        sender.clickBlock();
    }
}

@end
