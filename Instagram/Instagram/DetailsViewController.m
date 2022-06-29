//
//  DetailsViewController.m
//  Instagram
//
//  Created by Rachna Gupta on 6/28/22.
//

#import "DetailsViewController.h"
#import "DateTools.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailedImage.file = self.post[@"image"];
    [self.detailedImage loadInBackground];
    self.detailedCaption.text = self.post[@"caption"];
    NSLog(@"%@",self.detailedCaption.text);
    NSDate *date = self.post.createdAt;
    PFUser *user = self.post.author;
    NSString *username = user.username;
    self.username.text = username;
    self.Timestamp.text = date.shortTimeAgoSinceNow;
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
