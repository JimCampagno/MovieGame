//
//  IMDBAPIClient.h
//  MovieGame
//
//  Created by Jim Campagno on 4/7/15.
//  Copyright (c) 2015 Gamesmith, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IMDBAPIClient : NSObject

+ (void)getMovieInfoWithCompletion:(void (^)(NSDictionary *))completionBlock;

@end
