# pax_bite
A small tool provides add/delete/view the binary of PaX flags

## Exmaple
<pre>
shawn@shawn-fortress /tmp $ ./pax_bite.sh -h
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
./pax_bite.sh -h[help] -e[enable] -d[disable] -v[view] [PaX_file_list]
shawn@shawn-fortress /tmp $ ./pax_bite.sh -v pax_file_flags.txt 
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : not found

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : not found

shawn@shawn-fortress /tmp $ ./pax_bite.sh -e pax_file_flags.txt 
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
shawn@shawn-fortress /tmp $ ./pax_bite.sh -v pax_file_flags.txt 
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : PemrS

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : PemRS

shawn@shawn-fortress /tmp $ ./pax_bite.sh -d pax_file_flags.txt 
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
shawn@shawn-fortress /tmp $ ./pax_bite.sh -v pax_file_flags.txt 
=====================[ Add/delete PaX flags ]====================
###########################################################################
 Monkey-coder: Shawn the R0ck,<citypw@gmail.com>
 GPL'ed....
 This is free software, and you are welcome to redistribute it
 under the terms of the GNU General Public License.  See LICENSE file
 for details about using this software.
###########################################################################
----------------------------------------------
*- elfix package: OK
/tmp/a.out:
	PT_PAX    : not found
	XATTR_PAX : not found

/tmp/t2:
	PT_PAX    : not found
	XATTR_PAX : not found

</pre>
