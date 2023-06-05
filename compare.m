%__________________________________________

% fobj = @YourCostFunction 设定适应度函数

% dim = number of your variables 设定维度

% Max_iteration = maximum number of generations 设定最大迭代次数

% SearchAgents_no = number of search agents 种群数量

% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n 变量下边界

% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n 变量上边界

% If all the variables have equal lower bound you can just

% define lb and ub as two single number numbers

% To run SSA: [Best_pos,Best_score,curve]=SSA(pop,Max_iter,lb,ub,dim,fobj)

%__________________________________________

clear all

clc

rng('default');

SearchAgents_no=30; % Number of search agents 种群数量

Function_name='F6'; % Name of the test function that can be from F1 to F23 (Table 1,2,3 in the paper) 设定适应度函数

Max_iteration=500; % Maximum numbef of iterations 设定最大迭代次数

% Load details of the selected benchmark function

[lb,ub,dim,fobj]=Get_Functions_details(Function_name); %设定边界以及优化函数


%% 鲸鱼算法

[Leader_score,Leader_pos,WOAcurve]=WOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj); %开始优化

%% 遗传算法

[Best_score,Best_pos,GAcurve]=GA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj); %开始优化