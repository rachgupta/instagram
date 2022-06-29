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
    PFUser *user = self.post.author;
    NSString *username = user.username;
    self.username.text = username;
    self.profilePhoto.file = user[@"profilePhoto"];
    [self.profilePhoto loadInBackground];
    [self refreshData];
    // Do any additional setup after loading the view.
}
- (IBAction)didTapLike:(id)sender {
    if(self.post.isFavorited==NO)
    {
        self.post.isFavorited = YES;
        self.post.likeCount = [NSNumber numberWithInt:[self.post.likeCount intValue] + 1];
    }
    else if(self.post.isFavorited==YES)
    {
        self.post.isFavorited = NO;
        self.post.likeCount = [NSNumber numberWithInt:[self.post.likeCount intValue] - 1];
    }
    [self refreshData];
}

- (void)refreshData {
    if(self.post.isFavorited==YES)
    {
        
        [self.likeButton setImage:[UIImage systemImageNamed:@"heart.fill"] forState:UIControlStateNormal];
    }
    else if(self.post.isFavorited==NO)
    {
        [self.likeButton setImage:[UIImage systemImageNamed:@"heart"] forState:UIControlStateNormal];
    }
    NSDate *date = self.post.createdAt;
    self.Timestamp.text = date.shortTimeAgoSinceNow;
    [self.likeButton setTitle:[NSString stringWithFormat:@"%@",self.post.likeCount] forState:UIControlStateNormal];
    [self.post refreshPost];
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
