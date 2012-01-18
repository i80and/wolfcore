// Lightweight and eventually Unicode-aware String class.

#ifndef __WCSTRING_H__
#define __WCSTRING_H__

#include <stdint.h>
#include <stdlib.h>
#include <wolfcore/WCObject.h>

typedef uint32_t WCchar_t;
bool WCchar_is_whitespace(WCchar_t x);

@interface WCString: WCObject {
	size_t n_chars;
	char* str;
}
-(WCString*) init;
-(WCString*) initWithUTF8: (const char*) input;
-(bool) isEmpty;

-(void) dealloc;
@end

#endif