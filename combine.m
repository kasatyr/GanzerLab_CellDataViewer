% creates new array with no repeating values in first row

% to do: support for original array with non-number values present

clear;close all;clc;
load('celldata.mat');
data = readmatrix("EXPORT DATA CELL CT - PRV9.csv");
dataNaNs = isnan(data);

for chck = 1:size(data,2)
    for it = 1:5
        if dataNaNs(it,chck) == 1
            data(it,chck) = 0;
        end
    end
end

slots = unique(data(1,:));
start = data(1,1) - 1;
toplot = zeros(3,numel(slots));
f = 1;
for i = 1:numel(slots)
    for k = 1:size(data,2)
        
        if data(1,k) == slots(i)
            
            toplot(1,f) = slots(i);
            toplot(2,f) = toplot(2,f) + data(2,k) + data(3,k);
            toplot(3,f) = toplot(3,f) + data(4,k) + data(5,k);
            
        end
       
    end
    if toplot(1,f) > 0
        f = f + 1;
    end
    
end

%cell_data.fixed.<name> = toplot

% use above to save into a struct