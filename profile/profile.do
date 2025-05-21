
set linesize 80
set more off, permanently
set seed 12345

set logtype text

*===== Define custom sysdir to save ado files ========
sysdir set PLUS "C:\Installed_PG\Stata18\ado\plus"

sysdir set PERSONAL "C:\Installed_PG\Stata18\ado\personal"

sysdir

*== Define key strokes (use at Stata Command Window)=====
* Available to Use F2 F5 F6 F9 F11 F12, other fuctionkeys can be overwritten.
* Leave F1 help, F3 find as Stata default.

* SK's key
*global F4 ‘        // stata example

global F2 "tab "     // Stata default: describe command-->tab
// global F4 **        // set F4 key as my shortcut for **
global F4 "order "
global F5 "drop "

global F6 `"listcd;"'   // list all dirshortcuts
global F7  `"cd;"'      //
global F8  `"dir;"'     // Stata default: use command-->dir
global F9 `"pwd;"'      // set F9 key as pwd command

*============= Define default path =================
global root "D:/"

cd "D:/"        // change the starting path as appropriate
noisily pwd     // print the starting path


/*End of profile.do (Stata 18) */
