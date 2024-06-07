//
//  MyDatabase.h
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#ifndef MyDatabase_h
#define MyDatabase_h

@interface MyDatabase : NSObject
@property NSMutableArray* data;

- (NSMutableArray*) gennerateNewData;
@end

#endif /* MyDatabase_h */
