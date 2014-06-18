//
//  ActivityApp1DetailViewController.h
//  ActivityApp1
//
//  Created by 松久浩伸 on 2014/06/19.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityApp1DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
