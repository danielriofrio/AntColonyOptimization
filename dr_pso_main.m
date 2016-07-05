%% dr_pso_main
n = 10;
P1 = [0, 0];
P2 = [30, 30];
[RandomGraph] = dr_getRandom_Graph(n, P1, P2);

%% plot
figure, 
    dr_plotGraph(RandomGraph, P1, P2);
    title('Random Graph');
    xlabel('x-coordinates');
    ylabel('y-coordinates');
    
%% Generate bipartite graph / Tasks - Agents 

Tasks = 5; %1, 2, 3, 4, 5
Agents = 4; % 6, 7, 8, 9

CostTaskAgent = zeros(20, 3);
CostTaskAgent(1, :) = [1, 6, 10];
CostTaskAgent(2, :) = [1, 7, 7];
CostTaskAgent(3, :) = [1, 8, 5];
CostTaskAgent(4, :) = [1, 9, 2];
CostTaskAgent(5, :) = [2, 6, 8];
CostTaskAgent(6, :) = [2, 7, 4];
CostTaskAgent(7, :) = [2, 8, 3];
CostTaskAgent(8, :) = [2, 9, 1];
CostTaskAgent(9, :) = [3, 6, 9];
CostTaskAgent(10, :) = [3, 7, 15];
CostTaskAgent(11, :) = [3, 8, 11];
CostTaskAgent(12, :) = [3, 9, 9];
CostTaskAgent(13, :) = [4, 6, 5];
CostTaskAgent(14, :) = [4, 7, 3];
CostTaskAgent(15, :) = [4, 8, 2];
CostTaskAgent(16, :) = [4, 9, 8];
CostTaskAgent(17, :) = [5, 6, 4];
CostTaskAgent(18, :) = [5, 7, 2];
CostTaskAgent(19, :) = [5, 8, 8];
CostTaskAgent(20, :) = [5, 9, 4];

BiGraph = dr_BiGraph;
BiGraph = dr_initialize_bigraph(BiGraph, Tasks, Agents, CostTaskAgent);

%%
figure, 
dr_plotBiGraph(BiGraph);
