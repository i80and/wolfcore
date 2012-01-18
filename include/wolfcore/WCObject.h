#ifndef __WCOBJECT_H__
#define __WCOBJECT_H__

#include <stdbool.h>
#include <objc/Object.h>

@protocol WCObject
+(bool) conformsTo: (Protocol*)proto;
-(id) self;
-(const char*) className;
-(bool) conformsTo: (Protocol*)proto;
-(Class) class;
-(Class) superClass;
-(size_t) hash;
-(BOOL) isEqual: (id)anObject;
-(void) dealloc;
@end

@interface WCObject: Object <WCObject> {}
+(id) alloc;
+(bool) conformsTo: (Protocol*)proto;
-(id) init;
-(id) self;
-(const char*) className;
-(bool) conformsTo: (Protocol*)proto;
-(Class) class;
-(Class) superClass;
-(size_t) hash;
-(bool) isEqual: (id)anObject;
-(void) dealloc;
@end

#endif
