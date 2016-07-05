function dr_plotGraph(Graph, P1, P2)
    
    scatter(Graph.Node_Location(:,1), Graph.Node_Location(:,2),150, 'filled', ...
              'MarkerEdgeColor',[0 .7 .7],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5);
    hold on
    
    for i=1:Graph.Number_Nodes
        for j=(i+1):Graph.Number_Nodes
            x = [Graph.Node_Location(i,1), Graph.Node_Location(j,1)];
            y = [Graph.Node_Location(i,2), Graph.Node_Location(j,2)];
            plot(x,y,'Color',[0 .7 .7]);
            hold on
        end
    end
    
    a = (1:Graph.Number_Nodes)'; 
    b = num2str(a);
    c = cellstr(b);
    dx = 0.15; dy = 0.15;
    text(Graph.Node_Location(:,1)+dx, Graph.Node_Location(:,2)+dy, c, 'FontSize',14);
    hold on
    
    grid on
    xlim([P1(1), P2(1)]);
    ylim([P1(2), P2(2)]);
    
end