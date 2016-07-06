%% This code was developed by Daniel Riofrio.
% This function creates a random fully connected graph for N cities 
% (sites or nodes) inside a rectangle defined by P1 and P2 which are 
% supposed to be two 2D points. 
function [Graph] = dr_getRandom_Graph(n, P1, P2)
    Graph = dr_Graph;
    Graph = dr_initialize_graph(Graph, n);
    x_min = P1(1);
    y_min = P1(2);
    x_max = P2(1);
    y_max = P2(2);
    
    xs = x_min + (x_max-x_min).*rand(n,1);
    ys = y_min + (y_max-y_min).*rand(n,1);
    
    Graph.Node_Location = [xs,ys];
    
    for i=1:n
        for j=1:n
            if(i~=j)
                Graph.Distance_Nodes(i,j) = norm(Graph.Node_Location(j,:)-Graph.Node_Location(i,:));        
            end
        end
    end

end
