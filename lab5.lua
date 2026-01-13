Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
DO(16, OFF)
Wait(2000)

Sync()
while (true) do
  Sync()
  if DI(9) == 0
  then
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
        DO(16, ON)
        Wait(960)
        DO(16, OFF)
      else
        Go(InitialPose)
    end
    Sync()
    
  else
    MovL(P3)
    MovL(P5)
    DO(7,ON)
    Wait(500)
    MovL(P3)
    MovL(P6)
    MovL(P7)
    DO(7,OFF)
    DO(8,ON)
    Wait(500)
    DO(8,OFF)
    Go(InitialPose)

    DO(16, ON)
    Wait(980)
    DO(16, OFF)
    
  end
  Sync()
end
Sync()
