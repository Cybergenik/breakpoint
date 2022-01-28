# import lldb
# import os

# exe = "./a.out"
# debugger = lldb.SBDebugger.Create()
# debugger.SetAsync (False)

# print "Creating a target for '%s'" % exe

# target = debugger.CreateTargetWithFileAndArch (exe, lldb.LLDB_ARCH_DEFAULT)

# if target:
#     main_bp = target.BreakpointCreateByName ("main", target.GetExecutable().GetFilename());

#     print main_bp

#     process = target.LaunchSimple (None, None, os.getcwd())

#     if process:
#         state = process.GetState ()
#         print process
#         if state == lldb.eStateStopped:
#             thread = process.GetThreadAtIndex (0)
#             if thread:
#                 print thread
#                 frame = thread.GetFrameAtIndex (0)
#                 if frame:
#                     print frame
#                     function = frame.GetFunction()
#                     if function:
#                         print function
#                         inst = function.GetInstructions(target)
#                         for i in inst:
#                             print(i)
#                     else:
#                         symbol = frame.GetSymbol();
#                         if symbol:
#                             print symbol