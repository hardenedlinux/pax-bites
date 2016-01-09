# pax_bite
A small tool provides add/delete/view the binary of PaX flags

## Exmaple
<pre>
shawn@shawn-fortress /tmp $ cat pax_file_flags.txt 
/tmp/a.out;mr
/tmp/t2;m
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax_bite.sh -h
*- elfix package: OK
=====[ pax_bite provides add/delete/view the binary of PaX flags ]========
./pax_bite.sh -h[help] -e[enable] -d[disable] -v[view] [PaX_file_list]
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax_bite.sh -e pax_file_flags.txt 
*- elfix package: OK
Adding PaX flags mr onto binary /tmp/a.out
Adding PaX flags m onto binary /tmp/t2
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax_bite.sh -v pax_file_flags.txt 
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : PemrS

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : PemRS

shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax_bite.sh -d pax_file_flags.txt 
*- elfix package: OK
Deleting PaX flags from binary /tmp/a.out
Deleting PaX flags from binary /tmp/t2
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax_bite.sh -v pax_file_flags.txt 
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : not found

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : not found

</pre>
