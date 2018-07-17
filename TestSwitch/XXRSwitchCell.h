//
//  XXRSwitchCell.h
//  XiaoxianRobot
//
//  Created by Daruo on 2018/7/16.
//  Copyright © 2018年 达若. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XXRSwitch.h"
@interface XXRSwitchCell : UITableViewCell
/** <#param#>     */
@property (nonatomic, assign) BOOL                  isOn;
/** <#param#>     */
@property (nonatomic, strong) XXRSwitch             *rightSwitch;
@end
