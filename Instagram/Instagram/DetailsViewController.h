//
//  DetailsViewController.h
//  Instagram
//
//  Created by Rachna Gupta on 6/28/22.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import <PFImageView.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet PFImageView *detailedImage;
@property (weak, nonatomic) IBOutlet UILabel *detailedCaption;
@property (weak, nonatomic) IBOutlet UILabel *Timestamp;
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UIButton *likeButton;
@property (weak, nonatomic) IBOutlet PFImageView *profilePhoto;
@property (nonatomic, assign) Post *post;
- (void) refreshData;
@end

NS_ASSUME_NONNULL_END
