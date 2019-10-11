function [bloc1Flag] = moveToGrid(j)
   x=0;
    switch j
        case 1
            goToBlockA();
        case 2
            goToBlockB();
        case 3
            goToBlockC();
        case 4
            goToBlockC();
        case 5
            goToBlockD();
        case 6
            goToBlockE();
        case 7
            goToBlockF();
        case 8
            goToBlockG();
        case 9
            goToBlockH();
        otherwise
                return ;
                        
    end
    x = 1;
    bloc1Flag = x;
end

