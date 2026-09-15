v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -20 1050 -20 {lab=#net1}
N 1050 -20 1050 40 {lab=#net1}
N 1050 40 1070 40 {lab=#net1}
N 1050 80 1070 80 {lab=ROEN}
N 1050 80 1050 130 {lab=ROEN}
N 950 190 1050 190 {lab=ROEN}
N 1050 180 1050 190 {lab=ROEN}
N 930 320 990 320 {lab=ROOUT}
N 400 90 410 90 {lab=rovin}
N 410 -20 410 90 {lab=rovin}
N -140 -90 1120 -90 {lab=VDD}
N 1120 -60 1120 -0 {lab=VDD}
N 1120 -90 1120 -60 {lab=VDD}
N 940 -90 940 -60 {lab=VDD}
N 820 -90 820 -60 {lab=VDD}
N 700 -90 700 -60 {lab=VDD}
N 580 -90 580 -60 {lab=VDD}
N 460 -90 460 -60 {lab=VDD}
N 340 -90 340 -60 {lab=VDD}
N 220 -90 220 -60 {lab=VDD}
N 100 -90 100 -60 {lab=VDD}
N -20 -90 -20 -60 {lab=VDD}
N -140 -90 -140 -60 {lab=VDD}
N -290 -90 -140 -90 {lab=VDD}
N 1220 60 1230 60 {lab=#net2}
N 1230 60 1240 60 {lab=#net2}
N 1240 -120 1240 60 {lab=#net2}
N -210 -120 1240 -120 {lab=#net2}
N -210 -120 -210 -20 {lab=#net2}
N -210 -20 -190 -20 {lab=#net2}
N -290 50 -140 50 {lab=VSS}
N -140 20 -140 50 {lab=VSS}
N -140 50 940 50 {lab=VSS}
N 940 20 940 50 {lab=VSS}
N 820 20 820 50 {lab=VSS}
N 700 20 700 50 {lab=VSS}
N 580 20 580 50 {lab=VSS}
N 460 20 460 50 {lab=VSS}
N 340 20 340 50 {lab=VSS}
N 220 20 220 50 {lab=VSS}
N 100 20 100 50 {lab=VSS}
N -20 20 -20 50 {lab=VSS}
N 940 150 1120 150 {lab=VSS}
N 940 50 940 120 {lab=VSS}
N 1050 130 1050 180 {lab=ROEN}
N 940 120 940 150 {lab=VSS}
N 1120 120 1120 150 {lab=VSS}
N 860 250 860 280 {lab=VDD}
N 620 250 860 250 {lab=VDD}
N 620 250 620 280 {lab=VDD}
N 740 250 740 280 {lab=VDD}
N 620 360 620 390 {lab=VSS}
N 620 390 860 390 {lab=VSS}
N 860 360 860 390 {lab=VSS}
N 740 360 740 390 {lab=VSS}
N 530 250 620 250 {lab=VDD}
N 530 390 620 390 {lab=VSS}
N -220 250 530 250 {lab=VDD}
N -250 250 -220 250 {lab=VDD}
N -250 -90 -250 250 {lab=VDD}
N -280 390 530 390 {lab=VSS}
N -280 50 -280 390 {lab=VSS}
C {TR-1um_5_stdcell/INV_X1.sym} 70 -20 0 0 {name=x1}
C {TR-1um_5_stdcell/INV_X1.sym} 190 -20 0 0 {name=x2}
C {TR-1um_5_stdcell/INV_X1.sym} 310 -20 0 0 {name=x3}
C {TR-1um_5_stdcell/INV_X1.sym} 430 -20 0 0 {name=x4}
C {TR-1um_5_stdcell/INV_X1.sym} 550 -20 0 0 {name=x5}
C {TR-1um_5_stdcell/INV_X1.sym} 670 -20 0 0 {name=x6}
C {TR-1um_5_stdcell/INV_X1.sym} 790 -20 0 0 {name=x7}
C {TR-1um_5_stdcell/INV_X1.sym} 910 -20 0 0 {name=x8}
C {TR-1um_5_stdcell/NAND2.sym} 1090 60 0 0 {name=x9}
C {TR-1um_5_stdcell/INV_X1.sym} -170 -20 0 0 {name=x10}
C {TR-1um_5_stdcell/INV_X1.sym} -50 -20 0 0 {name=x11}
C {TR-1um_5_stdcell/BUF_X1.sym} 590 320 0 0 {name=x12}
C {TR-1um_5_stdcell/BUF_X4.sym} 710 320 0 0 {name=x13}
C {TR-1um_5_stdcell/BUF_X16.sym} 830 320 0 0 {name=x14}
C {devices/ipin.sym} 950 190 0 0 {name=p10 lab=ROEN}
C {devices/opin.sym} 990 320 0 0 {name=p16 lab=ROOUT}
C {devices/lab_pin.sym} 570 320 0 0 {name=p2 sig_type=std_logic lab=rovin}
C {devices/lab_pin.sym} 400 90 0 0 {name=p1 sig_type=std_logic lab=rovin}
C {devices/iopin.sym} -290 -90 0 1 {name=p17 lab=VDD}
C {devices/iopin.sym} -290 50 2 0 {name=p6 lab=VSS}
