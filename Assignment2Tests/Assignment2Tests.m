//
//  Assignment2Tests.m
//  Assignment2Tests
//
//  Created by Ajeet on 16/08/16.
//  Copyright © 2016 CG. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Assignment2Tests : XCTestCase

@end

@implementation Assignment2Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExamplePass {
    int first = 1;
    int second = 2;
    XCTAssertTrue(first+second == 3);
}

- (void)testExampleFail {
    int first = 1;
    int second = 2;
    XCTAssertTrue(first+second == 2);
}


@end
