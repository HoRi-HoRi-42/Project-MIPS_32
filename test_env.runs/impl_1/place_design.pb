
?
?No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k70t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
Rule violation (%s) %s - %s
20*drc2
BIVB-12default:default2,
Bank IO standard Support2default:default2?
?Bank 33 has incompatible IO(s) because: The LVCMOS33 I/O standard is not supported.  Move the following ports or change their properties:  
cat[3]2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
BIVB-12default:default2,
Bank IO standard Support2default:default2?
?Bank 34 has incompatible IO(s) because: The LVCMOS33 I/O standard is not supported.  Move the following ports or change their properties:  
an[3:0], cat[1], cat[4], cat[6], led[9] and led[10]2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
BIVB-12default:default2,
Bank IO standard Support2default:default2?
?Bank 34 has incompatible IO(s) because: The LVCMOS33 I/O standard is not supported.  Move the following ports or change their properties:  
clk2default:defaultZ23-20h px? 
?
Rule violation (%s) %s - %s
20*drc2
BIVB-12default:default2,
Bank IO standard Support2default:default2?
?Bank 34 has incompatible IO(s) because: The LVCMOS33 I/O standard is not supported.  Move the following ports or change their properties:  
sw[8] and sw[13]2default:defaultZ23-20h px? 
V
DRC finished with %s
79*	vivadotcl2
4 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
M
+Error(s) found during DRC. Placer not run.
23*	vivadotclZ4-23h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352default:default2
02default:default2
312default:default2
52default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Apr 06 22:10:08 20222default:defaultZ17-206h px? 


End Record