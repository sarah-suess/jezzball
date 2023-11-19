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
	.file	"gba.c"
	.text
	.align	2
	.global	drawRect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	rsb	r1, r1, r1, lsl #4
	add	r3, r2, r1, lsl #4
	add	r3, r3, r0
	mov	r0, #0
	ldr	r4, .L10
	ldr	r1, [r4]
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L3:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L6
.L4:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r3, [r3]
	add	r2, r3, #76800
.L13:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L13
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	cmp	ip, r1
	ble	.L22
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L24
.L22:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L24:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L22
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L26:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L26
	mov	r2, #67108864
.L27:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L27
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	drawHorizontalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L39
	rsb	ip, r1, r1, lsl #4
	add	r1, r2, ip, lsl #4
	ldr	r2, [lr]
	add	r1, r1, r0
	add	r0, r0, ip, lsl #4
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L33:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L33
	ldr	lr, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L57
	sub	r5, r1, #2
	rsb	r5, r5, r5, lsl #4
	sub	ip, r0, #2
	add	r1, r0, #2
	ldr	r6, [lr]
	add	r3, ip, r5, lsl #4
	add	r1, r1, r5, lsl #4
	lsl	r5, r5, #4
	lsl	r3, r3, #1
	lsl	r1, r1, #1
	add	r7, r5, #240
	sub	r4, r0, #3
	strh	r2, [r6, r3]	@ movhi
	strh	r2, [r6, r1]	@ movhi
	add	r3, r4, r7
	add	r1, r7, r0
	lsl	lr, r1, #1
	add	r3, r6, r3, lsl #1
	add	r1, r6, r1, lsl #1
.L42:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L42
	add	r3, r0, #1
	add	r3, r3, r7
	add	r7, r6, #8
	add	r3, r6, r3, lsl #1
	add	r1, r7, lr
.L43:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L43
	add	lr, r5, #480
	add	r3, lr, r0
	add	r1, r6, #10
	add	r1, r1, r3, lsl #1
	add	r8, r5, #1200
.L44:
	sub	r3, r1, #18
.L45:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L45
	add	lr, lr, #240
	cmp	lr, r8
	add	r1, r3, #480
	bne	.L44
	add	r3, r4, lr
	add	lr, lr, r0
	add	r3, r6, r3, lsl #1
	add	lr, r7, lr, lsl #1
.L47:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, lr
	bne	.L47
	add	r1, r5, #1440
	add	r3, ip, r1
	add	ip, r1, r0
	add	r1, r6, #6
	add	r3, r6, r3, lsl #1
	add	r1, r1, ip, lsl #1
.L48:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L48
	add	r1, r5, #1680
	sub	r3, r0, #1
	add	r3, r3, r1
	add	ip, r1, r0
	add	r1, r6, #4
	add	r3, r6, r3, lsl #1
	add	r1, r1, ip, lsl #1
.L49:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L49
	add	r3, r5, #1920
	add	r3, r3, r0
	lsl	r3, r3, #1
	strh	r2, [r6, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.size	drawHeart, .-drawHeart
	.align	2
	.global	drawChar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChar, %function
drawChar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L69
	push	{r4, r5, lr}
	rsb	r1, r1, r1, lsl #4
	ldr	r4, [ip]
	ldr	lr, .L69+4
	add	r1, r0, r1, lsl #4
	add	r2, r2, r2, lsl #1
	add	r4, r4, r1, lsl #1
	add	lr, lr, r2, lsl #4
	add	r5, r0, #6
.L60:
	mov	r1, r4
	sub	r2, lr, #48
.L62:
	ldrb	ip, [r2]	@ zero_extendqisi2
	add	r2, r2, #6
	cmp	ip, #0
	strhne	r3, [r1]	@ movhi
	cmp	r2, lr
	add	r1, r1, #480
	bne	.L62
	add	r0, r0, #1
	cmp	r0, r5
	add	lr, r2, #1
	add	r4, r4, #2
	bne	.L60
	pop	{r4, r5, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	fontdata+48
	.size	drawChar, .-drawChar
	.align	2
	.global	drawString
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawString, %function
drawString:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L71
	mov	r4, r0
	mov	r6, r1
.L74:
	mov	r1, r6
	mov	r0, r4
	bl	drawChar
	add	r4, r4, #6
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	cmp	r4, #234
	movgt	r4, #0
	addgt	r6, r6, #8
	cmp	r2, #0
	bne	.L74
.L71:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	drawString, .-drawString
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
