% Copyright April, 2023, All Rights Reserved.
% Code by Zeyad M. Manaa.
% For Paper, "DATA DRIVEN DISCOVERY OF QUADROTOR EQUATIONS OF MOTION USING
%             SPARSE IDENTIFICATION OF NONLINEAR DYNAMICS AND DYNAMIC MODE
%             DECOMPOSITION ALGORITHMS"
% by Z. M. Manaa and M. R. Elbalshy. 

clear;
clc; 
close all;

%%% include utilis 
addpath("trajectories/")
addpath("utilis/")


%%% DEFS
PLOT_FLAG = 1;


%%% specify traj
traj_type = 'diamond'; %{'step', 'line', 'sine', 'diamond'}


%%% run simulation
[t_out, states_out, ctrl, ref_traj] = simulate_dynamics(traj_type);


%%% plot scheme
if PLOT_FLAG
    figure
    plot(t_out, states_out(:,1)); % place holder
    hold on
    plot(t_out, ref_traj(:,1));
    grid
    figure
    plot(t_out, states_out(:,2)); % place holder
    hold on
    plot(t_out, ref_traj(:,2));
    grid
    figure
    plot(states_out(:,1), states_out(:,2)); % place holder
    hold on
    plot(ref_traj(:,1), ref_traj(:,2));
    axis equal
    grid
end