bestOpt(4,200)
function newCap = bestOpt(year,capital)
options = optimoptions('patternsearch','MaxIterations',15,'Display','off');
switch year
    case 1
        choice = @(x)bestOpt(3,x*1.2)+bestOpt(2,(capital-x)*1.06);
        [~,newCap] = patternsearch(choice,0.1,[],[],[],[],0,capital);
        disp(newCap)
    case 2
        choice = @(x)bestOpt(year+2,x(1)*1.2)+bestOpt(6,x(2)*1.25)+bestOpt(year+1,(capital-x(1)-x(2))*1.06);
        [~,newCap] = patternsearch(choice,[0.3,0.3],[],[],[],[],[0,0],[capital,40]);
    case 3
        choice = @(x)bestOpt(year+2,x(1)*1.2)+bestOpt(6,x(2)*1.4)+bestOpt(year+1,(capital-x(1)-x(2))*1.06);
        [~,newCap] = patternsearch(choice,[0.2,0.5],[],[],[],[],[0,0],[capital,30],[],options);
    case 4
        choice = @(x)bestOpt(6,x*1.2)+bestOpt(5,(capital-x)*1.06);
        [~,newCap] = patternsearch(@(x)choice(-x),0.5,[],[],[],[],0,capital);
    case 5
        newCap = capital*1.06;
    otherwise
        newCap = capital;
end
end