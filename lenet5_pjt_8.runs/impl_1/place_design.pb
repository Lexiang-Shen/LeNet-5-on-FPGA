
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xcvu9p2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xcvu9p2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
2460.8872default:default2
0.0002default:defaultZ17-268h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: af119985
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.089 . Memory (MB): peak = 2460.887 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0422default:default2
2460.8872default:default2
0.0002default:defaultZ17-268h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 17c0d0354
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:08 ; elapsed = 00:00:40 . Memory (MB): peak = 4080.027 ; gain = 1619.1412default:defaulth px� 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1c2278b7b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:19 ; elapsed = 00:01:17 . Memory (MB): peak = 5170.891 ; gain = 2710.0042default:defaulth px� 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1c2278b7b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:19 ; elapsed = 00:01:18 . Memory (MB): peak = 5170.891 ; gain = 2710.0042default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1c2278b7b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:19 ; elapsed = 00:01:18 . Memory (MB): peak = 5170.891 ; gain = 2710.0042default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px� 
C
.Phase 2.1 Floorplanning | Checksum: 207484a1b
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:57 ; elapsed = 00:03:57 . Memory (MB): peak = 5221.953 ; gain = 2761.0662default:defaulth px� 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
�
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px� 
�
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px� 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0392default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           2  |  00:00:01  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 2133738d8
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:30 ; elapsed = 00:06:46 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
D
/Phase 2 Global Placement | Checksum: 2523ff0d7
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:32 ; elapsed = 00:06:56 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 2554a871a
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:32 ; elapsed = 00:06:58 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1ec747373
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:34 ; elapsed = 00:07:13 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 21975d2bf
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:35 ; elapsed = 00:07:17 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
y

Phase %s%s
101*constraints2
3.4 2default:default2*
Small Shape Clustering2default:defaultZ18-101h px� 
L
7Phase 3.4 Small Shape Clustering | Checksum: 1b1490510
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:40 ; elapsed = 00:07:55 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 


Phase %s%s
101*constraints2
3.5 2default:default20
Flow Legalize Slice Clusters2default:defaultZ18-101h px� 
R
=Phase 3.5 Flow Legalize Slice Clusters | Checksum: 1aa3ae9cb
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:41 ; elapsed = 00:07:57 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
r

Phase %s%s
101*constraints2
3.6 2default:default2#
Slice Area Swap2default:defaultZ18-101h px� 
E
0Phase 3.6 Slice Area Swap | Checksum: 1c2d60900
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:45 ; elapsed = 00:08:29 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
x

Phase %s%s
101*constraints2
3.7 2default:default2)
Commit Slice Clusters2default:defaultZ18-101h px� 
K
6Phase 3.7 Commit Slice Clusters | Checksum: 1d90bd2b9
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:49 ; elapsed = 00:08:54 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 16bb0135c
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:51 ; elapsed = 00:09:17 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
�

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 1484c0013
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:51 ; elapsed = 00:09:19 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1484c0013
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:01:52 ; elapsed = 00:09:20 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
U
@Post Placement Optimization Initialization | Checksum: f114fb4b
*commonh px� 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px� 
�
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow2#
u_lenet5/state22default:default2
141122default:defaultZ46-35h px� 
�
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow20
u_lenet5/cache[0][0]_i_1_n_02default:default2
18002default:defaultZ46-35h px� 
�
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow22
u_lenet5/added_1[0][0]_i_1_n_02default:default2
18002default:defaultZ46-35h px� 
�
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow22
u_lenet5/added_2[0][0]_i_1_n_02default:default2
18002default:defaultZ46-35h px� 
�
2Processed net %s, inserted BUFG to drive %s loads.34*	placeflow26
"u_lenet5/producted_1[0][0]_i_1_n_02default:default2
18002default:defaultZ46-35h px� 
�
�BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
52default:default2
52default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-46h px� 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 1f53f4563
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:06 ; elapsed = 00:10:21 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
w

Phase %s%s
101*constraints2
4.1.1.2 2default:default2$
BUFG Replication2default:defaultZ18-101h px� 
J
5Phase 4.1.1.2 BUFG Replication | Checksum: 1f53f4563
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:06 ; elapsed = 00:10:22 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
3.5322default:defaultZ30-746h px� 
r

Phase %s%s
101*constraints2
4.1.1.3 2default:default2
Replication2default:defaultZ18-101h px� 
�
kPost Replication Timing Summary WNS=%s. For the most accurate timing information please run report_timing.
24*	placeflow2
3.5322default:defaultZ46-19h px� 
E
0Phase 4.1.1.3 Replication | Checksum: 116650bdb
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:06 ; elapsed = 00:10:24 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 116650bdb
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:06 ; elapsed = 00:10:25 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 116650bdb
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:06 ; elapsed = 00:10:27 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
�
�Placer has a high congestion level. Please run route_design if needed to identify more accurate regions of congestion. You can use the route congestion metrics in the device view and/or check the logfile for congestion reports.20*	placeflowZ46-14h px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 116650bdb
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:07 ; elapsed = 00:10:29 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2
00:00:012default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 14fa6e858
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:11 ; elapsed = 00:10:57 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 114a60338
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:11 ; elapsed = 00:10:58 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 114a60338
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:11 ; elapsed = 00:10:59 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
>
)Ending Placer Task | Checksum: 11335806a
*commonh px� 
�

%s
*constraints2r
^Time (s): cpu = 00:02:11 ; elapsed = 00:10:59 . Memory (MB): peak = 5819.156 ; gain = 3358.2702default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:142default:default2
00:11:062default:default2
5819.1562default:default2
3358.2702default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0582default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:062default:default2
00:00:122default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2R
>D:/Vivado/lenet5_pjt_8/lenet5_pjt_8.runs/impl_1/top_placed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:252default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
^
%s4*runtcl2B
.Executing : report_io -file top_io_placed.rpt
2default:defaulth px� 
�
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.253 . Memory (MB): peak = 5819.156 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2r
^Executing : report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
2default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_utilization: 2default:default2
00:00:042default:default2
00:00:322default:default2
5819.1562default:default2
0.0002default:defaultZ17-268h px� 
{
%s4*runtcl2_
KExecuting : report_control_sets -verbose -file top_control_sets_placed.rpt
2default:defaulth px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.327 . Memory (MB): peak = 5819.156 ; gain = 0.000
*commonh px� 


End Record