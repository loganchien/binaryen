	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20070424-1.c"
	.globl	do_exit
	.type	do_exit,@function
do_exit:                                # @do_exit
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit, $pop0
	unreachable
.Lfunc_end0:
	.size	do_exit, .Lfunc_end0-do_exit

	.globl	do_abort
	.type	do_abort,@function
do_abort:                               # @do_abort
# BB#0:                                 # %entry
	call    	abort
	unreachable
.Lfunc_end1:
	.size	do_abort, .Lfunc_end1-do_abort

	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
# BB#0:                                 # %entry
	block   	.LBB2_2
	i32.ge_s	$push0=, $0, $1
	br_if   	$pop0, .LBB2_2
# BB#1:                                 # %doit
	call    	do_abort
	unreachable
.LBB2_2:                                  # %if.end
	call    	do_exit
	unreachable
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	call    	do_exit
	unreachable
.Lfunc_end3:
	.size	main, .Lfunc_end3-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits