
�
Command: %s
1870*	planAhead2v
tread_checkpoint -auto_incremental -incremental /home/patch/200_mhz/200_mhz.srcs/utils_1/imports/synth_1/test_200.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2G
E/home/patch/200_mhz/200_mhz.srcs/utils_1/imports/synth_1/test_200.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top test_200 -part xc7s25csga324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
IP '%s' is locked:
%s
1260*coregen2
	clk_wiz_02�
�* This IP has board specific outputs. Current project board 'unset' and the board 'digilentinc.com:arty-s7-25:part0:1.1' used to customize the IP 'clk_wiz_0' do not match.Z19-2162h px�
y
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xc7s25Z17-347h px� 
i
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xc7s25Z17-349h px� 
D
Loading part %s157*device2
xc7s25csga324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
343469Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2008.156 ; gain = 402.746 ; free physical = 782 ; free virtual = 27451
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2	
clk_2002
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
368@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clk_102
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
378@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clk_82
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
388@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clk_162
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
398@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
reset2
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
418@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
locked2
wire2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
428@Z8-11241h px� 
�
empty statement in %s5658*oasys2
sequential block2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
998@Z8-9400h px� 
�
synthesizing module '%s'%s4497*oasys2

test_2002
 2=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2n
j/home/patch/200_mhz/200_mhz.runs/synth_1/.Xil/Vivado-343448-patch-Precision-7760/realtime/clk_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12n
j/home/patch/200_mhz/200_mhz.runs/synth_1/.Xil/Vivado-343448-patch-Precision-7760/realtime/clk_wiz_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

test_2002
 2
02
12=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
238@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2

test_2002=
9/home/patch/200_mhz/200_mhz.srcs/sources_1/new/test_200.v2
418@Z8-3848h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ja[2]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ja[3]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[1]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[2]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[3]2

test_200Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2

test_200Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2

test_200Z8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw2

test_200Z8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2085.094 ; gain = 479.684 ; free physical = 685 ; free virtual = 27354
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2096.969 ; gain = 491.559 ; free physical = 683 ; free virtual = 27352
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2096.969 ; gain = 491.559 ; free physical = 683 ; free virtual = 27352
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2096.9692
0.0002
6822
27352Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2]
Y/home/patch/200_mhz/200_mhz.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
instance_name	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2]
Y/home/patch/200_mhz/200_mhz.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
instance_name	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
ja[4]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
438@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
ja[5]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
448@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
ja[6]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
458@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
ja[7]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
468@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
jb[4]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
538@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
jb[5]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
548@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
jb[6]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
558@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
jb[7]2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
568@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2A
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2?
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
.Xil/test_200_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
=/home/patch/200_mhz/200_mhz.srcs/constrs_1/new/arty_s7-25.xdc2
.Xil/test_200_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2242.7192
0.0002
6692
27331Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2242.7542
0.0002
6692
27330Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 670 ; free virtual = 27331
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7s25csga324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 670 ; free virtual = 27331
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 670 ; free virtual = 27332
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 670 ; free virtual = 27333
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 11    
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	              10x33  Multipliers := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 23    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
%s
*synth2W
UPart Resources:
DSPs: 80 (col length:40)
BRAMs: 90 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ja[2]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
ja[3]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[1]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[2]2

test_200Z8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
jb[3]2

test_200Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2

test_200Z8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2

test_200Z8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw2

test_200Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 645 ; free virtual = 27311
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 643 ; free virtual = 27309
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 635 ; free virtual = 27304
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 635 ; free virtual = 27304
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
f
*BlackBox module %s has unconnected pin %s
3599*oasys2
instance_name2
resetZ8-4442h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |clk_wiz |     1|
h px� 
3
%s*synth2
|2     |CARRY4  |    36|
h px� 
3
%s*synth2
|3     |LUT1    |     8|
h px� 
3
%s*synth2
|4     |LUT2    |    25|
h px� 
3
%s*synth2
|5     |LUT3    |    10|
h px� 
3
%s*synth2
|6     |LUT4    |    56|
h px� 
3
%s*synth2
|7     |LUT5    |     9|
h px� 
3
%s*synth2
|8     |LUT6    |    18|
h px� 
3
%s*synth2
|9     |FDRE    |    52|
h px� 
3
%s*synth2
|10    |IBUF    |     3|
h px� 
3
%s*synth2
|11    |OBUF    |     6|
h px� 
3
%s*synth2
|12    |OBUFT   |     2|
h px� 
3
%s*synth2
+------+--------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 1 critical warnings and 9 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2242.754 ; gain = 491.559 ; free physical = 611 ; free virtual = 27285
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2242.754 ; gain = 637.344 ; free physical = 611 ; free virtual = 27285
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2242.7542
0.0002
6112
27285Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
36Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2242.7542
0.0002
9402
27615Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e1944aa4Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
282
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:172

00:00:152

2242.7542	
920.4382
9392
27614Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1852.702; main = 1477.842; forked = 426.614Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3232.023; main = 2242.723; forked = 1021.316Z17-2834h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

2266.7302
0.0002
9392
27614Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint27
5/home/patch/200_mhz/200_mhz.runs/synth_1/test_200.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file test_200_utilization_synth.rpt -pb test_200_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jul 10 19:01:33 2024Z17-206h px� 


End Record