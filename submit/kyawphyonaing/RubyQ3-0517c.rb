#
#  Q3.rb
#  
#
#  Created by kyawphyo on 5/24/26 H.
#  Copyright 26 Heisei __MyCompanyName__. All rights reserved.
#

##魔方陣の大きさ
magic_square = 3

arr = Array.new(magic_square,0).map{Array.new(magic_square,0)}



x = magic_square - 1
y = magic_square / 2

for i in 1..(magic_square * magic_square)
    
    if arr[x][y] == 0
        arr[x][y] = "%3d"%i
        else
        x-=2
        y-=1
        arr[x][y] = "%3d"%i
    end
    
    x+=1
    y+=1
    
    if x == magic_square
        x = 0
        elsif y == magic_square
        y = 0
        else
    end
    
end

#display用に変更
change_square = magic_square - 1

#displayに表示
for i in 0..change_square
    for j in 0..change_square
        if j == change_square
            puts arr[j][change_square-i]
            else
            print arr[j][change_square-i]
        end
    end
end