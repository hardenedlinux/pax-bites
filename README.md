# pax-bites
A small tool provides add/delete/view the binary of PaX flags

Dependency package: [paxctl-ng](https://github.com/hardenedlinux/elfix-deb)

## Exmaple
<pre>
shawn@shawn-fortress /tmp $ cat pax_file_flags.txt 
/tmp/a.out;mr
/tmp/t2;m
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax-bites.sh -h
*- elfix package: OK
=====[ pax-bites provides add/delete/view the binary of PaX flags ]========
./pax-bites.sh -h[help] -e[enable] -d[disable] -v[view] [PaX_file_list]
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax-bites.sh -e pax_file_flags.txt 
*- elfix package: OK
Adding PaX flags mr onto binary /tmp/a.out
Adding PaX flags m onto binary /tmp/t2
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax-bites.sh -v pax_file_flags.txt 
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : PemrS

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : PemRS

shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax-bites.sh -d pax_file_flags.txt 
*- elfix package: OK
Deleting PaX flags from binary /tmp/a.out
Deleting PaX flags from binary /tmp/t2
shawn@shawn-fortress /tmp $ 
shawn@shawn-fortress /tmp $ ./pax-bites.sh -v pax_file_flags.txt 
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : not found

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : not found

</pre>
