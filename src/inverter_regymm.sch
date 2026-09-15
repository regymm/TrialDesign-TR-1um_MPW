v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 30 40 130 {lab=Q}
N -40 0 -0 0 {lab=A}
N -100 80 -40 80 {lab=A}
N -40 0 -40 80 {lab=A}
N -40 160 0 160 {lab=A}
N -40 80 -40 160 {lab=A}
N 40 80 120 80 {lab=Q}
N 40 190 40 260 {lab=VSS}
N 40 -100 40 -30 {lab=VDD}
N 40 0 100 0 {lab=VDD}
N 100 -40 100 -0 {lab=VDD}
N 40 -40 100 -40 {lab=VDD}
N 40 160 110 160 {lab=VSS}
N 110 160 110 220 {lab=VSS}
N 40 220 110 220 {lab=VSS}
C {IP62LIB/MP.sym} 0 0 0 0 {name=XM1
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
C {IP62LIB/MN.sym} 0 160 0 0 {name=XM2
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
C {devices/ipin.sym} -100 80 0 0 {name=p1 lab=A}
C {devices/opin.sym} 120 80 0 0 {name=p2 lab=Q}
C {devices/iopin.sym} 40 -100 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} 40 260 0 0 {name=p4 lab=VSS}
