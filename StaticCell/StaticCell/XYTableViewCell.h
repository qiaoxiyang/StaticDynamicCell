//
//  TableViewCell.h
//  StaticCell
//
//  Created by xiyang on 2017/4/14.
//  Copyright © 2017年 xiyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *lab_name;
@property (nonatomic, weak) IBOutlet UILabel *lab_content;
@property (nonatomic, weak) IBOutlet UIImageView *img_avatar;


@end
