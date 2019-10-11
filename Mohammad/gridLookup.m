function [gridNum] = gridLookup(ch,flipedrgb)


grid_output = [scanGrid1(flipedrgb) scanGrid2(flipedrgb) scanGrid3(flipedrgb) scanGrid4(flipedrgb) scanGrid5(flipedrgb) scanGrid6(flipedrgb) scanGrid7(flipedrgb) scanGrid8(flipedrgb) scanGrid8(flipedrgb) scanGrid9(flipedrgb)];



for n=1:length(grid_output)
    if ch == grid_output(n)
        gridNum = n;
        
    else
        break;
    end
        
%     j = grid_output(n);
%     
%     switch j
%         case '1'
%             gridNum =1;
%         case '2'
%             gridNum =2;
%         case '3'
%             gridNum =3;
%         case '4'
%             gridNum =4;
%         case '5'
%             gridNum =5;
%         case '6'
%             gridNum =6;
%         case '7'
%             gridNum =7;
%         case '8'
%             gridNum =8;
%         case '9'
%             gridNum =9;
%         otherwise
%                 gridNum = null;
%                         
%     end
    

end

