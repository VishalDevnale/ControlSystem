%running this script after simulink model execution
FrameRate = 5;
for i=1:(size(out.tout, 1)/FrameRate)
    DrawCartPendulumSys(out.states.Data(i*FrameRate,:));
end