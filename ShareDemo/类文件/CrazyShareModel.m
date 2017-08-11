//
//  CrazyShareModel.m
//  isellishot
//
//  Created by secoo on 16/1/13.
//  Copyright © 2016年 SecooArt. All rights reserved.
//

#import "CrazyShareModel.h"
//#import "CrazyBasisRequset.h"

static NSString *share_url = nil;
static CrazyShareType share_type = 0;

@implementation CrazyShareModel

-(void)share
{
    if (self.mType == CrazyShareTypeWeiXin ||  CrazyShareTypeWeiXinCircle) {

//        WXMediaMessage *message = [WXMediaMessage message];
//        message.title = self.mTitle;
//        message.description = self.mContent;
//        [message setThumbImage:self.mImage];
//        
//        WXWebpageObject *web = [WXWebpageObject object];
//        web.webpageUrl = self.mWebUrl;
//        message.mediaObject = web;
//        
//        SendMessageToWXReq *rep = [[SendMessageToWXReq alloc] init];
//        rep.bText = NO;
//        rep.message = message;
//        rep.scene = self.mType;
        
        share_url = self.mWebUrl;
        share_type = self.mType + 1;
        
//        if (![WXApi sendReq:rep]) {
//#if DEBUG
//            NSLog(@"！！！微信分享失败");
//#endif
//        }
    }
}

//+(void)getImageWithUrl:(NSString *)urlString  completeString:(completeBlock)block
//{
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            block([UIImage imageWithData:data]);
//        });
//    });
//}
//
//-(void)setMImageUrl:(NSString *)mImageUrl
//{
//    _mImageUrl = mImageUrl;
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:mImageUrl]];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.mImage = [UIImage imageWithData:data];
//        });
//    });
//}
//
//+(void)shareSuccessful{
//    NSString *url = [NSString stringWithFormat:@"share/log"];
//    NSMutableDictionary *dic = [@{@"url":share_url,@"type":[NSString stringWithFormat:@"%d",share_type]} mutableCopy];
//    
//    [CrazyBasisRequset requsetPostWithObj:nil infoDic:dic urlString:url Completion:^(NSDictionary *dic) {
//        
//    } Failed:^(NSError *error) {
//        
//    }];
//}

@end
