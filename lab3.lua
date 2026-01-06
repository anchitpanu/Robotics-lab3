--lab3: move the box to points by using RelPoint

local arr = {{},{},{}}
Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
Wait(2000)

a = 0
b = 0

-- if else condition 
for i=1, 4, 1
do 
MovL(P1)
MovL(P2)
DO(7, ON)
Wait(500)
MovL(P1)

if i > 2 
then
    b = b + 30
    MovJ(RelPoint(P3, {a-30,b,0,0}))
    MovJ(RelPoint(P3, {a-30,b,-27,0}))
else
    MovJ(RelPoint(P3, {0,b,0,0}))
    MovJ(RelPoint(P3, {0,b,-27,0}))
    b = b - 30
end

DO(7, OFF)
DO(8, ON)
Wait(500)
Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
end

-- for loop condition
--row1
for i=1, 4, 1
do
MovL(P1)
MovL(P2)
DO(7, ON)
Wait(500)
MovL(P1)

MovJ(RelPoint(P3, {0,b,0,0}))
MovJ(RelPoint(P3, {0,b,-27,0}))
DO(7, OFF)
DO(8, ON)
Wait(500)

b = b-30

Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
end

b = 0

 --row2
for i=1, 2, 1
do 
MovL(P1)
MovL(P2)
DO(7, ON)
Wait(500)
MovL(P1)

MovJ(RelPoint(P3, {a-30,b,0,0}))
MovJ(RelPoint(P3, {a-30,b,-27,0}))
DO(7, OFF)
DO(8, ON)
Wait(500)

b = b-30

Go(InitialPose)
DO(7, OFF)
DO(8, OFF)
end


