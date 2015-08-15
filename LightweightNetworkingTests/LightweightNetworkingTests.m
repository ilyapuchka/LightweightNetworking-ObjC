//
//  LightweightNetworkingTests.m
//  LightweightNetworkingTests
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import XCTest;
@import LightweightNetworking;

#import "GitHub.h"
#import "UsersResponse.h"

@interface LightweightNetworkingTests : XCTestCase

@property (nonatomic) id<APIClient, GitHubClient> github;

@end

@implementation LightweightNetworkingTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.github = [NSURLSession sharedSession];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatItCanGetUsers {
    // This is an example of a functional test case.
    XCTestExpectation *expect = [self expectationWithDescription:@"Fetched users"];
    [self.github getUsers:^(UsersResponse *response) {
        XCTAssertNotNil(response);
        XCTAssertTrue([response.processedResponseObject isKindOfClass:[NSArray class]]);
        XCTAssertTrue([[response.processedResponseObject firstObject] isKindOfClass:[User class]]);
        [expect fulfill];
    }];
    [self waitForExpectationsWithTimeout:100 handler:nil];
    
}


@end
