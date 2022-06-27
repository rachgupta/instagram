//
//  HomeFeedViewController.m
//  Instagram
//
//  Created by Rachna Gupta on 6/27/22.
//

#import "HomeFeedViewController.h"
#import "Parse/Parse.h"


@interface HomeFeedViewController ()

@end

@implementation HomeFeedViewController
- (IBAction)didTapLogout:(id)sender {
    [PFUser logOutInBackgroundWithBlock:^(NSError * _Nullable error) {
    }];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
