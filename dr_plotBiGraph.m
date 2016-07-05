function dr_plotBiGraph(BiGraph)
    
    scatter(BiGraph.Tasks_Location(:,1), BiGraph.Tasks_Location(:,2),150, 'filled', ...
              'MarkerEdgeColor',[0 .7 .7],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5);
    hold on
    
    scatter(BiGraph.Agent_Location(:,1), BiGraph.Agent_Location(:,2),150, 'filled', ...
              'MarkerEdgeColor',[0.1 .4 .4],...
              'MarkerFaceColor',[0.1 .4 .4],...
              'LineWidth',1.5);
    hold on
        
    for i=1:BiGraph.Number_Tasks
        for j=1:BiGraph.Number_Agents
            x = [BiGraph.Tasks_Location(i,1), BiGraph.Agent_Location(j,1)];
            y = [BiGraph.Tasks_Location(i,2), BiGraph.Agent_Location(j,2)];
            plot(x,y,'Color',[0 .7 .7]);
            hold on
        end
    end
    
    a = (1:BiGraph.Number_Tasks)'; 
    b = num2str(a);
    c = cellstr(b);
    t = {'T'};
    cc = strcat(t, c);
    dx = 0.15; dy = 0.15;
    text(BiGraph.Tasks_Location(:,1)+dx, BiGraph.Tasks_Location(:,2)+dy, cc, 'FontSize',14);
    hold on
    
    a = (1:BiGraph.Number_Agents)'; 
    b = num2str(a);
    c = cellstr(b);
    t = {'A'};
    cc = strcat(t, c);
    dx = 0.15; dy = 0.15;
    text(BiGraph.Agent_Location(:,1)+dx, BiGraph.Agent_Location(:,2)+dy, cc, 'FontSize',14);
    hold on
    
    Locations = [BiGraph.Agent_Location;BiGraph.Tasks_Location];
    
    grid on
    xlim([min(Locations(:,1))-5, max(Locations(:,1))+5]);
    ylim([min(Locations(:,2))-5, max(Locations(:,2))+5]);
    
end