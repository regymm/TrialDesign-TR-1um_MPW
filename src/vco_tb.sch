v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 170 -50 210 {
lab=GND}
N -50 80 -50 110 {
lab=VDD}
N 90 170 90 210 {
lab=GND}
N 90 80 90 110 {
lab=vctrl}
N 550 120 580 120 {lab=VDD}
N 550 140 580 140 {lab=GND}
N 580 70 580 90 {
lab=VDD}
N 580 90 580 120 {lab=VDD}
N 580 140 580 170 {lab=GND}
N 580 170 580 190 {lab=GND}
N 580 190 580 200 {lab=GND}
N 550 160 620 160 {lab=vout}
C {devices/vsource.sym} -50 140 0 0 {name=Vdd value=5.0 savecurrent=false}
C {devices/vdd.sym} -50 80 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -50 210 0 0 {name=l3 lab=GND
}
C {devices/code_shown.sym} 200 360 0 0 {name=spice only_toplevel=false value=".param VC=1.0

.control
let npts = 25
let vc_array = vector(npts)
let freq_array = vector(npts)
let duty_array = vector(npts)

let i = 0
while i < npts
    let vset = 0.0 + i*0.2
    alterparam VC = $&vset
    reset
    tran 50p 500n

    meas tran t1 WHEN v(vout)=2.5 RISE=10
    meas tran t2 WHEN v(vout)=2.5 RISE=11
    meas tran t3 WHEN v(vout)=2.5 FALL=11

    let period = t2-t1
    let freq = 1/period
    let duty = (t3-t1)/period*100

    let vc_array[i] = vset
    let freq_array[i] = freq
    let duty_array[i] = duty

    echo VCTRL=$&vset FREQ=$&freq DUTY=$&duty
    let i = i+1
end

setplot const
plot freq_array vs vc_array
plot duty_array vs vc_array

* VCTRL = 1.5V waveform
alterparam VC = 1.5
reset
tran 50p 200n
plot v(x13.vin) v(vout) title 'VCTRL = 1.5V'

* VCTRL = 2.5V waveform
alterparam VC = 2.5
reset
tran 50p 200n
plot v(x13.vin) v(vout) title 'VCTRL = 2.5V'

* VCTRL = 5.0V waveform
alterparam VC = 5.0
reset
tran 50p 200n
plot v(x13.vin) v(vout) title 'VCTRL = 5.0V'

.endc

"}
C {devices/code.sym} -90 410 0 0 {name=TR-1um_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/ip62_models"
spice_ignore=false}
C {devices/lab_pin.sym} 620 160 2 0 {name=p3 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 90 80 0 0 {name=p6 sig_type=std_logic lab=vctrl}
C {devices/vsource.sym} 90 140 0 0 {name=vin1 value="\{VC\}" savecurrent=false}
C {devices/gnd.sym} 90 210 0 0 {name=l28 lab=GND
}
C {vco.sym} 400 140 0 0 {name=x13}
C {devices/lab_pin.sym} 250 120 0 0 {name=p5 sig_type=std_logic lab=vctrl}
C {devices/gnd.sym} 580 200 0 0 {name=l31 lab=GND
}
C {devices/vdd.sym} 580 70 0 0 {name=l32 lab=VDD}
