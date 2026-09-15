v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -90 320 -70 {lab=VDD}
N 290 -70 320 -70 {lab=VDD}
N 320 -50 320 -20 {lab=GND}
N 290 -50 320 -50 {lab=GND}
N -200 -50 -200 -20 {
lab=ro_en}
N -200 40 -200 80 {
lab=GND}
N -310 40 -310 80 {
lab=GND}
N -310 -50 -310 -20 {
lab=VDD}
N 290 -30 440 -30 {lab=vout}
N 320 -20 320 0 {lab=GND}
N 320 60 320 80 {lab=VDD}
N 290 80 320 80 {lab=VDD}
N 320 100 320 130 {lab=GND}
N 290 100 320 100 {lab=GND}
N 290 120 440 120 {lab=vout2}
N 320 130 320 150 {lab=GND}
C {devices/vdd.sym} 320 -90 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 320 0 0 0 {name=l12 lab=GND
}
C {devices/vsource.sym} -200 10 0 0 {name=vin value="pwl 0 0 20n 0 30n 5.0" savecurrent=false}
C {devices/lab_pin.sym} -200 -50 1 0 {name=p5 sig_type=std_logic lab=ro_en}
C {devices/gnd.sym} -200 80 0 0 {name=l16 lab=GND
}
C {devices/lab_pin.sym} -10 -70 0 0 {name=p1 sig_type=std_logic lab=ro_en}
C {devices/vsource.sym} -310 10 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -310 -50 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -310 80 0 0 {name=l3 lab=GND
}
C {devices/lab_pin.sym} 440 -30 2 0 {name=p3 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} -130 220 0 0 {name=spice only_toplevel=false value=".control
save all
tran 0.1n 200n
plot ro_en vout vout2

.endc"}
C {ro.sym} 140 -50 0 0 {name=x1}
C {devices/code.sym} -320 210 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {ro_regymm.sym} 140 100 0 0 {name=x2}
C {devices/lab_pin.sym} -10 80 0 0 {name=p2 sig_type=std_logic lab=ro_en}
C {devices/vdd.sym} 320 60 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 320 150 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} 440 120 2 0 {name=p4 sig_type=std_logic lab=vout2}
