# Create connections between R1 - R2 and R3
# R1 and R2
./koko -d frrlab_R1_1,lnkR1R2,10.10.10.1/29 -d frrlab_R2_1,lnkR2R1,10.10.10.2/29
# R2 and R3
./koko -d frrlab_R2_1,lnkR2R3,10.10.10.9/29 -d frrlab_R3_1,lnkR3R2,10.10.10.10/29
# R1 and R3
./koko -d frrlab_R1_1,lnkR1R3,10.10.10.10/29 -d frrlab_R3_1,lnkR3R1,10.10.10.18/29
