//
//  Printer.h
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#ifndef Printer_h
#define Printer_h
@interface Printer : NSObject
{
    @private
        NSInteger _count;
    @protected
        NSString* _name;
    @public
        NSString* _type;
}
@property NSString* str;
@end

#endif /* Printer_h */
