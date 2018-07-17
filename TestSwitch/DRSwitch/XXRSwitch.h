//
//  XXRSwitch.h
//  XiaoxianRobot
//
//  Created by Daruo on 2018/7/16.
//  Copyright © 2018年 达若. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonClick)(void);
@interface XXRSwitch : UISwitch
/** 按钮点击回调 */
@property (nonatomic, strong) ButtonClick            clickBlock;
@end
