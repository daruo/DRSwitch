//
//  XXRSwitchCell.m
//  XiaoxianRobot
//
//  Created by Daruo on 2018/7/16.
//  Copyright © 2018年 达若. All rights reserved.
//

#import "XXRSwitchCell.h"
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
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
    
//    self.accessoryView = self.rightSwitch;
    
    [self.contentView addSubview:self.rightSwitch];
    self.rightSwitch.sd_layout
    .rightSpaceToView(self.contentView, 20)
    .centerYEqualToView(self.contentView)
    .widthIs(60)
    .heightIs(30);
    
}

-(void)valueChange:(XXRSwitch*)sender {
    if (sender.clickBlock) {
        sender.clickBlock();
    }
}

@end
