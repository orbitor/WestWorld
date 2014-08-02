WestWorld
=========

Xcode PGAIE Chapter 2 Example 1

1. There is alot that is wrong with this code. I know that, so please,
    refrain from sending hate mail.
2. Aside from the notion that it "works", there is very little to really
    like about any of the stuff in here. It is an early exercise in porting
    existing C++ code to Objective-C. There are very few design patterns
    I got right here. Singletons and pure virtual base classes are not
    implemented correctly. The state transitions necessitate allocating a
    new state every time, which is silly. Some of these errors were corrected
    in later examples. I left this the way that it was for posterity and a
    bread crumb trail as to my progress in solving some of the patterns
    and usage in ObjC.

The purpose here is to port exisitng C++ code to Objective-C. It works, but
it is far from being 'correct'.

Probably only of interest as an exercise in how not to do this.
