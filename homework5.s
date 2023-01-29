/*
 * Ramin Selseleh
 * homework5
 * theia
 */

.data

.balign 8
/* We need to keep x30 otherwise we will not be able to return from main! */
keep_x30: .dword 0
display_name: .asciz "Ramin Selseleh"
display_number: .asciz "     "
display_secondnumber: .asciz "     "
display_thirdnumber: .asciz "     "
display_fourthnumber: .asciz "     "


.text

.globl main
main:
    ldr x0, addr_keep_x30     // w0 ← &keep_30   [64]
    str x30, [x0]             // *keep_30 ← x30  [64]    

    /* Enter your code below this line. */

    // Display your first and last name
    ldr x0, addr_display_name
    bl puts 

    mov w1, #2
    add w1, w1, #7
    add w2, w1, #48       // convert binary number to ascii
                             // Put ascii number in display_number
    ldr x0, addr_display_number
    str w2, [x0]
    bl  puts

    mov w3, #3
    mov w4, #2
    mul w5, w3, w4
    add w6, w5, #48

    ldr x0, addr_display_secondnumber
    str w6, [x0]
    bl puts


    mov w7, #42
    and w7, w7, #7
    add w8, w7, #48 

    ldr x0, addr_display_number
    str w8, [x0]
    bl  puts


    mov w9, #5
    mov w10, #2
    orr w11, w9, w10
    add w12, w11, #48

    ldr x0, addr_display_number
    str w12, [x0]
    bl  puts
    

    mov w13, #24
    mov w14, #13
    mov w15, #3
    sub w16, w13, w14
    mul w17, w16, w15

 
    /* End your code above this line. */

    ldr x0, addr_keep_x30     // w0 ← &keep_30   [64]
    ldr x30, [x0]             // x30 ← *keep_30  [64]

    mov w0, w17
    ret                       // return

addr_keep_x30 : .dword keep_x30
addr_display_name: .dword display_name
addr_display_number: .dword display_number
addr_display_secondnumber: .dword display_secondnumber
addr_display_thirdnumber: .dword display_thirdnumber
addr_display_fourthnumber: .dword display_fourthnumber
