wolfcore
========

Goals
-----
Objective-C, historically, is a very heavy-weight framework that is, no matter
how you slice it, is a second-class citizen outside of Mac OS.  While there are
very competent attempts are recreating the OpenSTEP APIs on other platforms,
the end result is extremely jarring.

Wolfcore takes the opposite approach, throwing OpenSTEP to the wind and doing
its own thing, attempting to stay as lean as possible.  It will contain a base
object class, a lightweight Unicode-aware string class, and several common
containers.

Current Status
--------------
Stubby

Usage
-----
wolfcore comes with libobjc2 1.6 available from [here](http://download.gna.org/gnustep/).
Its Makefile is slightly changed to build with GCC.  I may change it in the future to build
with clang, as wolfcore currently does.

Instructions to be written.
