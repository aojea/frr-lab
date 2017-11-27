# Create connections between R1 - R2 and R3
# R1 and R2
./koko -d frrlab_R1_1,lnkR1R2,10.10.10.1/29 -d frrlab_R2_1,lnkR2R1,10.10.10.2/29
# R2 and R3
./koko -d frrlab_R2_1,lnkR2R3,10.10.10.9/29 -d frrlab_R3_1,lnkR3R2,10.10.10.10/29
# R1 and R3
./koko -d frrlab_R1_1,lnkR1R3,10.10.10.17/29 -d frrlab_R3_1,lnkR3R1,10.10.10.18/29
# C1 and R1
./koko -d frrlab_C1_1,lnkC1R1,10.100.101.2/24 -d frrlab_R1_1,lnkR1C1,10.100.101.1/24
# C2 and R2
./koko -d frrlab_C2_1,lnkC2R2,10.100.102.2/24 -d frrlab_R2_1,lnkR2C2,10.100.102.1/24
# C3 and R3
./koko -d frrlab_C3_1,lnkC3R3,10.100.103.2/24 -d frrlab_R3_1,lnkR3C3,10.100.103.1/24
