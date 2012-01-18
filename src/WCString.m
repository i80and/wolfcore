#include <string.h>
#include <wolfcore/WCString.h>

bool WCchar_is_whitespace(WCchar_t x) {
	static const WCchar_t whitespaces[] = {9, 10, 11, 12, 13, 32, 133, 160,
		5760, 6158, 8192, 8193, 8194, 8195, 8196, 8197, 8198, 8199, 8200,
		8201, 8202, 8232, 8233, 8239, 8287, 12288, 0};

	// TODO: Evaluate binary and hash searches
	int i = 0;
	WCchar_t cur = whitespaces[i];
	while(cur != 0) {
		if(x == whitespaces[i]) {
			return true;
		}

		i += 1;
	}
	
	return false;
}

@implementation WCString
-(WCString*) init {
	self = [super init];

	self->n_chars = 0;
	self->str = NULL;

	return self;
}

-(WCString*) initWithUTF8: (const char*) input {
	self = [self init];

	// FIXME: We blindly assume that the user is giving us valid UTF-8.  Maybe
	// not such a hot idea.

	// strlen() excludes the trailing nul byte, which we desire
	const size_t len = strlen(input) + 1;
	self->str = malloc(sizeof(char) * len);
	memcpy(self->str, input, len);

	return self;
}

-(bool) isEmpty {
	return (bool)self->str;
}

-(void) dealloc {
	free(self->str);
	[super dealloc];
}
@end