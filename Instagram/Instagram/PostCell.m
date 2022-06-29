//
//  PostCell.m
//  Instagram
//
//  Created by Rachna Gupta on 6/28/22.
//

#import "PostCell.h"
#import "Parse/Parse.h"
#import "Post.h"
#import "DateTools.h"

@implementation PostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)setPost:(Post *)post {
    //Post *selected_post = post;
    _post = post;
    self.imagePost.file = post[@"image"];
    [self.imagePost loadInBackground];
    self.postCaption.text = post[@"caption"];
    NSLog(@"%@",self.postCaption.text);
    PFUser *user = self.post.author;
    NSString *username = user.username;
    self.username.text = username;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
