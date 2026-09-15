v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 0 -80 30 {
lab=vin}
N -80 90 -80 130 {
lab=GND}
N -160 90 -160 130 {
lab=GND}
N -160 0 -160 30 {
lab=VDD}
N 510 -90 510 -70 {
lab=VDD}
N 480 20 510 20 {lab=#net1}
N 510 -10 510 20 {lab=#net1}
N 120 20 180 20 {lab=vin}
N 480 40 660 40 {lab=vout}
N 480 60 510 60 {lab=GND}
N 510 60 510 90 {lab=GND}
N 580 40 580 60 {lab=vout}
C {inverter_regymm.sym} 330 40 0 0 {name=x1}
C {devices/vsource.sym} -160 60 0 0 {name=Vdd value=5.0 savecurrent=true}
C {devices/vsource.sym} -80 60 0 0 {name=vin value="pwl 0 0 10n 0 20n 5.0 60n 5.0 70n 0" savecurrent=true}
C {devices/lab_pin.sym} -80 0 1 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/vdd.sym} -160 0 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -160 130 0 0 {name=l3 lab=GND
}
C {devices/gnd.sym} -80 130 0 0 {name=l4 lab=GND
}
C {devices/ammeter.sym} 510 -40 0 0 {name=Vd savecurrent=true spice_ignore=0}
C {devices/vdd.sym} 510 -90 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 120 20 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 660 40 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 510 90 0 0 {name=l5 lab=GND
}
C {devices/code_shown.sym} 150 160 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* Tran analysis
tran 0.1n 100n
plot vout vin
%plot i(Vd)
plot -i(Vdd)
plot -i(vin)
wrdata ~/inverter_tb_tran.txt v(vout)
write inverter_tb_trans.raw
.endc"}
C {devices/code.sym} -180 240 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 150 430 0 0 {name=measure only_toplevel=false value="
.measure tran td_r trig v(vin) val=2.5 fall=1 targ v(vout) val=2.5 rise=1
.measure tran td_f trig v(vin) val=2.5 rise=1 targ v(vout) val=2.5 fall=1
.measure tran trise trig v(vout) val=0.83 rise=1 targ v(vout) val=4.17 rise=1
.measure tran tfall trig v(vout) val=4.17 fall=1 targ v(vout) val=0.83 fall=1
"}
C {devices/capa.sym} 580 90 0 0 {name=C1
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 120 0 0 {name=l6 lab=GND
}
