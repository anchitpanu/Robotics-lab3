--lab2: move the box to different points

Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
Wait(2000)

MovL(P1)
MovJ(RelPoint(P2,{0,0,27,0}))
DO(7,ON)
Wait(1000)
MovL(P1)
MovL(P3)
MovL(P4)
DO(7, OFF)
DO(8,ON)
Wait(1000)
DO(8,OFF)
MovL(P3)
MovL(InitialPose)

MovL(P1)
MovL(P2)





