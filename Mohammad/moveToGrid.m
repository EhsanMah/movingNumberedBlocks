function [bloc1Flag] = moveToGrid(j)
    x=0;
    switch j
        case 1
            gridNum =1;
        case 2
            gridNum =2;
        case 3
            gridNum =3;
        case 4
            gridNum =4;
        case 5
            gridNum =5;
        case 6
            gridNum =6;
        case 7
            gridNum =7;
        case 8
            gridNum =8;
        case 9
            gridNum =9;
        otherwise
                gridNum = null;
                        
    end
    x = 1;
    bloc1Flag = x;
end

