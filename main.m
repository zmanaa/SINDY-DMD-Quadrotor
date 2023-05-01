% Copyright April, 2023, All Rights Reserved.
% Code by Zeyad M. Manaa.
% For Paper, "DATA DRIVEN DISCOVERY OF QUADROTOR EQUATIONS OF MOTION USING
%             SPARSE IDENTIFICATION OF NONLINEAR DYNAMICS AND DYNAMIC MODE
%             DECOMPOSITION ALGORITHMS"
% by Z. M. Manaa. 

clear;
clc; 
close all;

%%% include utilis 
addpath("trajectories/")
addpath("utilis/")


%%% DEFS (choose plot and figures options)
PLOT_FLAG = 1;
PLOT_TYPE = 'col'; % all states in one figure
%PLOT_TYPE = 'ind'; % individual figures
FIGURE_EXTENSION = 'png';  % {'png', 'svg'}

%%% specify traj
TRAJ_TYPE = 'step'; %{'step', 'line', 'sine', 'diamond'}


%%% run simulation
[t_out, states_out, ctrl, ref_traj] = simulate_dynamics(TRAJ_TYPE);

%%% extract data to be used for SINDy algorithm
all_out = [states_out, ctrl, ref_traj];
t       = t_out;
writematrix(all_out,'DATA/all_out.csv') 
writematrix(t,'DATA/time.csv')


%%% plot scheme
if PLOT_FLAG
    plot_data(t_out, states_out, ref_traj, ctrl, PLOT_TYPE, TRAJ_TYPE, FIGURE_EXTENSION)
end