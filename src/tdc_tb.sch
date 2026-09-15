v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -460 -260 -460 -220 {
lab=GND}
N -460 -350 -460 -320 {
lab=VDD}
N 280 -60 310 -60 {lab=VDD}
N 310 -110 310 -70 {lab=VDD}
N 310 -70 310 -60 {lab=VDD}
N 280 -40 310 -40 {lab=GND}
N 310 -40 310 90 {lab=GND}
N 280 -20 350 -20 {lab=SEROUT}
N -320 -260 -320 -220 {
lab=GND}
N -320 -350 -320 -320 {
lab=start}
N -110 -260 -110 -220 {
lab=GND}
N -110 -350 -110 -320 {
lab=stop}
N 100 -260 100 -220 {
lab=GND}
N 100 -350 100 -320 {
lab=load}
N 310 -260 310 -220 {
lab=GND}
N 310 -350 310 -320 {
lab=shiftclk}
C {tdc.sym} 130 -30 0 0 {name=x1}
C {devices/vsource.sym} -460 -290 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -460 -350 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -460 -220 0 0 {name=l3 lab=GND
}
C {devices/vdd.sym} 310 -110 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 310 90 0 0 {name=l4 lab=GND
}
C {devices/lab_pin.sym} 350 -20 2 0 {name=p1 sig_type=std_logic lab=SEROUT}
C {devices/code_shown.sym} -300 160 0 0 {name=spice only_toplevel=false value=".control

tran 50p 430n

* Measure actual START -> STOP interval
meas tran t_start WHEN v(START)=2.5 RISE=1
meas tran t_stop  WHEN v(STOP)=2.5 RISE=1
let t_delay = t_stop-t_start

echo ========================================
echo TDC FUNCTION TEST
echo ========================================
echo START crossing:
print t_start
echo STOP crossing:
print t_stop
echo START-to-STOP delay:
print t_delay

* First bit is already present on Q15 after parallel load.
* Sample halfway between SHIFTCLK rising edges.

meas tran b0  FIND v(SEROUT) AT=100n
meas tran b1  FIND v(SEROUT) AT=120n
meas tran b2  FIND v(SEROUT) AT=140n
meas tran b3  FIND v(SEROUT) AT=160n
meas tran b4  FIND v(SEROUT) AT=180n
meas tran b5  FIND v(SEROUT) AT=200n
meas tran b6  FIND v(SEROUT) AT=220n
meas tran b7  FIND v(SEROUT) AT=240n
meas tran b8  FIND v(SEROUT) AT=260n
meas tran b9  FIND v(SEROUT) AT=280n
meas tran b10 FIND v(SEROUT) AT=300n
meas tran b11 FIND v(SEROUT) AT=320n
meas tran b12 FIND v(SEROUT) AT=340n
meas tran b13 FIND v(SEROUT) AT=360n
meas tran b14 FIND v(SEROUT) AT=380n
meas tran b15 FIND v(SEROUT) AT=400n

let q0  = b0  > 2.5
let q1  = b1  > 2.5
let q2  = b2  > 2.5
let q3  = b3  > 2.5
let q4  = b4  > 2.5
let q5  = b5  > 2.5
let q6  = b6  > 2.5
let q7  = b7  > 2.5
let q8  = b8  > 2.5
let q9  = b9  > 2.5
let q10 = b10 > 2.5
let q11 = b11 > 2.5
let q12 = b12 > 2.5
let q13 = b13 > 2.5
let q14 = b14 > 2.5
let q15 = b15 > 2.5

echo ========================================
echo 16 SERIAL BITS:
print q0 q1 q2 q3 q4 q5 q6 q7
print q8 q9 q10 q11 q12 q13 q14 q15
echo ========================================

plot v(START) v(STOP) v(LOAD) v(SHIFTCLK) v(SEROUT) 
plot v(x1.dly0) v(x1.dly1) v(x1.dly2) v(x1.dly3) v(x1.q0)+0.1 v(x1.q1)+0.2 v(x1.q2)+0.3 v(x1.q3)+0.4 v(x1.s0)-0.4 v(x1.s1)-0.3 v(x1.s2)-0.2 v(x1.s3)-0.1
.endc

"}
C {devices/code.sym} -490 150 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/lab_pin.sym} -320 -350 0 0 {name=p6 sig_type=std_logic lab=start}
C {devices/vsource.sym} -320 -290 0 0 {name=vstart value="PULSE(0 5 20n 1n 1n 1u 2u)" savecurrent=false}
C {devices/gnd.sym} -320 -220 0 0 {name=l28 lab=GND
}
C {devices/lab_pin.sym} -20 -60 0 0 {name=p2 sig_type=std_logic lab=start}
C {devices/lab_pin.sym} -110 -350 0 0 {name=p3 sig_type=std_logic lab=stop}
C {devices/vsource.sym} -110 -290 0 0 {name=vstop value="PULSE(0 5 28n 1n 1n 1u 2u)
" savecurrent=false
lab=stop}
C {devices/gnd.sym} -110 -220 0 0 {name=l5 lab=GND
}
C {devices/lab_pin.sym} -20 -40 0 0 {name=p4 sig_type=std_logic lab=stop}
C {devices/lab_pin.sym} 100 -350 0 0 {name=p5 sig_type=std_logic lab=load}
C {devices/vsource.sym} 100 -290 0 0 {name=vload value="PULSE(0 5 60n 1n 1n 20n 2u)
" savecurrent=false}
C {devices/gnd.sym} 100 -220 0 0 {name=l6 lab=GND
}
C {devices/lab_pin.sym} 310 -350 0 0 {name=p7 sig_type=std_logic lab=shiftclk}
C {devices/vsource.sym} 310 -290 0 0 {name=vshiftclk value="PULSE(0 5 70n 1n 1n 10n 20n)
" savecurrent=false
lab=stop}
C {devices/gnd.sym} 310 -220 0 0 {name=l7 lab=GND
}
C {devices/lab_pin.sym} -20 0 0 0 {name=p8 sig_type=std_logic lab=shiftclk}
C {devices/lab_pin.sym} -20 -20 0 0 {name=p9 sig_type=std_logic lab=load}
