function [gridNum] = gridLookup(ch,flipedrgb)

num = 0;
grid_output = [scanGrid1(flipedrgb) scanGrid2(flipedrgb) scanGrid3(flipedrgb) scanGrid4(flipedrgb) scanGrid5(flipedrgb) scanGrid6(flipedrgb) scanGrid7(flipedrgb) scanGrid8(flipedrgb) scanGrid9(flipedrgb)];



for n=1:length(grid_output)
    if ch == grid_output(n)
        num = n;
         break;
    end
        
end

gridNum = num
end

