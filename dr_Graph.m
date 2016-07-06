%% This code was developed by Daniel Riofrio.

classdef dr_Graph

    properties
        % Total number of nodes
        Number_Nodes;
        % Since this representation is meant for a fully connected graph.
        % We use a (NxN) matrix, each index, i,j corresponds to a city.
        % Pheromone_Trails, are represented by a numeric value in the i,j
        % coordinate.
        Pheromone_Trails;
        % This matrix contains the total distance between two citys
        % acoordingly to its i and j indexes.
        Distance_Nodes;
        % This array has the x-y location of a node.
        Node_Location;
    end
    
    methods
        % This function initializes a graph for N cities (sites).
        % All pheromone trails are updated with 1s, and the distance
        % between cities are updated with 0s.
        function obj = dr_initialize_graph(obj, n)
            obj.Number_Nodes = n;
            obj.Pheromone_Trails = ones(n,n);
            for i=1:n
                obj.Pheromone_Trails(i,i) = 0;
            end
            obj.Distance_Nodes = zeros(n,n);
        end
    end
    
end

