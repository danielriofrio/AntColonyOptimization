%% This code was developed by Daniel Riofrio.

classdef dr_BiGraph

    properties
        % Total number of nodes
        Number_Tasks;
        Number_Agents;
        % We use a ((NTasks+NAgents)x(NTasks+NAgents)) matrix, each index,
        % i,j corresponds to an edge between tasks and agents.
        % Pheromone_Trails, are represented by a numeric value in the i,j
        % coordinate.
        Pheromone_Trails;
        % This matrix contains the cost of assigning a task to an agent 
        % acoordingly to its i and j indexes.
        Cost_Function;
        % These arrays have the x-y location of all nodes.
        Tasks_Location;
        Agent_Location;
    end
    
    methods
        % This function initializes a graph for N cities (sites).
        % All pheromone trails are updated with 1s, and the distance
        % between cities are updated with 0s.
        function obj = dr_initialize_bigraph(obj, Tasks, Agents, CostTaskAgent)
            obj.Number_Tasks = Tasks;
            obj.Number_Agents = Agents;
            n = Tasks + Agents;
            obj.Pheromone_Trails = ones(n,n);
            
            for i=1:n
                for j=1:n
                    if(i==j)
                        obj.Pheromone_Trails(i,j) = 0;
                    else
                        if(i<=Tasks && j<=Tasks)
                            obj.Pheromone_Trails(i,j) = 0;
                        end
                    end
                end
            end
            
            obj.Tasks_Location = zeros(Tasks, 2);
            obj.Agent_Location = zeros(Agents, 2);
            
            InitialVector = [5, 5];
            
            for i=1:Tasks
                obj.Tasks_Location(i, :) = InitialVector(1, :);
                InitialVector = InitialVector + [0, 10];
            end
            
            InitialVector = [50, 5];
            
            for j=1:Agents
                obj.Agent_Location(j, :) = InitialVector(1, :);
                InitialVector = InitialVector + [0, 10];
            end
            
            for i=1:size(CostTaskAgent,1)
                index_i = CostTaskAgent(i,1);
                index_j = CostTaskAgent(i,2);
                obj.Cost_Function(index_i, index_j) = CostTaskAgent(i,3);
                obj.Cost_Function(index_j, index_i) = 0.01;
            end
            
        end
    end
    
end

