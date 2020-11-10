v {xschem version=2.9.8 file_version=1.2

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
T {Ctrl-Click
to open link} 800 -490 0 0 0.3 0.3 {layer=11}
N 330 -280 360 -280 {lab=VSS}
N 300 -140 330 -140 {lab=0}
N 330 -250 330 -140 {lab=0}
N 330 -360 330 -310 { lab=D1}
N 520 -280 550 -280 {lab=VSS}
N 490 -140 520 -140 {lab=0}
N 520 -250 520 -140 {lab=0}
N 520 -360 520 -310 { lab=D2}
N 280 -420 520 -420 { lab=D}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {devices/code.sym} 840 -200 0 0 {name=STIMULI 
only_toplevel=true
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.param l=0.15u
.param w=0.5u

vd d 0 0
vg g 0 0
.control
dc vd 0 2 0.01 vg 0 2 0.2
alterparam l=0.18u
alterparam w=1u
reset
dc vd 0 2 0.01 vg 0 2 0.2
alterparam l=0.3u
alterparam w=2u
reset
dc vd 0 2 0.01 vg 0 2 0.2
alterparam l=0.5u
alterparam w=3u
reset
dc vd 0 2 0.01 vg 0 2 0.2

.endc



"}
C {devices/lab_pin.sym} 360 -280 0 1 {name=p194 lab=VSS}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p197 lab=0}
C {devices/lab_pin.sym} 290 -280 0 0 {name=p1 lab=G}
C {devices/lab_pin.sym} 330 -360 0 0 {name=p2 lab=D1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -280 0 0 {name=M1
L=L
w=1u
ad="'w * 0.29u'" pd="'2 * (w + 0.29u)'"
as="'w * 0.29u'" ps="'2 * (w + 0.29u)'"
nrd="'0.29u / w'" nrs="'0.29u / w'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 550 -280 0 1 {name=p3 lab=VSS}
C {devices/lab_pin.sym} 490 -140 0 0 {name=p4 lab=0}
C {devices/lab_pin.sym} 480 -280 0 0 {name=p5 lab=G}
C {devices/lab_pin.sym} 520 -360 0 0 {name=p6 lab=D2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 500 -280 0 0 {name=M2
l=0.15u
W=W
ad="'w * 0.29u'" pd="'2 * (w + 0.29u)'"
as="'w * 0.29u'" ps="'2 * (w + 0.29u)'"
nrd="'0.29u / w'" nrs="'0.29u / w'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/ammeter.sym} 520 -390 0 0 {name=V2}
C {devices/ammeter.sym} 330 -390 0 0 {name=V1}
C {devices/lab_pin.sym} 280 -420 0 0 {name=p7 lab=D}
C {devices/launcher.sym} 900 -440 0 0 {name=h1
descr="Simulation done
using a patched 
sky130 primitive directory,
see patch file" 
url="https://github.com/StefanSchippers/xschem_sky130/blob/main/sky130_fd_pr.patch"}
C {devices/code.sym} 840 -350 0 0 {name=TT_MODELS
only_toplevel=true
format=tcleval(@value\\)
value="
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/cells/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
