v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 100 -180 200 {lab=Y}
N -180 150 -100 150 {lab=Y}
N -180 260 -180 330 {lab=#net1}
N -180 -120 -180 -50 {lab=VDD}
N -180 -20 -120 -20 {lab=VDD}
N -120 -60 -120 -20 {lab=VDD}
N -180 -60 -120 -60 {lab=VDD}
N -180 230 -110 230 {lab=VSS}
N -110 230 -110 290 {lab=VSS}
N -40 70 20 70 {lab=VDD}
N 20 30 20 70 {lab=VDD}
N -40 30 20 30 {lab=VDD}
N -40 30 -40 40 {lab=VDD}
N -40 10 -40 30 {lab=VDD}
N -40 -120 -40 -80 {lab=VDD}
N -180 -120 -40 -120 {lab=VDD}
N -280 -120 -180 -120 {lab=VDD}
N -100 150 -40 150 {lab=Y}
N -40 100 -40 150 {lab=Y}
N -180 360 -110 360 {lab=VSS}
N -110 360 -110 420 {lab=VSS}
N -180 420 -110 420 {lab=VSS}
N -180 390 -180 450 {lab=VSS}
N -40 -80 -40 10 {lab=VDD}
N -180 10 -180 100 {lab=Y}
N -270 -20 -220 -20 {lab=A}
N -270 -20 -270 230 {lab=A}
N -270 230 -220 230 {lab=A}
N -340 70 -80 70 {lab=B}
N -340 70 -340 360 {lab=B}
N -340 360 -220 360 {lab=B}
N -330 -20 -270 -20 {lab=A}
N -380 70 -340 70 {lab=B}
N -40 150 90 150 {lab=Y}
N -180 450 -180 540 {lab=VSS}
N -180 540 -140 540 {lab=VSS}
N -110 290 -110 360 {lab=VSS}
C {IP62LIB/MP.sym} -220 -20 0 0 {name=XM1
model=PMOS
w=8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {IP62LIB/MN.sym} -220 230 0 0 {name=XM2
model=NMOS
w=8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/ipin.sym} -330 -20 0 0 {name=p1 lab=A}
C {devices/opin.sym} 90 150 0 0 {name=p2 lab=Y}
C {devices/iopin.sym} -280 -120 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} -140 540 0 0 {name=p4 lab=VSS}
C {IP62LIB/MP.sym} -80 70 0 0 {name=XM3
model=PMOS
w=8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {IP62LIB/MN.sym} -220 360 0 0 {name=XM4
model=NMOS
w=8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/ipin.sym} -380 70 0 0 {name=p5 lab=B}
