v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -20 170 -20 {lab=#net1}
N -670 30 -670 70 {
lab=GND}
N -670 -60 -670 -30 {
lab=VDD}
N -530 30 -530 70 {
lab=GND}
N -530 -60 -530 -30 {
lab=clk}
C {devices/code_shown.sym} -100 290 0 0 {name=spice only_toplevel=false value=".include ../tr1um_uarttx_big_xschem.spice
.control
save all
tran 10n 700u
plot tx

.endc"}
C {devices/code.sym} -280 280 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/lab_pin.sym} -280 -20 0 0 {name=p61 sig_type=std_logic lab=clk}
C {tr1um_uarttx_big.sym} -10 0 0 0 {name=x7}
C {TR-1um_5_stdcell/CLKBUF_X4.sym} -260 -20 0 0 {name=x8}
C {TR-1um_5_stdcell/BUF_X4.sym} 190 -20 0 0 {name=x9}
C {devices/lab_pin.sym} 290 -20 2 0 {name=p60 sig_type=std_logic lab=tx}
C {devices/vsource.sym} -670 0 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -670 -60 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -670 70 0 0 {name=l3 lab=GND
}
C {devices/lab_pin.sym} -530 -60 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -530 0 0 0 {name=vclk value="PULSE(0 5 0n 0n 0n 100n 200n)" savecurrent=false}
C {devices/gnd.sym} -530 70 0 0 {name=l28 lab=GND
}
C {devices/gnd.sym} 10 60 0 0 {name=l2 lab=GND
}
C {devices/gnd.sym} -230 20 0 0 {name=l4 lab=GND
}
C {devices/gnd.sym} 220 20 0 0 {name=l5 lab=GND
}
C {devices/vdd.sym} -230 -60 0 0 {name=l6 lab=VDD}
C {devices/vdd.sym} -30 -60 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 220 -60 0 0 {name=l8 lab=VDD}
