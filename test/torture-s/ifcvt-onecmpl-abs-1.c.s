	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/ifcvt-onecmpl-abs-1.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 31
	i32.shr_s	$push1=, $0, $pop0
	i32.xor 	$push2=, $pop1, $0
	return  	$pop2
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block   	.LBB1_2
	i32.const	$push0=, -1
	i32.call	$push1=, foo, $pop0
	br_if   	$pop1, .LBB1_2
# BB#1:                                 # %if.end
	i32.const	$push2=, 0
	return  	$pop2
.LBB1_2:                                  # %if.then
	call    	abort
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits