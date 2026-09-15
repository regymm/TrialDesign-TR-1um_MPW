v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 100 -240 100 {lab=VDD}
N -280 150 -240 150 {lab=VSS}
N 930 320 990 320 {lab=RO2OUT}
N 620 60 620 180 {lab=rovin}
N 590 180 620 180 {lab=rovin}
N 220 10 980 10 {lab=VDD}
N 220 110 980 110 {lab=VSS}
N 980 10 1430 10 {lab=VDD}
N 1430 10 1430 60 {lab=VDD}
N 1410 60 1430 60 {lab=VDD}
N 980 110 1110 110 {lab=VSS}
N 1110 110 1110 130 {lab=VSS}
N 1110 130 1430 130 {lab=VSS}
N 1430 100 1430 130 {lab=VSS}
N 1410 100 1430 100 {lab=VSS}
N 1410 80 1450 80 {lab=#net1}
N 1450 -10 1450 80 {lab=#net1}
N 130 -10 1450 -10 {lab=#net1}
N 130 -10 130 60 {lab=#net1}
N 130 60 220 60 {lab=#net1}
N 620 260 620 280 {lab=VDD}
N 620 260 860 260 {lab=VDD}
N 860 260 860 280 {lab=VDD}
N 740 260 740 280 {lab=VDD}
N 620 360 620 380 {lab=VSS}
N 620 380 860 380 {lab=VSS}
N 860 360 860 380 {lab=VSS}
N 740 360 740 380 {lab=VSS}
N 580 260 620 260 {lab=VDD}
N 580 380 620 380 {lab=VSS}
N 1030 60 1030 80 {lab=#net2}
N 1020 60 1030 60 {lab=#net2}
N 1030 80 1110 80 {lab=#net2}
C {devices/iopin.sym} -280 100 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} -280 150 2 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} -240 150 2 0 {name=p77 sig_type=std_logic lab=VSS}
C {TR-1um_5_stdcell/BUF_X1.sym} 590 320 0 0 {name=x12}
C {TR-1um_5_stdcell/BUF_X4.sym} 710 320 0 0 {name=x13}
C {TR-1um_5_stdcell/BUF_X16.sym} 830 320 0 0 {name=x14}
C {devices/opin.sym} 990 320 0 0 {name=p16 lab=RO2OUT}
C {devices/lab_pin.sym} 570 320 0 0 {name=p2 sig_type=std_logic lab=rovin}
C {devices/ipin.sym} 1110 60 0 0 {name=p10 lab=RO2EN}
C {inverter_regymm.sym} 170 60 0 0 {name=x1}
C {inverter_regymm.sym} 250 60 0 0 {name=x2}
C {inverter_regymm.sym} 330 60 0 0 {name=x3}
C {inverter_regymm.sym} 410 60 0 0 {name=x4}
C {inverter_regymm.sym} 490 60 0 0 {name=x5}
C {inverter_regymm.sym} 570 60 0 0 {name=x6}
C {inverter_regymm.sym} 650 60 0 0 {name=x7}
C {inverter_regymm.sym} 730 60 0 0 {name=x8}
C {inverter_regymm.sym} 810 60 0 0 {name=x9}
C {inverter_regymm.sym} 890 60 0 0 {name=x10}
C {devices/lab_pin.sym} -240 100 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 590 180 0 0 {name=p3 sig_type=std_logic lab=rovin}
C {devices/lab_pin.sym} 220 10 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 220 110 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {nand2_regymm.sym} 1260 80 0 0 {name=x11}
C {devices/lab_pin.sym} 580 260 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 580 380 0 0 {name=p11 sig_type=std_logic lab=VSS}
