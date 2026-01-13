Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
Wait(2000)

Sync()
while (true) do
  MovL(P1)
  MovL(P2)
  DO(7,ON)
  Wait(500)
  MovL(P1)
  MovL(InitialPose)

  MovL(P3)
  MovL(P4)
  DO(7,OFF)
  DO(8,ON)
  Wait(500)
  DO(8,OFF)
  MovL(P3)
  Wait(1000)

  Sync()
  if DI(9) == 1
  then
        MovL(P7)
        DO(7,ON)
        Wait(500)
        MovL(P3)
        MovL(P5)
        MovL(P6)
        DO(7,OFF)
        DO(8,ON)
        Wait(500)
        DO(8,OFF)
        Go(InitialPose)
       break
      else
        Go(InitialPose)
  end
end

Sync()



