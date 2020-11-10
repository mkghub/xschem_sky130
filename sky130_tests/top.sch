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
L 4 1300 -1130 2260 -1130 {}
L 4 1300 -895 2260 -895 {}
L 4 1300 -685 2260 -685 {}
L 4 1300 -300 2260 -300 {}
L 4 1300 -95 2260 -95 {}
L 4 1300 -1380 2260 -1380 {}
L 4 1300 -1250 2260 -1250 {}
T {Google-Skywater PDK links} 650 -1240 0 0 0.6 0.6 {layer=8}
T {PFET} 1350 -1040 0 0 1 1 { hcenter=true}
T {NFET} 1350 -800 0 0 1 1 { hcenter=true}
T {RES} 1350 -550 0 0 1 1 { hcenter=true}
T {DIODE} 1350 -195 0 0 1 1 { hcenter=true}
T {PNP} 1350 -70 0 0 1 1 { hcenter=true}
T {No Model} 1800 -710 0 0 0.3 0.3 {layer=7}
T {No Model} 1960 -590 0 0 0.3 0.3 {layer=7}
T {No Model} 1800 -930 0 0 0.3 0.3 {layer=7}
T {Digital standard cells} 50 -790 0 0 0.6 0.6 {layer=8}
T {Ctrl-Click to open link} 610 -1190 0 0 0.3 0.3 {layer=11}
T {Ctrl-Click to open link} 480 -730 0 0 0.3 0.3 {layer=11}
T {* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0
* (the "License"); you may not use this file
* except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to
* in writing, software distributed under the License is
* distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
* OR CONDITIONS OF ANY KIND,* either express or implied.
* See the License for the specific language governing
* permissions and limitations under the License.} 20 -530 0 0 0.5 0.5 {}
T {MIM} 1350 -1205 0 0 1 1 { hcenter=true}
T {Available models:
sky130_fd_pr__diode_pw2nd_05v5
sky130_fd_pr__diode_pw2nd_11v0
sky130_fd_pr__diode_pw2nd_05v5_nvt
sky130_fd_pr__diode_pw2nd_05v5_lvt
sky130_fd_pr__diode_pd2nw_05v5
sky130_fd_pr__diode_pd2nw_11v0
sky130_fd_pr__diode_pd2nw_05v5_hvt
sky130_fd_pr__diode_pd2nw_05v5_lvt
sky130_fd_pr__model__parasitic__rf_diode_ps2nw
sky130_fd_pr__model__parasitic__rf_diode_pw2dn
sky130_fd_pr__model__parasitic__diode_pw2dn
sky130_fd_pr__model__parasitic__diode_ps2dn
sky130_fd_pr__model__parasitic__diode_ps2nw
} 1600 -290 0 0 0.2 0.2 {}
T {Available_models:
sky130_fd_pr__diode_pw2nd_05v5
sky130_fd_pr__diode_pw2nd_11v0
sky130_fd_pr__diode_pd2nw_05v5
sky130_fd_pr__diode_pd2nw_11v0
sky130_fd_pr__model__parasitic__diode_ps2dn
} 2030 -190 0 0 0.2 0.2 {}
T {VARACTORS} 1320 -1355 0 0 1 1 { hcenter=true}
T {Analog primitives validation} 60 -1300 0 0 0.6 0.6 {layer=8}
T {PERP. VPP CAP} 1350 -1475 0 0 1 1 { hcenter=true}
T {Available models:
cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5
cap_vpp_11p5x11p7_l1m1m2m3m4_shieldpom5
cap_vpp_11p5x11p7_m1m2m3m4_shieldl1m5
cap_vpp_04p4x04p6_m1m2m3_shieldl1m5_floatm4
cap_vpp_08p6x07p8_m1m2m3_shieldl1m5_floatm4
cap_vpp_11p5x11p7_m1m2m3_shieldl1m5_floatm4
cap_vpp_11p5x11p7_l1m1m2m3_shieldm4
cap_vpp_06p8x06p1_l1m1m2m3_shieldpom4
cap_vpp_06p8x06p1_m1m2m3_shieldl1m4
cap_vpp_11p3x11p8_l1m1m2m3m4_shieldm5} 1950 -1530 0 0 0.2 0.2 {}
T {No Model} 1970 -710 0 0 0.3 0.3 {layer=7}
T {No Model} 2130 -710 0 0 0.3 0.3 {layer=7}
T {No Model} 2270 -710 0 0 0.3 0.3 {layer=7}
T {WARNING: currently (20201025) varactor model
is not working. Contains hspice-specific syntax
that ngspice does not simulate correctly} 1860 -1340 0 0 0.3 0.3 {layer=7}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {devices/launcher.sym} 680 -1150 0 0 {name=h1
descr="Google-Skywater PDK documentation" 
url="http://skywater-pdk.readthedocs.io/en/latest"}
C {devices/launcher.sym} 680 -1070 0 0 {name=h2
descr="Google-Skywater PDK git repo" 
url="https://foss-eda-tools.googlesource.com/skywater-pdk/libs"}
C {devices/launcher.sym} 680 -1110 0 0 {name=h3
descr="Google-Skywater PDK documentation: Device details" 
url="https://skywater-pdk.readthedocs.io/en/latest/rules/device-details.html"}
C {sky130_tests/test_nmos.sym} 310 -1030 0 0 {name=x1}
C {sky130_tests/test_pmos.sym} 310 -990 0 0 {name=x2}
C {sky130_tests/test_inv.sym} 310 -950 0 0 {name=x5}
C {sky130_tests/test_res.sym} 310 -1070 0 0 {name=x3}
C {sky130_tests/test_bipolar.sym} 310 -1110 0 0 {name=x4}
C {sky130_tests/test_diode.sym} 310 -1150 0 0 {name=x6}
C {sky130_fd_pr/diode.sym} 1890 -140 0 0 {name=D1
model=diode_pw2nd_05v5
area=1

}
C {sky130_fd_pr/lvsdiode.sym} 1460 -140 0 0 {name=D2
model=diode_pw2nd_11v0
area=1

}
C {sky130_fd_pr/pnp_05v5.sym} 1670 -50 0 0 {name=Q1
model=pnp_05v5_W0p68L0p68
spiceprefix=X
}
C {sky130_fd_pr/res_iso_pw.sym} 1520 -630 0 0 {name=R1
w=2.65u
l=2.65u
model=res_iso_pw
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_generic_nd.sym} 1680 -630 0 0 {name=R2
w=1u
l=1u
model=res_generic_nd
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_generic_pd.sym} 1840 -630 0 0 {name=R3
w=1u
l=1u
model=res_generic_pd
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_generic_po.sym} 2000 -630 0 0 {name=R4
w=1u
l=1u
model=res_generic_po
spiceprefix=X
spice_ignore=true
 mult=1}
