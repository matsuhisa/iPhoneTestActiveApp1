//  ActivityApp1DetailViewController.m
//  ActivityApp1

#import "ActivityApp1DetailViewController.h"

@interface ActivityApp1DetailViewController ()
- (void)configureView;
@end

@implementation ActivityApp1DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Share:(id)sender {
    NSLog(@"-----------");
    NSLog(@"share");
    NSLog(@"-----------");

    NSString *text  = @"投稿するテキスト";
    NSURL    *url   = [NSURL URLWithString:@"http://wwww.yahoo.co.jp/"];
    NSArray *activityItems = @[text, url];

    // 除外するものを指定
    //NSArray *acitivities = @[UIActivityTypeMail, UIActivityTypeMessage, UIActivityTypePrint, UIActivityTypePostToFacebook, UIActivityTypeCopyToPasteboard];
    NSArray *acitivities = @[];
    
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:activityItems
    applicationActivities:nil];
    
    activityView.excludedActivityTypes = acitivities;
    
    [self presentViewController:activityView animated:YES completion:nil];
}

@end
