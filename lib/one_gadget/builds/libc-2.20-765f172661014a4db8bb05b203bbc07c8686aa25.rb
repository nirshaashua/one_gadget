require 'one_gadget/gadget'
# Advanced Micro Devices X86-64
# 
# GNU C Library (GNU libc) stable release version 2.20, by Roland McGrath et al.
# Copyright (C) 2014 Free Software Foundation, Inc.
# This is free software; see the source for copying conditions.
# There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.
# Compiled by GNU CC version 4.9.1 20140903 (prerelease).
# Available extensions:
# 	crypt add-on version 2.1 by Michael Glad and others
# 	GNU Libidn by Simon Josefsson
# 	Native POSIX Threads Library by Ulrich Drepper et al
# 	BIND-8.2.3-T5B
# libc ABIs: UNIQUE IFUNC
# For bug reporting instructions, please see:
# <https://bugs.archlinux.org/>.

build_id = File.basename(__FILE__, '.rb').split('-').last
OneGadget::Gadget.add(build_id, 261537,
                      constraints: ["[rsp+0x30] == NULL"],
                      effect: "execve(\"/bin/sh\", rsp+0x30, environ)")
OneGadget::Gadget.add(build_id, 754928,
                      constraints: ["[rsi] == NULL || rsi == NULL", "[r12] == NULL || r12 == NULL"],
                      effect: "execve(\"/bin/sh\", rsi, r12)")
OneGadget::Gadget.add(build_id, 755148,
                      constraints: ["[[rbp-0x40]] == NULL || [rbp-0x40] == NULL", "[r12] == NULL || r12 == NULL"],
                      effect: "execve(\"/bin/sh\", [rbp-0x40], r12)")
OneGadget::Gadget.add(build_id, 878860,
                      constraints: ["[rsp+0x70] == NULL"],
                      effect: "execve(\"/bin/sh\", rsp+0x70, environ)")
OneGadget::Gadget.add(build_id, 894049,
                      constraints: ["[r9] == NULL || r9 == NULL", "[rdx] == NULL || rdx == NULL"],
                      effect: "execve(\"/bin/sh\", r9, rdx)")
