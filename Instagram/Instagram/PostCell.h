//
//  PostCell.h
//  Instagram
//
//  Created by Rachna Gupta on 6/28/22.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <PFImageView.h>
#import "Post.h"
@import Parse;

NS_ASSUME_NONNULL_BEGIN

@interface PostCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *postCaption;
//@property (weak, nonatomic) IBOutlet PFImageView *imagePost;
@property (strong, nonatomic) IBOutlet PFImageView *imagePost;
@property (strong, nonatomic) Post *post;

@end

NS_ASSUME_NONNULL_END
