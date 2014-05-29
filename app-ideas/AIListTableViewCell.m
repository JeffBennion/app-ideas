//
//  AIListTableViewCell.m
//  app-ideas
//
//  Created by Jeff Bennion on 5/27/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AIListTableViewCell.h"


@implementation AIListTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    
    UITextField *titleField = [[UITextField alloc] initWithFrame:CGRectMake(0 ,0, 30, 30)];
    titleField.placeholder = @"Idea Name";
    
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
