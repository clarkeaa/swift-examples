DEVELOPER=/Applications/Xcode6-Beta.app/Contents/Developer
CLANG=$(DEVELOPER)/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
SWIFT=$(DEVELOPER)/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift
SDK=$(DEVELOPER)/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk
SWIFTMACOSX=$(DEVELOPER)/Toolchains/XcodeDefault.xctoolchain/usr/lib/swift/macosx
ARCLITE=$(DEVELOPER)/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc/libarclite_macosx.a
LDFLAGS=-arch x86_64 -isysroot $(SDK) -mmacosx-version-min=10.9 -lswift_stdlib_core -L$(SWIFTMACOSX) \
-Xlinker -rpath -Xlinker $(SWIFTMACOSX) -Xlinker -force_load -Xlinker $(ARCLITE)
SWIFTFLAGS=-target x86_64-apple-macosx10.9 -O0 -sdk $(SDK) -g -c

print-google: main.o
	$(CLANG) $(LDFLAGS) -o ./print-google ./main.o 
main.o: main.swift
	$(SWIFT) $(SWIFTFLAGS) ./main.swift

