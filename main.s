	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #67108864
	mov	r4, #0
	ldr	r0, .L4
	ldr	r1, .L4+4
	strh	r0, [r2]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r2, r2, #256
	ldrh	lr, [r2, #48]
	ldr	ip, .L4+8
	sub	sp, sp, #20
	ldr	r6, .L4+12
	mov	r2, #31
	mov	r1, #2
	mov	r0, #6
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r2, #31
	mov	r1, #2
	mov	r0, #17
	mov	lr, pc
	bx	r6
	mov	r2, #31
	mov	r1, #2
	mov	r0, #28
	mov	lr, pc
	bx	r6
	mov	r7, #50
	mov	r5, #140
	mov	r3, #159
	ldr	r6, .L4+16
	mov	r10, #1
	str	r6, [sp]
	mov	r6, #31
	ldr	lr, .L4+20
	ldr	ip, .L4+24
	ldr	r9, .L4+28
	ldr	r8, .L4+32
	ldr	fp, .L4+36
	mov	r1, r4
	mov	r0, r7
	mov	r2, r5
	str	r4, [r9]
	str	r7, [r8]
	str	r5, [lr]
	str	r3, [ip]
	mov	lr, pc
	bx	fp
	mov	ip, #160
	ldr	lr, .L4+40
	str	r6, [sp]
	mov	r3, #159
	str	r10, [lr]
	ldr	lr, .L4+44
	str	r10, [lr]
	ldr	lr, .L4+48
	str	r10, [lr]
	ldr	lr, .L4+52
	ldr	r9, .L4+56
	str	r10, [lr]
	ldr	lr, .L4+60
	str	ip, [r9]
	str	ip, [lr]
	mov	ip, #190
	ldr	r1, .L4+64
	str	r7, [r1]
	ldr	r1, .L4+68
	str	r3, [r1]
	ldr	r3, .L4+72
	str	r5, [r3]
	ldr	r3, .L4+76
	ldr	r2, .L4+80
	str	r7, [r3]
	ldr	r3, .L4+84
	ldr	r8, .L4+88
	str	r4, [r3]
	str	r5, [r2]
	ldr	r0, .L4+92
	mov	r2, r5
	ldr	r3, .L4+96
	ldr	r5, .L4+100
	str	ip, [r8]
	mov	r1, r4
	str	r4, [r0]
	str	r7, [r5]
	mov	r0, r7
	str	r4, [r3]
	mov	r3, r10
	mov	lr, pc
	bx	fp
	str	r6, [sp]
	ldr	lr, .L4+44
	ldr	r2, .L4+72
	ldr	r1, .L4+68
	ldr	r3, [lr]
	ldr	r0, [r5]
	ldr	r2, [r2]
	ldr	r1, [r1]
	mov	lr, pc
	bx	fp
	str	r6, [sp]
	ldr	lr, .L4+48
	ldr	r2, .L4+60
	ldr	r1, .L4+84
	ldr	r0, .L4+76
	ldr	r3, [r2]
	ldr	r1, [r1]
	ldr	r2, [lr]
	ldr	r0, [r0]
	mov	lr, pc
	bx	fp
	str	r6, [sp]
	ldr	lr, .L4+52
	ldr	r1, .L4+96
	ldr	r3, [r9]
	ldr	r2, [lr]
	ldr	r0, [r8]
	ldr	r1, [r1]
	mov	lr, pc
	bx	fp
	mov	ip, #992
	mov	r1, #30
	ldr	lr, .L4+104
	ldr	r5, .L4+108
	ldr	r6, .L4+112
	ldr	r8, .L4+116
	str	ip, [sp]
	mov	r3, r10
	mov	r2, r10
	mov	r0, r7
	str	r10, [lr]
	str	r7, [r5]
	str	r1, [r6]
	strh	ip, [r8]	@ movhi
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	mov	lr, r3
	mov	r0, #120
	mov	r1, #100
	mov	r7, #2
	ldr	r2, [r5]
	ldr	ip, .L4+120
	ldr	r5, .L4+124
	str	r2, [sp, #12]
	str	ip, [sp]
	str	lr, [r5]
	ldr	lr, [sp, #12]
	ldr	r5, .L4+128
	str	lr, [r5]
	ldr	lr, .L4+132
	str	r0, [lr]
	ldr	lr, .L4+136
	str	r1, [lr]
	ldr	lr, .L4+140
	ldr	r9, .L4+144
	str	r7, [lr]
	ldr	r6, .L4+148
	ldr	lr, .L4+152
	mov	r3, r7
	mov	r2, r7
	str	r0, [r9]
	str	r1, [r6]
	strh	ip, [lr]	@ movhi
	mov	lr, pc
	bx	fp
	ldr	r6, .L4+156
	strb	r4, [r6]
	ldr	r6, .L4+160
	str	r4, [r6]
	ldr	r6, .L4+164
	str	r4, [r6]
	ldr	r6, .L4+168
	str	r10, [r6]
	ldr	r6, .L4+172
	str	r10, [r6]
	ldr	r6, .L4+176
	str	r4, [r6]
	ldr	r6, .L4+180
	ldrh	r0, [r8]
	str	r4, [r6]
	ldr	r1, .L4+184
	ldr	r2, .L4+188
	ldr	r3, .L4+192
	ldr	r8, .L4+196
	ldr	r6, .L4+200
	strh	r0, [r1]	@ movhi
	strb	r4, [r2]
	strb	r4, [r3]
	strb	r4, [r8]
	strb	r4, [r6]
	ldr	r9, .L4+204
	ldr	fp, .L4+208
	ldr	r5, .L4+212
	ldr	lr, .L4+216
	ldr	ip, .L4+220
	ldr	r0, .L4+224
	ldr	r1, .L4+228
	ldr	r2, .L4+232
	ldr	r3, .L4+236
	ldr	r8, .L4+240
	ldr	r6, .L4+244
	strb	r4, [r9]
	strb	r4, [r8]
	str	r4, [fp]
	strb	r4, [r6]
	strb	r4, [r5]
	strb	r4, [lr]
	strb	r4, [ip]
	str	r4, [r0]
	str	r7, [r1]
	strb	r4, [r2]
	strb	r4, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	oldButtons
	.word	buttons
	.word	drawHeart
	.word	31710
	.word	boxWidth
	.word	boxHeight
	.word	boxY
	.word	boxX
	.word	drawRect
	.word	topHeight
	.word	boHeight
	.word	leftWidth
	.word	rightWidth
	.word	rightHeight
	.word	leftHeight
	.word	topX
	.word	boY
	.word	boWidth
	.word	leftX
	.word	topWidth
	.word	leftY
	.word	rightX
	.word	topY
	.word	rightY
	.word	boX
	.word	pWidth
	.word	pX
	.word	pY
	.word	pColor
	.word	31775
	.word	pOldY
	.word	pOldX
	.word	aOldX
	.word	aY
	.word	aWidth
	.word	aX
	.word	aOldY
	.word	aColor
	.word	drawing
	.word	bX
	.word	bY
	.word	bWidth
	.word	bHeight
	.word	bOldX
	.word	bOldY
	.word	bColor
	.word	playing
	.word	left
	.word	up
	.word	leftSide
	.word	right
	.word	time
	.word	topSide
	.word	bottomSide
	.word	resize
	.word	collisions
	.word	timestep
	.word	winner
	.word	loser
	.word	down
	.word	rightSide
	.size	initialize, .-initialize
	.align	2
	.global	reset
	.syntax unified
	.arm
	.fpu softvfp
	.type	reset, %function
reset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #992
	mov	r4, #1
	ldr	r2, .L8
	ldr	r3, .L8+4
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r8, .L8+8
	ldr	lr, .L8+12
	ldr	r5, .L8+16
	ldr	r7, .L8+20
	sub	sp, sp, #8
	str	ip, [sp]
	mov	r3, r4
	mov	r2, r4
	str	r0, [r7]
	str	r1, [r8]
	str	r4, [lr]
	ldr	r6, .L8+24
	strh	ip, [r5]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r3, #2
	ldr	r1, .L8+28
	ldr	r2, .L8+32
	ldr	r0, [r1]
	ldr	lr, [r8]
	ldr	r1, [r2]
	ldr	ip, .L8+36
	ldr	r2, .L8+40
	ldr	r7, [r7]
	str	ip, [sp]
	str	lr, [r2]
	ldr	r2, .L8+44
	ldr	lr, .L8+48
	str	r7, [r2]
	str	r0, [lr]
	ldr	r7, .L8+52
	ldr	lr, .L8+56
	ldr	r2, .L8+60
	str	r1, [r7]
	str	r3, [r2]
	strh	ip, [lr]	@ movhi
	mov	r2, r3
	mov	lr, pc
	bx	r6
	mov	r3, #0
	ldrh	ip, [r5]
	ldr	r0, .L8+64
	ldr	r1, .L8+68
	ldr	r2, .L8+72
	strh	ip, [r0]	@ movhi
	str	r4, [r1]
	str	r4, [r2]
	ldr	r7, .L8+76
	ldr	r6, .L8+80
	ldr	r5, .L8+84
	ldr	lr, .L8+88
	ldr	ip, .L8+92
	ldr	r0, .L8+96
	ldr	r1, .L8+100
	ldr	r2, .L8+104
	strb	r3, [r7]
	strb	r3, [r6]
	strb	r3, [r5]
	strb	r3, [lr]
	strb	r3, [ip]
	strb	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	ldr	r8, .L8+108
	ldr	r7, .L8+112
	ldr	r6, .L8+116
	ldr	r5, .L8+120
	ldr	r4, .L8+124
	ldr	lr, .L8+128
	ldr	ip, .L8+132
	ldr	r0, .L8+136
	ldr	r1, .L8+140
	ldr	r2, .L8+144
	strb	r3, [r8]
	str	r3, [r7]
	str	r3, [r6]
	str	r3, [r5]
	strb	r3, [r4]
	strb	r3, [lr]
	strb	r3, [ip]
	strb	r3, [r0]
	strb	r3, [r1]
	strb	r3, [r2]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	boxX
	.word	boxY
	.word	pY
	.word	pWidth
	.word	pColor
	.word	pX
	.word	drawRect
	.word	aX
	.word	aY
	.word	31775
	.word	pOldY
	.word	pOldX
	.word	aOldX
	.word	aOldY
	.word	aColor
	.word	aWidth
	.word	bColor
	.word	bWidth
	.word	bHeight
	.word	playing
	.word	left
	.word	right
	.word	down
	.word	drawing
	.word	winner
	.word	time
	.word	bX
	.word	up
	.word	bY
	.word	bOldX
	.word	bOldY
	.word	leftSide
	.word	rightSide
	.word	topSide
	.word	bottomSide
	.word	resize
	.word	loser
	.size	reset, .-reset
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"You Win!!!\000"
	.global	__aeabi_idivmod
	.align	2
.LC1:
	.ascii	"%d,%d, pY == (boxHeight + boxY), %d\000"
	.align	2
.LC2:
	.ascii	"bottom right\000"
	.align	2
.LC3:
	.ascii	"%d, bX\000"
	.align	2
.LC4:
	.ascii	"%d\000"
	.align	2
.LC5:
	.ascii	"%d, bHeight\000"
	.align	2
.LC6:
	.ascii	"%d, boxX\000"
	.align	2
.LC7:
	.ascii	"%d, boxWidth\000"
	.align	2
.LC8:
	.ascii	"%d, %d\000"
	.align	2
.LC9:
	.ascii	"top right\000"
	.align	2
.LC10:
	.ascii	"left top\000"
	.align	2
.LC11:
	.ascii	"right top\000"
	.align	2
.LC12:
	.ascii	"left bottom\000"
	.align	2
.LC13:
	.ascii	"right bottom\000"
	.align	2
.LC14:
	.ascii	"bottom left\000"
	.align	2
.LC15:
	.ascii	"top left\000"
	.align	2
.LC16:
	.ascii	"You Lost.\000"
	.align	2
.LC17:
	.ascii	"%d,collisions\000"
	.align	2
.LC18:
	.ascii	"%d,collisions - not top\000"
	.text
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L203
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r7, .L203+4
	sub	sp, sp, #132
	beq	.L11
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L12
	ldr	r3, .L203+8
	ldrh	r3, [r3, #48]
	tst	r3, #8
	beq	.L185
	ldr	r5, .L203+12
	ldr	r6, .L203+16
	ldr	r3, [r5]
	ldr	r2, [r6]
	mul	r3, r2, r3
	cmp	r3, #624
	ble	.L93
.L172:
	ldr	r2, .L203+20
	ldrb	r3, [r2]	@ zero_extendqisi2
	b	.L18
.L185:
	bl	initialize
.L11:
	ldr	r5, .L203+12
	ldr	r6, .L203+16
	ldr	r3, [r5]
	ldr	r2, [r6]
	mul	r3, r2, r3
	cmp	r3, #624
	ble	.L93
.L14:
	ldrh	r3, [r7]
	ldr	r2, .L203+20
	tst	r3, #8
	ldrb	r3, [r2]	@ zero_extendqisi2
	beq	.L16
.L18:
	ldr	r1, .L203+8
	ldrh	r1, [r1, #48]
	tst	r1, #8
	bne	.L16
	cmp	r3, #0
	moveq	r3, #1
	ldr	r7, .L203+24
	strbeq	r3, [r2]
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	ldr	r8, .L203+28
	strbeq	r3, [r7]
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	strbeq	r3, [r8]
.L22:
	ldr	r2, .L203+32
	ldr	r3, .L203+36
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r3, .L203+40
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	bne	.L10
	ldr	r3, .L203+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	str	r3, [sp, #20]
	bne	.L10
	ldr	r3, .L203+8
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L175
	ldr	r3, .L203+236
	ldr	r2, .L203+248
	ldr	r1, [r3]
	ldr	r3, [r5]
	ldr	r2, [r2]
	add	r3, r1, r3
	cmp	r3, r2
	bne	.L175
	ldr	r8, .L203+244
	ldr	r1, .L203+252
	ldr	r0, [r8]
	ldr	r2, [r6]
	ldr	r1, [r1]
	add	r2, r0, r2
	cmp	r2, r1
	movle	r2, #0
	movgt	r2, #1
	cmp	r0, r1
	movge	r2, #0
	cmp	r2, #0
	beq	.L175
	mov	r2, #1
	ldr	r0, .L203+48
	ldr	ip, .L203+52
	strb	r2, [r0]
	ldr	lr, .L203+56
	ldr	r0, .L203+60
	str	r2, [ip]
	str	r2, [lr]
	ldr	ip, .L203+64
	strb	r2, [r0]
	ldr	r2, .L203+68
	str	r0, [sp, #36]
	str	r3, [ip]
	str	r1, [r2]
	b	.L25
.L12:
	ldr	r6, .L203+16
	ldr	r5, .L203+12
	ldr	r3, [r6]
	ldr	r2, [r5]
	mul	r3, r2, r3
	cmp	r3, #624
	ble	.L93
.L173:
	ldr	r3, .L203+20
	ldrb	r3, [r3]	@ zero_extendqisi2
.L16:
	cmp	r3, #0
	bne	.L22
.L10:
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L93:
	mov	ip, #1
	ldr	r8, .L203+44
	mov	r3, #992
	mov	r1, #70
	mov	r0, #100
	ldr	r2, .L203+72
	ldr	r9, .L203+196
	strb	ip, [r8]
	mov	lr, pc
	bx	r9
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L173
	ldr	r3, .L203+8
	ldrh	r3, [r3, #48]
	ands	r3, r3, #8
	bne	.L172
	strb	r3, [r8]
	bl	initialize
	b	.L14
.L175:
	ldr	r3, .L203+60
	str	r3, [sp, #36]
.L25:
	ldr	r3, .L203+8
	ldrh	r2, [r3, #48]
	tst	r2, #16
	bne	.L26
	ldr	r1, .L203+248
	ldr	r2, .L203+236
	ldr	r1, [r1]
	ldr	r2, [r2]
	cmp	r1, r2
	bne	.L26
	ldr	r8, .L203+244
	ldr	r0, .L203+252
	ldr	ip, [r8]
	ldr	r2, [r6]
	ldr	r0, [r0]
	add	r2, ip, r2
	cmp	r2, r0
	movle	r2, #0
	movgt	r2, #1
	cmp	ip, r0
	movge	r2, #0
	cmp	r2, #0
	beq	.L26
	mov	r2, #1
	ldr	ip, .L203+76
	strb	r2, [ip]
	ldr	ip, [sp, #36]
	ldr	lr, .L203+52
	strb	r2, [ip]
	ldr	r7, .L203+56
	ldrh	ip, [r3, #48]
	ldrh	r3, [r3, #48]
	ldr	ip, .L203+64
	ldr	r3, .L203+68
	str	r2, [lr]
	str	r2, [r7]
	str	r1, [ip]
	str	r0, [r3]
.L27:
	ldr	r3, [sp, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L186
	ldr	r3, .L203+248
	ldr	r2, .L203+236
	ldr	r8, .L203+244
	ldr	r0, [r3]
	ldr	ip, [r2]
	str	r3, [sp, #116]
	str	r2, [sp, #124]
	ldr	r3, .L203+252
	ldr	r2, [r8]
	ldr	r1, [r6]
	cmp	r0, ip
	str	r3, [sp, #28]
	add	lr, r1, r2
	ldr	r3, [r3]
	beq	.L187
	cmp	r2, r3
	beq	.L34
.L35:
	ldr	r9, [r5]
	add	ip, ip, r9
	cmp	r0, ip
	beq	.L37
.L38:
	cmp	lr, r3
	beq	.L170
.L184:
	ldr	r3, .L203+80
	str	r3, [sp, #104]
	ldr	r3, .L203+84
	str	r3, [sp, #96]
	ldr	r3, .L203+88
	str	r3, [sp, #108]
	ldr	r3, .L203+92
	str	r3, [sp, #100]
	ldr	r3, .L203+204
	str	r3, [sp, #80]
	ldr	r3, .L203+208
	str	r3, [sp, #84]
	ldr	r3, .L203+216
	str	r3, [sp, #60]
	ldr	r3, .L203+212
	str	r3, [sp, #68]
	ldr	r3, .L203+220
	str	r3, [sp, #72]
	ldr	r3, .L203+96
	str	r3, [sp, #76]
	ldr	r3, .L203+100
	str	r3, [sp, #56]
	ldr	r3, .L203+104
	str	r3, [sp, #64]
	ldr	r3, .L203+176
	str	r3, [sp, #52]
	ldr	r3, .L203+180
	str	r3, [sp, #48]
	ldr	r3, .L203+164
	str	r3, [sp, #88]
	ldr	r3, .L203+168
	ldr	fp, .L203+108
	ldr	r10, .L203+112
	ldr	r9, .L203+152
	str	r3, [sp, #92]
	ldr	r5, .L203+116
.L44:
	ldr	r3, [sp, #52]
	ldr	ip, [r5]
	ldr	r0, [r3]
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #92]
	ldr	r1, [sp, #88]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	lr, [r10]
	ldr	r1, [r1]
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r9]
	add	r0, r0, #1
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r3, #1
	movne	r2, #0
	ldrne	r4, .L203+120
	ldrne	r7, .L203+24
	strbne	r3, [r4]
	ldr	r3, [sp, #76]
	strbne	r2, [r7]
	ldr	r1, [r3]
	ldr	ip, [r5]
	ldr	r3, [sp, #64]
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #72]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	lr, [r10]
	ldr	r0, [r0]
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r9]
	add	r1, r1, #1
	stm	sp, {ip, lr}
	ldreq	r7, .L203+24
	ldreq	r4, .L203+120
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r3, #1
	movne	r2, #0
	ldrne	r6, .L203+124
	ldrne	r8, .L203+28
	strbne	r3, [r6]
	ldr	r3, [sp, #100]
	strbne	r2, [r8]
	ldr	r0, [r3]
	ldr	ip, [r5]
	ldr	r3, [sp, #104]
	ldr	r2, [sp, #96]
	ldr	r1, [sp, #108]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	lr, [r10]
	ldr	r1, [r1]
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r9]
	sub	r0, r0, #1
	stm	sp, {ip, lr}
	ldreq	r8, .L203+28
	ldreq	r6, .L203+124
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r2, #1
	movne	r3, #0
	strbne	r2, [r7]
	strbne	r3, [r4]
	ldr	r2, [sp, #84]
	ldr	r3, [r5]
	ldr	r1, [r2]
	ldr	ip, [r10]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, [sp, #60]
	ldr	lr, [r9]
	ldr	r3, [sp, #68]
	ldr	r0, [sp, #80]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r0, [r0]
	sub	r1, r1, #1
	str	ip, [sp, #4]
	str	lr, [sp]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	movne	r2, #1
	movne	r1, #0
	movne	r3, r2
	ldrbeq	r2, [r6]	@ zero_extendqisi2
	strbne	r2, [r8]
	streq	r2, [sp, #20]
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldrbeq	r3, [r8]	@ zero_extendqisi2
	strbne	r1, [r6]
	cmp	r2, #0
	ldrne	r2, [r9]
	subne	r2, r2, #1
	strne	r2, [r9]
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	ldrne	r2, [r9]
	addne	r2, r2, #1
	strne	r2, [r9]
	cmp	r3, #0
	ldrne	r3, [r10]
	subne	r3, r3, #1
	strne	r3, [r10]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r3, [r10]
	addne	r3, r3, #1
	strne	r3, [r10]
	b	.L10
.L26:
	ldr	r2, .L203+8
	ldrh	r3, [r2, #48]
	tst	r3, #64
	beq	.L188
.L28:
	ldr	r3, .L203+8
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L27
	ldr	r3, .L203+252
	ldr	r8, .L203+244
	str	r3, [sp, #28]
	b	.L29
.L188:
	ldr	r8, .L203+244
	ldr	r1, .L203+252
	ldr	r3, [r8]
	ldr	r0, [r6]
	str	r1, [sp, #28]
	ldr	r1, [r1]
	add	r3, r0, r3
	cmp	r3, r1
	bne	.L28
	ldr	r1, .L203+236
	ldr	r0, .L203+248
	ldr	ip, [r1]
	ldr	r1, [r5]
	ldr	r0, [r0]
	add	r1, ip, r1
	cmp	r1, r0
	movle	r1, #0
	movgt	r1, #1
	cmp	ip, r0
	movge	r1, #0
	cmp	r1, #0
	beq	.L28
	mov	r1, #1
	ldrh	r2, [r2, #48]
	ldr	ip, .L203+128
	ldr	lr, .L203+52
	ldr	r9, .L203+56
	ldr	r7, [sp, #36]
	strb	r1, [ip]
	strb	r1, [r7]
	str	r1, [lr]
	str	r1, [r9]
	tst	r2, #128
	ldr	r1, .L203+68
	ldr	r2, .L203+64
	str	ip, [sp, #88]
	str	lr, [sp, #32]
	str	r9, [sp, #40]
	str	r2, [sp, #24]
	str	r1, [sp, #44]
	str	r0, [r2]
	str	r3, [r1]
	bne	.L30
.L29:
	ldr	r3, [sp, #28]
	ldr	r2, [r8]
	ldr	r3, [r3]
	cmp	r3, r2
	bne	.L27
	ldr	r2, .L203+236
	ldr	r0, .L203+248
	ldr	r1, [r2]
	ldr	r2, [r5]
	ldr	ip, [r0]
	add	r2, r1, r2
	cmp	r2, ip
	movle	r2, #0
	movgt	r2, #1
	cmp	r1, ip
	movge	r2, #0
	cmp	r2, #0
	beq	.L27
	mov	r1, #1
	ldr	r2, [sp, #36]
	mov	lr, r1
	strb	r1, [r2]
	mov	r2, r1
	ldr	r10, .L203+68
	ldr	r0, .L203+132
	ldr	r7, .L203+52
	ldr	r8, .L203+56
	ldr	r9, .L203+64
	str	r3, [r10]
	ldr	r3, .L203+128
	str	r0, [sp, #112]
	str	r7, [sp, #32]
	str	r8, [sp, #40]
	str	r9, [sp, #24]
	str	r10, [sp, #44]
	strb	r1, [r0]
	str	r1, [r7]
	str	r1, [r8]
	str	ip, [r9]
	str	r3, [sp, #88]
.L92:
	ldr	r7, .L203+76
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L165
	ldr	r3, .L203+80
	str	r3, [sp, #104]
	ldr	r3, .L203+84
	str	r3, [sp, #96]
	ldr	r3, .L203+88
	str	r3, [sp, #108]
	ldr	r3, .L203+92
	ldr	fp, .L203+108
	str	r3, [sp, #100]
	ldr	r10, .L203+112
.L177:
	ldr	r3, .L203+204
	str	r3, [sp, #80]
	ldr	r3, .L203+208
	str	r3, [sp, #84]
	ldr	r3, .L203+216
	str	r3, [sp, #60]
	ldr	r3, .L203+212
	str	r3, [sp, #68]
	ldr	r3, .L203+220
	str	r3, [sp, #72]
.L176:
	ldr	r3, .L203+96
	str	r3, [sp, #76]
	ldr	r3, .L203+100
	str	r3, [sp, #56]
	ldr	r3, .L203+104
	str	r3, [sp, #64]
.L45:
	ldr	r3, [sp, #112]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L166
.L178:
	ldr	r3, .L203+176
	str	r3, [sp, #52]
	ldr	r3, .L203+180
	ldr	r9, .L203+152
	str	r3, [sp, #48]
.L51:
	ldr	r3, [sp, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L167
.L179:
	ldr	r3, .L203+164
	str	r3, [sp, #88]
	ldr	r3, .L203+168
	str	r3, [sp, #92]
.L56:
	ldr	r7, .L203+48
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	ldr	r1, [r10]
.L62:
	ldr	r3, [sp, #112]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r5, .L203+116
	cmp	r3, #0
	ldr	r0, [r9]
	ldr	r3, [r5]
	bne	.L189
.L68:
	ldr	r7, [sp, #44]
	ldr	r7, [r7]
	str	r2, [sp, #8]
	str	lr, [sp, #12]
	mov	r2, r3
	str	ip, [sp]
	str	r7, [sp, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L44
	ldr	r7, .L203+136
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L190
	add	r1, r3, #1
	ldr	r0, .L203+140
	ldr	r2, .L203+224
	str	r1, [r7]
	mov	lr, pc
	bx	r2
	ldr	r7, [r7]
	cmp	r7, #1
	beq	.L191
	cmp	r7, #2
	beq	.L192
.L77:
	bl	reset
	b	.L44
.L186:
	ldr	r3, .L203+52
	str	r3, [sp, #32]
	ldr	r3, .L203+56
	str	r3, [sp, #40]
	ldr	r3, .L203+64
	str	r3, [sp, #24]
	ldr	r3, .L203+68
	str	r3, [sp, #44]
	ldr	r3, .L203+128
	str	r3, [sp, #88]
.L30:
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	ldr	r3, .L203+132
	str	r3, [sp, #112]
	b	.L92
.L90:
	ldr	r0, [sp, #28]
	add	r3, r3, #1
	str	r3, [r0]
.L37:
	cmp	lr, r3
	movle	r0, #0
	movgt	r0, #1
	cmp	r2, r3
	movge	r0, #0
	cmp	r0, #0
	bne	.L193
.L39:
	cmp	lr, r3
	beq	.L194
.L41:
	ldr	r3, [sp, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	ldr	r3, .L203+64
	str	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, .L203+68
	str	r3, [sp, #44]
	ldr	r3, .L203+128
	ldr	r2, .L203+52
	ldr	r1, .L203+56
	str	r3, [sp, #88]
	ldr	r3, .L203+132
	str	r2, [sp, #32]
	str	r1, [sp, #40]
	ldr	r2, [r2]
	ldr	lr, [r1]
	str	r3, [sp, #112]
	b	.L92
.L187:
	cmp	lr, r3
	movle	r9, #0
	movgt	r9, #1
	cmp	r2, r3
	movge	r9, #0
	cmp	r9, #0
	bne	.L195
.L33:
	cmp	r2, r3
	bne	.L35
	ldr	r9, [sp, #116]
	add	r0, r0, #1
	str	r0, [r9]
.L34:
	ldr	r9, [r5]
	add	r9, ip, r9
	cmp	r9, r0
	movle	r10, #0
	movgt	r10, #1
	cmp	ip, r0
	movge	r10, #0
	cmp	r10, #0
	bne	.L196
.L36:
	cmp	r9, r0
	beq	.L90
	ldr	r3, [sp, #28]
	ldr	r3, [r3]
	b	.L38
.L189:
	str	lr, [sp, #12]
	ldr	r7, .L203+244
	ldr	lr, [r7]
	str	r2, [sp, #8]
	stm	sp, {ip, lr}
	mov	r2, r3
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L182
	ldr	r8, .L203+136
	ldr	r3, [r8]
	cmp	r3, #2
	beq	.L197
	add	r1, r3, #1
	ldr	r0, .L203+144
	ldr	r2, .L203+224
	str	r1, [r8]
	mov	lr, pc
	bx	r2
	ldr	r8, [r8]
	cmp	r8, #1
	beq	.L198
	cmp	r8, #2
	beq	.L199
.L72:
	bl	reset
.L182:
	ldr	r2, [sp, #24]
	ldr	lr, [sp, #40]
	ldr	ip, [r2]
	ldr	r2, [sp, #32]
	ldr	r0, [r9]
	ldr	r1, [r10]
	ldr	r3, [r5]
	ldr	r2, [r2]
	ldr	lr, [lr]
	b	.L68
.L165:
	mov	r1, #31744
	ldr	r8, [sp, #44]
	str	r1, [sp]
	mov	r3, lr
	mov	r0, ip
	ldr	r1, [r8]
	ldr	r9, .L203+260
	mov	lr, pc
	bx	r9
	ldr	r10, [sp, #32]
	ldr	r0, [sp, #40]
	ldr	ip, [r10]
	ldr	lr, [r0]
	ldr	r0, [r8]
	ldr	r8, [sp, #24]
	add	ip, ip, #1
	ldr	r8, [r8]
	ldr	r3, .L203+80
	str	ip, [sp, #8]
	ldr	r2, .L203+84
	ldr	r1, .L203+88
	ldr	fp, .L203+92
	str	r3, [sp, #104]
	str	r2, [sp, #96]
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r1, [sp, #108]
	ldr	r1, [r1]
	str	lr, [sp, #12]
	str	r0, [sp, #4]
	str	r8, [sp]
	str	fp, [sp, #100]
	ldr	r0, [fp]
	str	ip, [r10]
	ldr	fp, .L203+108
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L46
	ldr	r8, [sp, #24]
	ldr	r0, [sp, #40]
	ldr	r2, [r10]
	ldr	ip, [r8]
	ldr	lr, [r0]
	ldr	r10, .L203+112
	b	.L177
.L167:
	mov	r1, #31744
	ldr	r7, [sp, #44]
	str	r1, [sp]
	mov	r3, lr
	mov	r0, ip
	ldr	r1, [r7]
	ldr	ip, .L203+260
	mov	lr, pc
	bx	ip
	mov	lr, r7
	ldr	r0, [r7]
	ldr	r7, [sp, #40]
	ldr	r8, [sp, #32]
	ldr	ip, [r7]
	ldr	r2, [r8]
	ldr	r3, [sp, #24]
	sub	r0, r0, #1
	add	ip, ip, #1
	ldr	r3, [r3]
	stmib	sp, {r0, r2, ip}
	str	r3, [sp]
	ldr	r2, [sp, #64]
	ldr	r1, [sp, #76]
	ldr	r3, [r2]
	str	r0, [lr]
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #72]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	ip, [r7]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L57
	ldr	r3, [sp, #24]
	ldr	r2, [r8]
	ldr	ip, [r3]
	ldr	lr, [r7]
	b	.L179
.L166:
	mov	r1, #31744
	ldr	r7, [sp, #44]
	str	r1, [sp]
	mov	r3, lr
	mov	r0, ip
	ldr	r1, [r7]
	ldr	ip, .L203+260
	mov	lr, pc
	bx	ip
	mov	lr, r7
	ldr	r0, [r7]
	ldr	r7, [sp, #40]
	ldr	r8, [sp, #32]
	ldr	ip, [r7]
	ldr	r2, [r8]
	ldr	r9, [sp, #24]
	add	r0, r0, #1
	add	ip, ip, #1
	ldr	r3, [r9]
	stmib	sp, {r0, r2, ip}
	str	r3, [sp]
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #68]
	ldr	r1, [sp, #84]
	str	r0, [lr]
	ldr	r0, [sp, #80]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	ip, [r7]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L52
	ldr	ip, [r9]
	ldr	r2, [r8]
	ldr	lr, [r7]
	b	.L178
.L61:
	mov	r1, #31744
	ldr	r8, [sp, #44]
	str	r1, [sp]
	mov	r3, lr
	mov	r0, ip
	ldr	r1, [r8]
	ldr	ip, .L203+260
	mov	lr, pc
	bx	ip
	ldr	lr, [sp, #24]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #40]
	ldr	r0, [lr]
	ldr	ip, [r3]
	ldr	r2, [r2]
	ldr	r3, [r8]
	sub	r0, r0, #1
	add	ip, ip, #1
	str	r0, [sp]
	str	ip, [sp, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #4]
	ldr	r1, [sp, #92]
	ldr	r3, [r1]
	ldr	r1, [sp, #48]
	str	r0, [lr]
	ldr	r2, [r1]
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #88]
	mov	r8, lr
	ldr	lr, [sp, #32]
	ldr	r1, [r1]
	ldr	r0, [r0]
	str	ip, [lr]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L63
	ldr	lr, [sp, #32]
	ldr	r3, [sp, #40]
	ldr	r2, [lr]
	ldr	r1, [r10]
	ldr	ip, [r8]
	ldr	lr, [r3]
	b	.L62
.L170:
	ldr	r2, [sp, #116]
	ldr	r1, [r2]
.L40:
	ldr	r2, [sp, #124]
	ldr	r0, [r2]
	ldr	r2, [r5]
	add	r2, r0, r2
	cmp	r2, r1
	movle	r2, #0
	movgt	r2, #1
	cmp	r0, r1
	movge	r2, #0
	cmp	r2, #0
	bne	.L200
.L42:
	cmp	r0, r1
	ldreq	r2, [sp, #28]
	subeq	r3, r3, #1
	streq	r3, [r2]
	b	.L41
.L190:
	mov	ip, #1
	mov	r3, #31
	strb	ip, [r4]
	mov	r1, #70
	ldr	r2, .L203+192
	ldr	r4, .L203+196
	mov	r0, #100
	mov	lr, pc
	bx	r4
	b	.L44
.L46:
	mov	r3, #0
	ldr	r10, .L203+112
	ldr	r2, [sp, #44]
	ldr	r1, [r10]
	ldr	r2, [r2]
	cmp	r1, r2
	ldr	r2, [sp, #36]
	strb	r3, [r7]
	strb	r3, [r2]
	blt	.L201
	bgt	.L49
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	b	.L177
.L204:
	.align	2
.L203:
	.word	loser
	.word	oldButtons
	.word	67109120
	.word	boxWidth
	.word	boxHeight
	.word	playing
	.word	left
	.word	up
	.word	time
	.word	timestep
	.word	__aeabi_idivmod
	.word	winner
	.word	leftSide
	.word	bWidth
	.word	bHeight
	.word	drawing
	.word	bX
	.word	bY
	.word	.LC0
	.word	rightSide
	.word	rightHeight
	.word	rightWidth
	.word	rightY
	.word	rightX
	.word	topY
	.word	topWidth
	.word	topHeight
	.word	collision
	.word	aY
	.word	aWidth
	.word	right
	.word	down
	.word	bottomSide
	.word	topSide
	.word	collisions
	.word	.LC18
	.word	.LC17
	.word	.LC12
	.word	aX
	.word	.LC10
	.word	.LC13
	.word	leftY
	.word	leftHeight
	.word	.LC11
	.word	leftX
	.word	leftWidth
	.word	drawHeart
	.word	.LC1
	.word	.LC16
	.word	drawString
	.word	.LC2
	.word	boX
	.word	boY
	.word	boHeight
	.word	boWidth
	.word	topX
	.word	mgba_printf
	.word	.LC14
	.word	.LC3
	.word	boxX
	.word	.LC5
	.word	boxY
	.word	pX
	.word	pY
	.word	.LC7
	.word	drawRect
	.word	resize
	.word	.LC6
	.word	.LC4
	.word	.LC8
	.word	31710
.L57:
	mov	r3, #0
	ldr	r8, [sp, #24]
	ldr	r1, [r9]
	ldr	r2, [r8]
	cmp	r1, r2
	ldr	r2, [sp, #36]
	strb	r3, [r2]
	ldr	r2, [sp, #88]
	strb	r3, [r2]
	ble	.L58
	ldr	r7, .L203+224
	ldr	r0, .L203+148
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+232
	str	r8, [sp, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #32]
	ldr	r0, .L203+272
	ldr	r1, [r1]
	mov	lr, pc
	bx	r7
	ldr	r0, [sp, #40]
	ldr	r1, [r0]
	ldr	r0, .L203+240
	mov	lr, pc
	bx	r7
	ldr	lr, .L203+236
	ldr	r8, .L203+244
	ldr	r1, [lr]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	ip, .L203+248
	mov	r7, ip
	ldr	r3, .L203+252
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L203+256
	ldr	r3, [sp, #120]
	str	ip, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L203+272
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L203+276
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #24]
	ldr	r2, [r3]
	mov	r3, #0
	ldr	lr, .L203+236
	ldr	r0, [lr]
	str	r3, [sp]
	sub	r2, r2, r0
	ldr	r1, [r8]
	mov	r3, #160
	ldr	r7, .L203+260
	mov	lr, pc
	bx	r7
	ldr	lr, .L203+236
	ldr	r3, [sp, #24]
	ldr	r2, [lr]
	ldr	r1, [r3]
	ldr	r3, [r5]
	sub	r2, r1, r2
	ldr	r0, .L203+264
	sub	r3, r3, r2
	str	r3, [r5]
	ldr	r3, [sp, #40]
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldr	r3, [r3]
	str	r1, [lr]
	ldr	lr, .L203+168
	cmp	ip, #0
	str	r3, [lr]
	moveq	r3, #1
	ldr	r2, [sp, #44]
	ldr	r2, [r2]
	str	r2, [sp, #124]
	ldr	r2, [sp, #52]
	ldr	r7, .L203+164
	str	r1, [r2]
	ldr	ip, [sp, #32]
	ldr	r2, [sp, #124]
	ldr	ip, [ip]
	str	r2, [r7]
	ldr	r2, [sp, #48]
	strbeq	r3, [r0]
	str	r7, [sp, #88]
	ldr	r0, .L203+268
	ldr	r7, [sp, #120]
	str	ip, [r2]
	str	lr, [sp, #92]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	mov	r8, r7
	ldr	lr, [r3]
	b	.L56
.L52:
	mov	r3, #0
	ldr	r9, .L203+152
	ldr	r8, [sp, #24]
	ldr	r1, [r9]
	ldr	r2, [r8]
	cmp	r1, r2
	ldr	r2, [sp, #36]
	strb	r3, [r2]
	ldr	r2, [sp, #112]
	strb	r3, [r2]
	ble	.L53
	ldr	r7, .L203+224
	ldr	r0, .L203+156
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+232
	str	r8, [sp, #24]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #32]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #40]
	ldr	r0, .L203+240
	ldr	r1, [r1]
	mov	lr, pc
	bx	r7
	ldr	lr, .L203+236
	ldr	r8, .L203+244
	ldr	r1, [lr]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, .L203+252
	ldr	ip, .L203+248
	ldr	r1, [r5]
	ldr	r0, .L203+256
	str	r3, [sp, #28]
	str	ip, [sp, #116]
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	ip, .L203+248
	ldr	r2, [r3]
	ldr	r1, [ip]
	ldr	r0, .L203+276
	mov	lr, pc
	bx	r7
	mov	r3, #0
	ldr	r7, [sp, #24]
	ldr	lr, .L203+236
	ldr	r2, [r7]
	ldr	r0, [lr]
	ldr	ip, [r6]
	str	r3, [sp]
	sub	r2, r2, r0
	ldr	r1, [r8]
	add	r3, ip, #1
	ldr	ip, .L203+260
	mov	lr, pc
	bx	ip
	ldr	lr, .L203+236
	ldr	r1, [r7]
	ldr	r2, [lr]
	ldr	r3, [r5]
	sub	r2, r1, r2
	sub	r3, r3, r2
	ldr	r2, .L203+180
	ldr	r0, .L203+264
	str	r2, [sp, #48]
	ldr	r2, [sp, #32]
	ldrb	ip, [r0]	@ zero_extendqisi2
	ldr	r2, [r2]
	str	r3, [r5]
	ldr	r3, [sp, #48]
	cmp	ip, #0
	str	r2, [r3]
	moveq	r3, #1
	ldr	r7, .L203+176
	strbeq	r3, [r0]
	str	r1, [r7]
	str	r7, [sp, #52]
	ldr	r0, .L203+268
	ldr	r7, [sp, #120]
	str	r1, [lr]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, .L203+248
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	mov	r8, r7
	ldr	lr, [r3]
	b	.L51
.L63:
	mov	r3, #0
	ldr	r2, [sp, #44]
	ldr	r1, [r10]
	ldr	r2, [r2]
	cmp	r1, r2
	ldr	r2, [sp, #36]
	strb	r3, [r7]
	strb	r3, [r2]
	blt	.L202
	bgt	.L66
.L181:
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	b	.L62
.L191:
	ldr	r3, [sp, #112]
	ldrb	r8, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldr	r0, [r3]
	ldr	r3, [sp, #32]
	cmp	r8, #0
	ldr	r2, [r3]
	beq	.L76
	ldr	r1, .L203+244
	ldr	ip, .L203+280
	ldr	r3, [r6]
.L183:
	ldr	r1, [r1]
	ldr	r4, .L203+260
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	r1, #31
	ldr	r2, .L203+252
	str	r1, [sp]
	ldr	r3, .L203+248
	ldr	r1, [r2]
	ldr	r0, [r3]
	mov	r2, r7
	mov	r3, r7
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r1, #2
	mov	r0, #28
	ldr	r3, .L203+184
	mov	lr, pc
	bx	r3
	b	.L77
.L200:
	ldr	r2, [sp, #116]
	sub	r1, r1, #1
	str	r1, [r2]
	b	.L42
.L195:
	ldr	r7, [sp, #28]
	sub	r3, r3, #1
	str	r3, [r7]
	b	.L33
.L196:
	ldr	ip, [sp, #116]
	add	r0, r0, #1
	str	r0, [ip]
	b	.L36
.L193:
	ldr	r0, [sp, #28]
	add	r3, r3, #1
	str	r3, [r0]
	b	.L39
.L58:
	ldr	r7, .L203+224
	ldr	r0, .L203+160
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L203+232
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #32]
	ldr	r0, .L203+272
	ldr	r1, [r1]
	mov	lr, pc
	bx	r7
	ldr	ip, [sp, #40]
	ldr	r0, .L203+240
	ldr	r1, [ip]
	mov	lr, pc
	bx	r7
	ldr	r2, .L203+236
	ldr	r8, .L203+244
	ldr	r1, [r2]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	lr, .L203+248
	mov	r7, lr
	ldr	r3, .L203+252
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L203+256
	ldr	r3, [sp, #120]
	str	lr, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L203+272
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L203+276
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r7, [sp, #24]
	ldr	r2, .L203+236
	ldr	r0, [r7]
	ldr	r2, [r2]
	ldr	ip, [r5]
	sub	r2, r0, r2
	mov	r1, r3
	sub	r2, ip, r2
	str	r3, [sp]
	ldr	ip, .L203+260
	mov	r3, #160
	add	r0, r0, #1
	mov	lr, pc
	bx	ip
	ldr	r0, [sp, #44]
	ldr	ip, [r0]
	ldr	r0, [sp, #32]
	ldr	r2, .L203+264
	ldr	r0, [r0]
	ldr	r1, .L203+236
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldr	r1, [r1]
	str	r0, [sp, #88]
	ldr	r0, [sp, #100]
	cmp	lr, #0
	str	r3, [r0]
	sub	lr, r3, r1
	ldr	r3, [sp, #108]
	ldr	r0, [sp, #88]
	str	ip, [r3]
	ldr	r7, [sp, #40]
	ldr	r3, [sp, #96]
	ldr	r7, [r7]
	str	r0, [r3]
	ldr	r3, [sp, #104]
	str	r7, [r3]
	moveq	r3, #1
	ldr	r7, [sp, #120]
	ldr	r0, .L203+268
	strbeq	r3, [r2]
	str	lr, [r5]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, .L203+164
	str	r3, [sp, #88]
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	ldr	r3, .L203+168
	mov	r8, r7
	str	r3, [sp, #92]
	b	.L56
.L53:
	ldr	r7, .L203+224
	ldr	r0, .L203+172
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L203+232
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #32]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #40]
	ldr	r0, .L203+240
	ldr	r1, [r1]
	mov	lr, pc
	bx	r7
	ldr	r2, .L203+236
	ldr	r8, .L203+244
	ldr	r1, [r2]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	ip, .L203+248
	mov	r7, ip
	ldr	r3, .L203+252
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L203+256
	ldr	r3, [sp, #120]
	str	ip, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L203+272
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L203+276
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r7, [sp, #24]
	ldr	r2, .L203+236
	ldr	r0, [r7]
	ldr	r2, [r2]
	ldr	ip, [r5]
	sub	r2, r0, r2
	mov	r1, r3
	sub	r2, ip, r2
	str	r3, [sp]
	ldr	ip, .L203+260
	mov	r3, #160
	add	r0, r0, #1
	mov	lr, pc
	bx	ip
	ldr	r2, .L203+264
	ldr	r1, .L203+236
	ldrb	lr, [r2]	@ zero_extendqisi2
	ldr	r3, [r7]
	cmp	lr, #0
	ldr	r1, [r1]
	ldr	lr, [sp, #100]
	ldr	r0, [sp, #32]
	sub	ip, r3, r1
	str	r3, [lr]
	ldr	r0, [r0]
	ldr	r3, [sp, #96]
	str	r0, [r3]
	moveq	r3, #1
	ldr	r7, [sp, #120]
	ldr	r0, .L203+268
	strbeq	r3, [r2]
	str	ip, [r5]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, .L203+176
	str	r3, [sp, #52]
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	ldr	r3, .L203+180
	mov	r8, r7
	str	r3, [sp, #48]
	b	.L51
.L192:
	ldr	r3, [sp, #112]
	ldrb	r8, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #24]
	ldr	r0, [r3]
	ldr	r3, [sp, #32]
	cmp	r8, #0
	ldr	r2, [r3]
	beq	.L78
	ldr	ip, .L203+280
	ldr	r1, .L203+244
	ldr	r3, [r6]
	ldr	r1, [r1]
	ldr	r4, .L203+260
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, .L203+252
	ldr	r0, .L203+248
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r1, r7
	mov	r2, #0
	mov	r0, #28
	ldr	r3, .L203+184
	mov	lr, pc
	bx	r3
	b	.L77
.L194:
	ldr	r0, .L203+188
	ldr	r9, .L203+224
	mov	lr, pc
	bx	r9
	ldr	ip, [sp, #116]
	ldr	r3, [sp, #28]
	ldr	r0, [r8]
	ldr	r2, [r6]
	ldr	r1, [ip]
	ldr	r3, [r3]
	add	r2, r2, r0
	sub	r1, r1, #1
	cmp	r2, r3
	str	r1, [ip]
	bne	.L41
	b	.L40
.L76:
	ldr	r3, [sp, #40]
	ldr	ip, .L203+280
	ldr	r3, [r3]
	ldr	r1, [sp, #44]
	b	.L183
.L197:
	mov	ip, #1
	mov	r3, #31
	mov	r1, #70
	ldr	r2, .L203+192
	ldr	r7, .L203+196
	mov	r0, #100
	strb	ip, [r4]
	mov	lr, pc
	bx	r7
	b	.L182
.L201:
	ldr	r7, .L203+224
	ldr	r0, .L203+200
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L203+232
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	ip, [sp, #32]
	ldr	r0, .L203+236
	ldr	r1, [ip]
	str	r0, [sp, #124]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	lr, [sp, #40]
	ldr	r0, .L203+240
	ldr	r1, [lr]
	mov	lr, pc
	bx	r7
	ldr	r0, .L203+236
	ldr	r8, .L203+244
	ldr	r1, [r0]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	ip, .L203+248
	mov	r7, ip
	ldr	r3, .L203+252
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L203+256
	ldr	r3, [sp, #120]
	str	ip, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L203+272
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L203+276
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [sp, #44]
	ldr	r7, [sp, #24]
	ldr	r1, [r2]
	str	r3, [sp]
	mov	r2, #141
	ldr	r0, [r7]
	rsb	r3, r1, #159
	add	r1, r1, #1
	mov	lr, pc
	bx	r9
	ldr	ip, .L203+204
	mov	lr, ip
	ldr	r1, [sp, #44]
	ldr	r3, [r8]
	ldr	r1, [r1]
	ldr	r2, .L203+264
	str	ip, [sp, #80]
	ldr	ip, [r7]
	sub	r3, r1, r3
	ldrb	r0, [r2]	@ zero_extendqisi2
	str	ip, [lr]
	ldr	r9, .L203+208
	ldr	lr, [sp, #40]
	str	r3, [r6]
	ldr	r3, [sp, #32]
	cmp	r0, #0
	str	r1, [r9]
	ldr	r0, [r3]
	ldr	r1, .L203+212
	ldr	r3, [lr]
	str	r3, [r1]
	moveq	r3, #1
	ldr	r7, .L203+216
	strbeq	r3, [r2]
	ldr	r3, .L203+236
	str	r9, [sp, #84]
	str	r1, [sp, #68]
	ldr	r9, [sp, #120]
	ldr	r1, [r3]
	str	r0, [r7]
	ldr	r0, .L203+268
	str	r7, [sp, #60]
	mov	lr, pc
	bx	r9
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r9
	ldr	r1, [r5]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r9
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r9
	ldr	r3, .L203+220
	str	r3, [sp, #72]
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	mov	r8, r9
	ldr	lr, [r3]
	b	.L176
.L202:
	ldr	r7, .L203+224
	ldr	r0, .L203+228
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L203+232
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #44]
	ldr	r0, .L203+272
	ldr	r1, [r2]
	mov	lr, pc
	bx	r7
	ldr	ip, [sp, #32]
	ldr	r0, .L203+236
	ldr	r1, [ip]
	str	r0, [sp, #124]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	lr, [sp, #40]
	ldr	r0, .L203+240
	ldr	r1, [lr]
	mov	lr, pc
	bx	r7
	ldr	r0, [sp, #124]
	ldr	r8, .L203+244
	ldr	r1, [r0]
	ldr	r0, .L203+268
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	lr, .L203+248
	mov	r7, lr
	ldr	r3, .L203+252
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L203+256
	ldr	r3, [sp, #120]
	str	lr, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L203+272
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L203+276
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [sp, #44]
	ldr	r7, [sp, #24]
	ldr	r1, [r2]
	str	r3, [sp]
	mov	r2, #141
	ldr	r0, [r7]
	rsb	r3, r1, #159
	ldr	ip, .L203+260
	add	r1, r1, #1
	mov	lr, pc
	bx	ip
	ldr	r1, [sp, #44]
	ldr	r3, [r8]
	ldr	r1, [r1]
	sub	r3, r1, r3
	ldr	r2, .L203+264
	str	r3, [r6]
	ldr	r3, [sp, #84]
	ldrb	r0, [r2]	@ zero_extendqisi2
	str	r1, [r3]
	ldr	lr, [r7]
	ldr	r3, [sp, #80]
	ldr	ip, [sp, #32]
	str	lr, [r3]
	cmp	r0, #0
	ldr	ip, [ip]
	ldr	r3, [sp, #60]
	ldr	r0, [sp, #40]
	str	ip, [r3]
	ldr	r0, [r0]
	ldr	r3, [sp, #68]
	str	r0, [r3]
	moveq	r3, #1
	strbeq	r3, [r2]
	ldr	r3, [sp, #124]
	ldr	r0, .L203+268
	ldr	r1, [r3]
	ldr	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L203+272
.L180:
	mov	lr, pc
	bx	r7
	ldr	r1, [r6]
	ldr	r0, .L203+272
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L203+276
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r1, [r10]
	b	.L181
.L78:
	ldr	ip, .L203+280
	ldr	r3, [sp, #40]
	ldr	r1, [sp, #44]
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r4, .L205
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, .L205+4
	ldr	r0, .L205+8
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r4
	mov	r2, r8
	mov	r1, r7
	mov	r0, #17
	ldr	r3, .L205+12
	mov	lr, pc
	bx	r3
	b	.L77
.L66:
	ldr	r7, .L205+16
	ldr	r0, .L205+20
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L205+24
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #44]
	ldr	r0, .L205+28
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #32]
	ldr	r2, .L205+32
	ldr	r1, [r1]
	ldr	r0, .L205+28
	str	r2, [sp, #124]
	mov	lr, pc
	bx	r7
	ldr	ip, [sp, #40]
	ldr	r0, .L205+36
	ldr	r1, [ip]
	mov	lr, pc
	bx	r7
	ldr	r2, [sp, #124]
	ldr	r8, .L205+40
	ldr	r1, [r2]
	ldr	r0, .L205+44
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L205+28
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	r2, .L205+8
	mov	r7, r2
	ldr	r3, .L205+4
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L205+48
	ldr	r3, [sp, #120]
	str	r2, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L205+28
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L205+52
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r7, [sp, #44]
	str	r3, [sp]
	mov	r1, r3
	mov	r2, #141
	ldr	r3, [r7]
	mov	r0, #50
	ldr	ip, .L205
	mov	lr, pc
	bx	ip
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	lr, [r6]
	ldr	r1, .L205+56
	sub	r3, r2, r3
	ldr	r0, [sp, #24]
	sub	r3, lr, r3
	ldrb	ip, [r1]	@ zero_extendqisi2
	ldr	r0, [r0]
	ldr	lr, [sp, #32]
	str	r3, [r6]
	ldr	r3, [sp, #72]
	cmp	ip, #0
	str	r0, [r3]
	ldr	lr, [lr]
	ldr	r3, [sp, #56]
	ldr	ip, [sp, #40]
	str	lr, [r3]
	ldr	ip, [ip]
	ldr	r3, [sp, #64]
	str	ip, [r3]
	moveq	r3, #1
	ldr	r7, [sp, #76]
	strbeq	r3, [r1]
	ldr	r3, [sp, #124]
	str	r2, [r7]
	ldr	r1, [r3]
	ldr	r0, .L205+44
	ldr	r7, [sp, #120]
	str	r2, [r8]
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L205+28
	mov	lr, pc
	bx	r7
	ldr	r1, [r5]
	ldr	r0, .L205+48
	b	.L180
.L49:
	ldr	r7, .L205+16
	ldr	r0, .L205+60
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #24]
	ldr	r0, .L205+24
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, [sp, #44]
	ldr	r0, .L205+28
	ldr	r1, [r3]
	mov	lr, pc
	bx	r7
	ldr	r0, [sp, #32]
	ldr	r1, .L205+32
	str	r1, [sp, #124]
	ldr	r1, [r0]
	ldr	r0, .L205+28
	mov	lr, pc
	bx	r7
	ldr	ip, [sp, #40]
	ldr	r0, .L205+36
	ldr	r1, [ip]
	mov	lr, pc
	bx	r7
	ldr	r1, [sp, #124]
	ldr	r8, .L205+40
	ldr	r1, [r1]
	ldr	r0, .L205+44
	mov	lr, pc
	bx	r7
	ldr	r1, [r8]
	ldr	r0, .L205+28
	str	r7, [sp, #120]
	mov	lr, pc
	bx	r7
	ldr	lr, .L205+8
	mov	r7, lr
	ldr	r3, .L205+4
	ldr	r1, [r5]
	str	r3, [sp, #28]
	ldr	r0, .L205+48
	ldr	r3, [sp, #120]
	str	lr, [sp, #116]
	mov	lr, pc
	bx	r3
	ldr	r1, [r6]
	ldr	r0, .L205+28
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	ldr	r1, [r7]
	ldr	r2, [r3]
	ldr	r0, .L205+52
	ldr	r3, [sp, #120]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r7, [sp, #44]
	str	r3, [sp]
	mov	r1, r3
	mov	r2, #141
	ldr	r3, [r7]
	mov	r0, #50
	mov	lr, pc
	bx	r9
	mov	r9, r7
	ldr	r2, [r7]
	ldr	r3, [r8]
	ldr	r1, [r6]
	sub	r3, r2, r3
	sub	r1, r1, r3
	ldr	r0, .L205+28
	ldr	r3, [sp, #120]
	str	r2, [r8]
	str	r1, [r6]
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #24]
	ldr	r3, .L205+56
	ldr	lr, .L205+64
	ldr	ip, [sp, #40]
	ldr	r0, [r2]
	ldr	r7, .L205+68
	ldr	r2, [r9]
	ldrb	r1, [r3]	@ zero_extendqisi2
	str	r0, [lr]
	str	r2, [r7]
	ldr	r0, .L205+72
	ldr	r2, [ip]
	cmp	r1, #0
	str	r2, [r0]
	moveq	r2, #1
	ldr	r1, [sp, #32]
	strbeq	r2, [r3]
	ldr	r9, .L205+76
	ldr	r3, [sp, #124]
	ldr	r1, [r1]
	str	r9, [sp, #56]
	str	r1, [r9]
	str	r0, [sp, #64]
	ldr	r1, [r3]
	ldr	r9, [sp, #120]
	ldr	r0, .L205+44
	str	lr, [sp, #72]
	str	r7, [sp, #76]
	mov	lr, pc
	bx	r9
	ldr	r1, [r8]
	ldr	r0, .L205+28
	mov	lr, pc
	bx	r9
	ldr	r1, [r5]
	ldr	r0, .L205+48
	mov	lr, pc
	bx	r9
	ldr	r1, [r6]
	ldr	r0, .L205+28
	mov	lr, pc
	bx	r9
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	ldr	r3, [sp, #116]
	ldr	r0, .L205+52
	ldr	r1, [r3]
	mov	lr, pc
	bx	r9
	ldr	r3, .L205+80
	str	r3, [sp, #80]
	ldr	r3, [sp, #24]
	ldr	ip, [r3]
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	ldr	r3, [sp, #40]
	ldr	lr, [r3]
	ldr	r3, .L205+84
	str	r3, [sp, #84]
	ldr	r3, .L205+88
	str	r3, [sp, #60]
	ldr	r3, .L205+92
	mov	r8, r9
	str	r3, [sp, #68]
	b	.L45
.L198:
	ldr	r3, .L205+96
	ldr	r1, [r7]
	ldr	r2, [sp, #32]
	str	r3, [sp]
	ldr	r0, [sp, #24]
	ldr	r3, [r6]
	ldr	r7, .L205
	ldr	r2, [r2]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r7
	mov	r1, #31
	ldr	r2, .L205+4
	str	r1, [sp]
	ldr	r3, .L205+8
	ldr	r1, [r2]
	ldr	r0, [r3]
	mov	r2, r8
	mov	r3, r8
	mov	lr, pc
	bx	r7
	mov	r2, #0
	mov	r1, #2
	mov	r0, #28
	ldr	r3, .L205+12
	mov	lr, pc
	bx	r3
	b	.L72
.L199:
	ldr	r3, .L205+96
	ldr	r1, [r7]
	ldr	r2, [sp, #32]
	str	r3, [sp]
	ldr	r0, [sp, #24]
	ldr	r3, [r6]
	ldr	r2, [r2]
	ldr	r0, [r0]
	ldr	r7, .L205
	mov	lr, pc
	bx	r7
	mov	r1, r8
	mov	r2, #0
	mov	r0, #17
	ldr	r3, .L205+12
	mov	lr, pc
	bx	r3
	mov	r2, #31
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, .L205+4
	ldr	r0, .L205+8
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r7
	b	.L72
.L206:
	.align	2
.L205:
	.word	drawRect
	.word	pY
	.word	pX
	.word	drawHeart
	.word	mgba_printf
	.word	.LC15
	.word	.LC3
	.word	.LC4
	.word	boxX
	.word	.LC5
	.word	boxY
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	resize
	.word	.LC9
	.word	topX
	.word	topY
	.word	topHeight
	.word	topWidth
	.word	boX
	.word	boY
	.word	boWidth
	.word	boHeight
	.word	31710
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #31
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L209
	ldr	r7, .L209+4
	ldr	r3, [r9]
	ldr	r6, .L209+8
	sub	sp, sp, #12
	ldr	r8, .L209+12
	ldr	r4, .L209+16
	mov	r2, r3
	str	r1, [sp]
	ldr	r0, [r6]
	ldr	r1, [r7]
	mov	lr, pc
	bx	r4
	ldr	r5, .L209+20
	ldr	r3, [r8]
	ldr	ip, .L209+24
	ldr	r1, .L209+28
	mov	r2, r3
	ldr	r1, [r1]
	ldr	r0, [r5]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L209+32
	ldr	r3, [r9]
	ldrh	r1, [r2]
	ldr	fp, .L209+36
	ldr	r10, .L209+40
	mov	r2, r3
	str	r1, [sp]
	ldr	r0, [r10]
	ldr	r1, [fp]
	mov	lr, pc
	bx	r4
	ldr	r2, .L209+44
	ldrh	r1, [r2]
	ldr	r3, [r8]
	ldr	r9, .L209+48
	str	r1, [sp]
	ldr	r8, .L209+52
	mov	r2, r3
	ldr	r1, [r8]
	ldr	r0, [r9]
	mov	lr, pc
	bx	r4
	ldr	r1, [r10]
	ldr	r0, [fp]
	ldr	r2, [r9]
	ldr	r3, [r8]
	str	r1, [r6]
	ldr	r1, .L209+28
	str	r0, [r7]
	str	r2, [r5]
	str	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L210:
	.align	2
.L209:
	.word	pWidth
	.word	pOldY
	.word	pOldX
	.word	aWidth
	.word	drawRect
	.word	aOldX
	.word	31710
	.word	aOldY
	.word	pColor
	.word	pY
	.word	pX
	.word	aColor
	.word	aX
	.word	aY
	.size	draw, .-draw
	.section	.rodata.str1.4
	.align	2
.LC19:
	.ascii	"Debugging Initialized\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L214
	mov	lr, pc
	bx	r3
	ldr	r0, .L214+4
	ldr	r3, .L214+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L214+12
	mov	lr, pc
	bx	r3
	ldr	r9, .L214+16
	ldr	r10, .L214+20
	ldr	r8, .L214+24
	ldr	r7, .L214+28
	ldr	r6, .L214+32
	ldr	r4, .L214+36
	ldr	r5, .L214+40
.L212:
	ldrh	r3, [r10]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r10]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L212
.L215:
	.align	2
.L214:
	.word	mgba_open
	.word	.LC19
	.word	mgba_printf
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	time
	.word	67109120
	.size	main, .-main
	.comm	resize,1,1
	.comm	boxHeight,4,4
	.comm	boxWidth,4,4
	.comm	boxY,4,4
	.comm	boxX,4,4
	.comm	rightHeight,4,4
	.comm	rightWidth,4,4
	.comm	rightY,4,4
	.comm	rightX,4,4
	.comm	leftHeight,4,4
	.comm	leftWidth,4,4
	.comm	leftY,4,4
	.comm	leftX,4,4
	.comm	boHeight,4,4
	.comm	boWidth,4,4
	.comm	boY,4,4
	.comm	boX,4,4
	.comm	topHeight,4,4
	.comm	topWidth,4,4
	.comm	topY,4,4
	.comm	topX,4,4
	.comm	loser,1,1
	.comm	winner,1,1
	.comm	collisions,4,4
	.comm	bottomSide,1,1
	.comm	topSide,1,1
	.comm	rightSide,1,1
	.comm	leftSide,1,1
	.comm	bColor,2,2
	.comm	bOldY,4,4
	.comm	bOldX,4,4
	.comm	bHeight,4,4
	.comm	bWidth,4,4
	.comm	bY,4,4
	.comm	bX,4,4
	.comm	drawing,1,1
	.comm	down,1,1
	.comm	up,1,1
	.comm	right,1,1
	.comm	left,1,1
	.comm	aColor,2,2
	.comm	aOldY,4,4
	.comm	aOldX,4,4
	.comm	aWidth,4,4
	.comm	aY,4,4
	.comm	aX,4,4
	.comm	pColor,2,2
	.comm	pOldY,4,4
	.comm	pOldX,4,4
	.comm	pWidth,4,4
	.comm	pY,4,4
	.comm	pX,4,4
	.comm	timestep,4,4
	.comm	time,4,4
	.comm	playing,1,1
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
