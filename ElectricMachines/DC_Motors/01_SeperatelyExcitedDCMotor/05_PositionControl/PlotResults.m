close all;

numplot = 3;            % Number of Subplots
factor = 1000;          % to convert to milli

figure;
%set(figure, 'position', [0 1000 2048/3 600]);
    subplot(numplot,1,1)
        plot(out.i_f,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('If (A)','Location','SouthEast')
        ylabel('Field Current: If (Amp)');
        xlabel('time (s)');

    subplot(numplot,1,2)
        plot(out.i_a,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Current ','of System ');
        title(plottitle)
        legend('Ia (A)','Location','SouthEast')
        ylabel('Armature Current: Ia (Amp)');
        xlabel('time (s)');

    subplot(numplot,1,3)
        plot(out.omega,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot speed ','of System ');
        title(plottitle)
        legend('w (rad/s)','Location','SouthEast')
        ylabel('Omega (rad/sec)');
        xlabel('time (s)');
findfigs

numplot = 2;            % Number of Subplots

figure;
    subplot(numplot,1,1)
        plot(out.TE,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Electric Torque ','of System ');
        title(plottitle)
        legend('TE (Nm)','Location','SouthEast')
        ylabel('Electric Torque (Nm)');
        xlabel('time (s)');
    
    subplot(numplot,1,2)
        plot(out.TL,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Load Torque ','of System ');
        title(plottitle)
        legend('TL (Nm)','Location','SouthEast')
        ylabel('Load Torque (Nm)');
        xlabel('time (s)');

findfigs

numplot = 3;            % Number of Subplots

figure;
    subplot(numplot,1,1)
        plot(out.ElectricEnergy,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Electric Energy ','of System ');
        title(plottitle)
        legend('Electric Energy (kJ)','Location','SouthEast')
        ylabel('Electric Energy (kJ)');
        xlabel('time (s)');

    subplot(numplot,1,2)
        plot(out.MechanicalEnergy,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Mechanical Energy ','of System ');
        title(plottitle)
        legend('Mechanical Energy (kJ)','Location','SouthEast')
        ylabel('Mechanical Energy (kJ)');
        xlabel('time (s)');

    subplot(numplot,1,3)
        plot(out.LostEnergy,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Lost Energy ','of System ');
        title(plottitle)
        legend('Lost Energy (kJ)','Location','SouthEast')
        ylabel('Lost Energy (kJ)');
        xlabel('time (s)');
findfigs

numplot = 3;            % Number of Subplots

figure;
    subplot(numplot,1,1)
        plot(out.ElectricPower,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Electric Power ','of System ');
        title(plottitle)
        legend('Electric Power (kW)','Location','SouthEast')
        ylabel('Electric Power (kW)');
        xlabel('time (s)');

    subplot(numplot,1,2)
        plot(out.MechanicalPower,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Mechanical Power ','of System ');
        title(plottitle)
        legend('Mechanical Power (kW)','Location','SouthEast')
        ylabel('Mechanical Power (kW)');
        xlabel('time (s)');

    subplot(numplot,1,3)
        plot(out.LostPower,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot Lost Power ','of System ');
        title(plottitle)
        legend('Lost Power (kW)','Location','SouthEast')
        ylabel('Lost Power (kW)');
        xlabel('time (s)');
findfigs

numplot = 1;            % Number of Subplots

figure;
    subplot(numplot,1,1)
        plot(out.theta,'LineWidth',2)
        grid on
        plottitle = sprintf('%s%s', 'Plot theta (position) ','of System ');
        title(plottitle)
        legend('theta (rad)','Location','SouthEast')
        ylabel('theta (rad)');
        xlabel('time (s)');
findfigs


%% Steady state values

ss_i_f = out.i_f.data(size(out.i_f.data,1));
ss_i_a = out.i_a.data(size(out.i_a.data,1));
ss_TE = out.TE.data(size(out.TE.data,1));
ss_TL = out.TL.data(size(out.TL.data,1));
ss_omega = out.omega.data(size(out.omega.data,1));

max_i_f = max(out.i_f.data);
max_i_a = max(out.i_a.data);
max_TE = max(out.TE.data);
max_TL = max(out.TL.data);
max_omega = max(out.omega.data);

Comment_subtitle = 'Steady state values:';
Comment_ss_i_f = ['Field current (i_f): ',num2str(ss_i_f), ' amp'];
Comment_ss_i_a = ['Armature current (i_a): ',num2str(ss_i_a), ' amp'];
Comment_ss_TE = ['Electric Torque (TE): ',num2str(ss_TE), ' Nm'];
Comment_ss_TL = ['Load Torque (TL): ',num2str(ss_TL), ' Nm'];
Comment_ss_omega = ['Angular Velcodity (omega): ',num2str(ss_omega), ' rad/sec'];

% Msg box of comments
MSGBOX = msgbox({Comment_subtitle,Comment_ss_i_f, Comment_ss_i_a, Comment_ss_TE, Comment_ss_TL, Comment_ss_omega},'Comments');
set(MSGBOX, 'position', [50 50 450 150]);
ah = get( MSGBOX, 'CurrentAxes');
ch = get( ah, 'Children');
set( ch, 'FontSize', 15); 

Comment_subtitle = 'Maximum/Peak values:';
Comment_max_i_f = ['Field current (i_f): ',num2str(max_i_f), ' amp'];
Comment_max_i_a = ['Armature current (i_a): ',num2str(max_i_a), ' amp'];
Comment_max_TE = ['Electric Torque (TE): ',num2str(max_TE), ' Nm'];
Comment_max_TL = ['Load Torque (TL): ',num2str(max_TL), ' Nm'];
Comment_max_omega = ['Angular Velcodity (omega): ',num2str(max_omega), ' rad/sec'];

% Msg box of comments
MSGBOX = msgbox({Comment_subtitle,Comment_max_i_f, Comment_max_i_a, Comment_max_TE, Comment_max_TL, Comment_max_omega},'Comments');
set(MSGBOX, 'position', [500 50 450 150]);
ah = get( MSGBOX, 'CurrentAxes');
ch = get( ah, 'Children');
set( ch, 'FontSize', 15); 
