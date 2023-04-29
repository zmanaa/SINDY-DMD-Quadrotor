function desired_state = traj_step(t, ~)

acc = zeros(2,1);
vel = zeros(2,1);

if t < 1
    pos = zeros(2,1);
elseif t > 1 && t < 3
    pos = [0.5; 0.0];
elseif t > 3 && t < 5
    pos = [0.5; 0.5];
else
    pos = [0;0.5];
end

desired_state = [pos; vel; acc];
end
