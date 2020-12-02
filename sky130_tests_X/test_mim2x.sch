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
to open link} 20 -340 0 0 0.3 0.3 {layer=11}
N 550 -430 550 -400 { lab=0}
N 550 -280 550 -210 { lab=G}
N 550 -150 550 -120 { lab=0}
N 700 -210 700 -190 { lab=REF}
N 700 -280 700 -270 { lab=G}
N 550 -280 700 -280 { lab=G}
N 860 -430 860 -400 { lab=0}
N 860 -280 860 -230 { lab=G1}
N 860 -100 860 -70 { lab=0}
N 1010 -210 1010 -190 { lab=REF}
N 1010 -280 1010 -270 { lab=G1}
N 860 -280 1010 -280 { lab=G1}
N 860 -340 860 -280 { lab=G1}
N 550 -340 550 -280 { lab=G}
N 860 -190 860 -100 { lab=0}
N 420 -410 420 -390 { lab=REF}
C {devices/code_shown.sym} 30 -640 0 0 {name=Xyce
only_toplevel=true
value="
.ac dec 20 1e6 100e6
.print ac format=raw '-I(V2)/freq/2.0/3.141592*1e15' '-I(V3)/freq/2.0/3.141592*1e15' V(G) V(G1) '-I(V2)' '-I(V3)'
V2 0 G DC 0 AC 1.0 0.0
V3 0 G1 DC 0 AC 1.0 0.0
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {devices/lab_pin.sym} 550 -240 0 0 {name=p4 lab=G}
C {devices/lab_pin.sym} 550 -430 0 0 {name=p1 lab=0}
C {devices/lab_pin.sym} 550 -120 0 0 {name=p2 lab=0}
C {devices/res.sym} 700 -240 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 700 -190 0 0 {name=p5 lab=REF}
C {devices/lab_pin.sym} 860 -250 0 0 {name=p6 lab=G1}
C {devices/lab_pin.sym} 860 -430 0 0 {name=p7 lab=0}
C {devices/lab_pin.sym} 860 -70 0 0 {name=p8 lab=0}
C {devices/res.sym} 1010 -240 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1010 -190 0 0 {name=p10 lab=REF}
C {devices/vsource.sym} 420 -360 0 0 {name=V1 value=0}
C {devices/lab_pin.sym} 420 -330 0 0 {name=p14 lab=0}
C {devices/lab_pin.sym} 420 -410 0 1 {name=p15 lab=REF}
C {devices/code.sym} 20 -180 0 0 {name=TT_MODELS
only_toplevel=true
format=tcleval(@value\\)
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/corners/tt/rf.spice
"}
C {devices/launcher.sym} 130 -290 0 0 {name=h2
descr="Simulation done
using a patched 
sky130 primitive directory,
see patch file from diadatp" 
url="https://gist.github.com/diadatp/36b7d6a80f7b586fd561b5951077eddc"}
C {sky130_fd_pr/cap_mim_m3_2.sym} 860 -200 0 0 {name=C4 model=cap_mim_m3_2 w=20u l=20u mf=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -180 0 0 {name=C3
model=cap_mim_m3_1
w=20u
l=20u
mf=1
spiceprefix=X
}
