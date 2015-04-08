//
//  IMDBAPIClient.m
//  MovieGame
//
//  Created by Jim Campagno on 4/7/15.
//  Copyright (c) 2015 Gamesmith, LLC. All rights reserved.
//

#import "IMDBAPIClient.h"
#import <AFNetworking.h>
#import "Constants.h"

@implementation IMDBAPIClient

+ (void)getMovieInfoWithCompletion:(void (^)(NSDictionary *))completionBlock {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSDictionary *params = @{@"t":@"Titanic",
                             @"plot":@"full"};
    
        NSString *urlString = [NSString stringWithFormat:@"%@",
        DEFAULT_IMDB_REQUEST];
    
        [manager GET:urlString
          parameters:params
             success:^ (NSURLSessionDataTask * task, id responseObject) {
    
                 NSLog(@"%@", responseObject);
                 completionBlock(responseObject);
    
             }
             failure:^ (NSURLSessionDataTask * task, NSError *error) {
                 
    
                 NSLog (@"Issue/Error: %@", error.localizedDescription);
    
             }];
}

- (void)test {
}

//+ (void)getLocationsWithCompletion:(void (^)(NSArray *))completionBlock {
//
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//
//    NSDictionary *params = @{@"key":LOCATION_API_JIM_KEY};
//
//    NSString *urlString = [NSString stringWithFormat:@"%@",
//    LISTING_REQUESTING_URL];
//
//    [manager GET:urlString
//      parameters:params
//         success:^ (NSURLSessionDataTask * task, id responseObject) {
//
//             completionBlock(responseObject);
//
//         }
//         failure:^ (NSURLSessionDataTask * task, NSError *error) {
//
//             NSLog (@"Issue/Error: %@", error.localizedDescription);
//
//         }];
//}

@end