C {sky130_fd_pr/res_high_po.sym} 1520 -500 0 0 {name=R5
w=1u
l=1u
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1680 -500 0 0 {name=R6
w=0.35u
l=0.35u
model=res_high_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 1840 -500 0 0 {name=R7
w=0.69u
l=0.69u
model=res_high_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 2000 -500 0 0 {name=R8
w=1.41u
l=1.41u
model=res_high_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1520 -370 0 0 {name=R9
w=1u
l=1u
model=res_xhigh_po
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1680 -370 0 0 {name=R10
w=0.35u
l=0.35u
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1840 -370 0 0 {name=R11
w=0.69u
l=0.69u
model=res_xhigh_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 2000 -370 0 0 {name=R12
w=1.41u
l=1.41u
model=res_xhigh_po_1p41
spiceprefix=X
 mult=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1500 -840 0 0 {name=M1
l=0.15u
w=1u
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1660 -840 0 0 {name=M2
l=0.15u
w=1u  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 1820 -840 0 0 {name=M3
l=0.5u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_03v3_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_05v0_nvt.sym} 1980 -840 0 0 {name=M4
l=0.9u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1500 -750 0 0 {name=M5
l=0.5u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d16v0.sym} 1660 -750 0 0 {name=M6
l=0.7u
w=5.0u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_g5v0d16v0
spiceprefix=X
}
C {sky130_fd_pr/nfet_20v0.sym} 1820 -750 0 0 {name=M7
l=0.5u
w=20.0u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_20v0
spiceprefix=X
 spice_ignore=true}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1820 -1070 0 0 {name=M8
l=0.15u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1500 -970 0 0 {name=M9
l=0.5u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1500 -1070 0 0 {name=M10
l=0.35u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1660 -1070 0 0 {name=M11
l=0.15u
w=1u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d16v0.sym} 1660 -970 0 0 {name=M12
l=0.66u
w=5.0u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_g5v0d16v0
spiceprefix=X
}
C {sky130_tests/test_comparator.sym} 310 -910 0 0 {name=x7}
C {sky130_fd_pr/pfet_20v0.sym} 1820 -970 0 0 {name=M13
l=1u
w=30u
ad="'w * 0.29u'" pd="'w + 2 * 0.29u'"
as="'w * 0.29u'" ps="'w + 2 * 0.29u'"
nrd=0 nrs=0
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_20v0
spiceprefix=X
spice_ignore=true
}
C {sky130_tests/gates.sym} 310 -690 0 0 {name=x8}
C {devices/launcher.sym} 510 -690 0 0 {name=h4
descr="List of gates" 
url="https://github.com/RTimothyEdwards/open_pdks/blob/master/common/gate_list.txt"}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1600 -1180 0 0 {name=C1 model=cap_mim_m3_1 w=1u l=1u MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1760 -1180 0 0 {name=C2 model=cap_mim_m3_2 w=1u l=1u MF=1 spiceprefix=X}
C {sky130_tests/test_format_override.sym} 310 -650 0 0 {name=x9}
C {sky130_tests/test_nmos_sizes.sym} 310 -870 0 0 {name=x11}
C {devices/launcher.sym} 680 -1030 0 0 {name=h5
descr="XSCHEM on Github" 
url="https://github.com/StefanSchippers/xschem"}
C {devices/launcher.sym} 680 -990 0 0 {name=h6
descr="XSCHEM SKY130 Libraries on Github" 
url="https://github.com/StefanSchippers/xschem_sky130"}
C {sky130_tests/gates_sky130.sym} 310 -610 0 0 {name=x10}
C {sky130_tests/test_stdcells.sym} 310 -730 0 0 {name=x12}
C {sky130_tests/all_sky130_gates.sym} 310 -570 0 0 {name=x13}
C {devices/launcher.sym} 680 -950 0 0 {name=h7
descr="A good tutorial for using XSCHEM with SKY130 pdk" 
url="https://github.com/bluecmd/learn-sky130/blob/main/schematic/xschem/getting-started.md"}
C {sky130_fd_pr/cap_var_lvt.sym} 1600 -1320 0 0 {name=C3 model=cap_var_lvt w=0.5u l=0.5u VM=1 spiceprefix=X}
C {sky130_fd_pr/cap_var_hvt.sym} 1760 -1320 0 0 {name=C4 model=cap_var_hvt w=0.5u l=0.5u VM=1 spiceprefix=X}
C {sky130_tests/test_varactor.sym} 310 -1190 0 0 {name=x14}
C {sky130_tests/test_vpp_cap.sym} 310 -1230 0 0 {name=x15}
C {sky130_fd_pr/vpp_cap.sym} 1650 -1440 0 0 {name=C5
model=cap_vpp_11p5x11p7_l1m1m2m3m4_shieldm5
w=1u
l=1u 
mult=1 
spiceprefix=X}
C {sky130_fd_pr/nfet_20v0_iso.sym} 1980 -750 0 0 {name=M14
l=0.5u
w=20.0u
ad="'w * 0.29u'" pd="'2 * (w + 0.29u)'"
as="'w * 0.29u'" ps="'2 * (w + 0.29u)'"
nrd="'0.29u / w'" nrs="'0.29u / w'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_20v0_iso
spiceprefix=X
}
C {sky130_fd_pr/nfet_20v0_nvt.sym} 2140 -750 0 0 {name=M15
l=0.5u
w=20.0u
ad="'w * 0.29u'" pd="'2 * (w + 0.29u)'"
as="'w * 0.29u'" ps="'2 * (w + 0.29u)'"
nrd="'0.29u / w'" nrs="'0.29u / w'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_20v0_nvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_20v0_zvt.sym} 2280 -750 0 0 {name=M16
l=0.5u
w=20.0u
ad="'w * 0.29u'" pd="'2 * (w + 0.29u)'"
as="'w * 0.29u'" ps="'2 * (w + 0.29u)'"
nrd="'0.29u / w'" nrs="'0.29u / w'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_20v0_zvt
spiceprefix=X
}
C {devices/launcher.sym} 680 -910 0 0 {name=h8
descr="Open_pdks documentation"
url="http://opencircuitdesign.com/open_pdks/index.html"}
C {devices/launcher.sym} 680 -870 0 0 {name=h9
descr="diadatp patch file of sky130_fd_pr/ directory for ngspice"
url="https://gist.githubusercontent.com/diadatp/36b7d6a80f7b586fd561b5951077eddc/raw/e0d6d5cdd7437b4f76fa0373ac634a61f696d2f1/fix_resistors.patch"}
