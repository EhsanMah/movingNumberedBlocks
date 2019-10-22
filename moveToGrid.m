function [bloc1Flag] = moveToGrid(j)
   
    switch j
        case 1
            goToBlockA();
        case 2
            goToBlockB();
        case 3
            goToBlockC();
        case 4
            goToBlockD();
        case 5
            goToBlockE();
        case 6
            goToBlockF();
        case 7
            goToBlockG();
        case 8
            goToBlockH();
        case 9
            goToBlockI();
        otherwise
                return ;
                        
    end
    
%     if 0<j && j<10
%     bloc1Flag = 1;
%     end
    
end

