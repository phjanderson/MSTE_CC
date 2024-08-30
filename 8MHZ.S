* Set Mega STE CPU to 8mhz with cache disabled

c_conws	equ	$09
c_super equ	$20

	opt	xdebug			long labels for debugging
	opt	hcln			and compressed line info
*	opt	noeven			disable odd address checking
	
* firstly print the string

	move.l	#string,-(sp)
	move.w	#c_conws,-(sp)
	trap	#1
	addq.l	#6,sp

* enter supervisor mode
	clr.l	-(sp)
	move.w	#c_super,-(sp)
	trap	#1
	addq.l	#6,sp

* 8mhz with cache disabled
	move.b	#$f4,$ffff8e21

* restore previous supervisor mode
	move.l	d0,-(sp)
	move.w	#c_super,-(sp)
	trap	#1
	addq.l	#6,sp
	
* and quit
	clr.w	-(sp)
	trap	#1			quick exit

string	dc.b	"Setting the Mega STE CPU to 8mhz with cache disabled",13,10,0
