v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 200 280 300 {lab=Q}
N 200 170 240 170 {lab=A}
N 140 250 200 250 {lab=A}
N 200 170 200 250 {lab=A}
N 200 330 240 330 {lab=A}
N 200 250 200 330 {lab=A}
N 280 250 360 250 {lab=Q}
N 280 70 280 140 {lab=VDD}
N 280 490 280 560 {lab=VSS}
N 280 470 280 490 {lab=VSS}
N 280 360 280 410 {lab=#net1}
N 140 440 240 440 {lab=V}
N 280 170 350 170 {lab=VDD}
N 350 120 350 170 {lab=VDD}
N 280 120 350 120 {lab=VDD}
N 280 330 350 330 {lab=VSS}
N 350 330 350 390 {lab=VSS}
N 280 440 350 440 {lab=VSS}
N 350 440 350 500 {lab=VSS}
N 280 500 350 500 {lab=VSS}
N 350 390 350 440 {lab=VSS}
C {IP62LIB/MP.sym} 240 170 0 0 {name=XM1
model=PMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {IP62LIB/MN.sym} 240 330 0 0 {name=XM2
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/ipin.sym} 140 250 0 0 {name=p1 lab=A}
C {devices/opin.sym} 360 250 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 280 70 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 280 560 0 0 {name=p4 lab=VSS}
C {IP62LIB/MN.sym} 240 440 0 0 {name=XM3
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/ipin.sym} 140 440 0 0 {name=p5 lab=V}
