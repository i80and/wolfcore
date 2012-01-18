#include <wolfcore/WCObject.h>

@implementation WCObject
+(id) alloc {
	id newobj = class_createInstance(object_getClass(self), 0);
	object_setClass(newobj, self);

	return newobj;
}

+(bool) conformsTo: (Protocol*)proto {
	return class_conformsToProtocol(self, proto);
}

-(id) init {
	return self;
}

-(id) self {
	return self;
}

-(const char*) className {
	return object_getClassName(self);
}

-(bool) conformsTo: (Protocol*)proto {
	return [[self class] conformsTo: proto];
}

-(Class)class {
	return object_getClass(self);
}

-(Class)superClass {
	return class_getSuperclass(object_getClass(self));
}

-(size_t)hash {
	return (size_t)self;
}

-(bool)isEqual: (id)anObject {
	return self == anObject;
}

-(void) dealloc {
	object_dispose(self);
}
@end
