//
//  Post.h
//  Instagram
//
//  Created by Rachna Gupta on 6/28/22.
//

#import <Foundation/Foundation.h>
#import "Parse/Parse.h"
NS_ASSUME_NONNULL_BEGIN
@interface Post : PFObject<PFSubclassing>

@property (nonatomic, strong) NSString *postID;
@property (nonatomic, strong) NSString *userID;
@property (nonatomic, strong) PFUser *author;

@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) PFFileObject *image;
@property (nonatomic, strong) NSNumber *likeCount;
@property (nonatomic, strong) NSNumber *commentCount;
@property (nonatomic) BOOL isFavorited;

+ (void) postUserImage: ( UIImage * _Nullable )image withCaption: ( NSString * _Nullable )caption withCompletion: (PFBooleanResultBlock  _Nullable)completion;
- (void) refreshPost;

@end

NS_ASSUME_NONNULL_END
