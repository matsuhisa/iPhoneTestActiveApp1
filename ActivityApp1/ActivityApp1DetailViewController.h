//  ActivityApp1DetailViewController.h
//  ActivityApp1

#import <UIKit/UIKit.h>

@interface ActivityApp1DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

- (IBAction)Share:(id)sender;
@end
