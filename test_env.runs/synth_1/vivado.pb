
u
Command: %s
53*	vivadotcl2D
0synth_design -top test_env -part xc7k70tfbv676-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px? 
?
(Analyzing VHDL file "%s" into library %s1061*verific2[
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/MPG.vhd2default:default2"
xil_defaultlib2default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/MPG.vhd2default:default2
12default:default8@Z9-1061h px? 
?
(Analyzing VHDL file "%s" into library %s1061*verific2[
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2"
xil_defaultlib2default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
12default:default8@Z9-1061h px? 
?
(Analyzing VHDL file "%s" into library %s1061*verific2`
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2"
xil_defaultlib2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
12default:default8@Z9-1061h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 282.195 ; gain = 72.047
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
test_env2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
452default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MPG2default:default2[
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/MPG.vhd2default:default2
352default:default2
mpg12default:default2
MPG2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
782default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
MPG2default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/MPG.vhd2default:default2
412default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
MPG2default:default2
12default:default2
12default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/MPG.vhd2default:default2
412default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SSD2default:default2[
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
362default:default2
ssd12default:default2
SSD2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
SSD2default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
432default:default8@Z8-638h px? 
?
default block is never used226*oasys2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
602default:default8@Z8-226h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
cnt2default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
582default:default8@Z8-614h px? 
?
default block is never used226*oasys2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
712default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
SSD2default:default2
22default:default2
12default:default2]
GD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/SSD.vhd2default:default2
432default:default8@Z8-256h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
output12default:default2
test_env2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
692default:default8@Z8-3848h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
test_env2default:default2
32default:default2
12default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
452default:default8@Z8-256h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[4]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[3]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[2]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[1]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 319.754 ; gain = 109.605
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[15]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[14]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[13]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[12]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[11]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[10]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[9]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[8]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[7]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[6]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[5]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[4]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[3]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[2]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[1]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
?
'tying undriven pin %s:%s to constant 0
3295*oasys2
ssd12default:default2
cnt[0]2default:default2b
LD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/sources_1/new/test_env.vhd2default:default2
792default:default8@Z8-3295h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 319.754 ; gain = 109.605
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7k70tfbv676-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2i
SD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/constrs_1/new/test_env_constr.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2i
SD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/constrs_1/new/test_env_constr.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2g
SD:/fac/Xinxin/Laborator AC/test_env/test_env.srcs/constrs_1/new/test_env_constr.xdc2default:default2.
.Xil/test_env_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
610.2192default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7k70tfbv676-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
8
%s
*synth2 
Module MPG 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
Module SSD 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[4]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[3]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[2]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
test_env2default:default2
btn[1]2default:defaultZ8-3331h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[0]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[1]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[2]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[3]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[4]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[5]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[6]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[7]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[8]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
mpg1/count_int_reg[9]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[10]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[11]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[12]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[13]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[14]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[15]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[16]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[17]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[18]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[19]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[20]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[21]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[22]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[23]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[24]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[25]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[26]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[27]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[28]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[29]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[30]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
mpg1/count_int_reg[31]2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mpg1/Q1_reg2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mpg1/Q2_reg2default:default2
test_env2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mpg1/Q3_reg2default:default2
test_env2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     4|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    16|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     4|
2default:defaulth px? 
D
%s*synth2,
|5     |FDRE   |    16|
2default:defaulth px? 
D
%s*synth2,
|6     |IBUF   |    17|
2default:defaulth px? 
D
%s*synth2,
|7     |OBUF   |    27|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |    85|
2default:defaulth p
x
? 
N
%s
*synth26
"|2     |  ssd1   |SSD    |    40|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 39 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:09 ; elapsed = 00:00:13 . Memory (MB): peak = 610.219 ; gain = 109.605
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 610.219 ; gain = 400.070
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
212default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
612default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:162default:default2
00:00:182default:default2
610.2192default:default2
400.0702default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Z
FD:/fac/Xinxin/Laborator AC/test_env/test_env.runs/synth_1/test_env.dcp2default:defaultZ17-1381h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.010 . Memory (MB): peak = 610.219 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Apr 06 22:09:44 20222default:defaultZ17-206h px? 


End Record