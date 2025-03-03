load('../data/real_case_validate.mat')
fig = figure;

subplot(2,1,1)
plot(official_ida(1,:),official_ida(2,:),'b','linewidth',2)
hold on
plot(simulation_ida(1,:),simulation_ida(2,:),'r','linewidth',2)
fill([simulation_ida(1,:) simulation_ida(1,26:-1:1)],[simulation_ida(4,:) simulation_ida(3,26:-1:1)],'r','facealpha',0.3,'edgecolor','none')
grid on
xlim([0,25])
ylim([50,100])

subplot(2,1,2)
xlim([0,25])
ylim([50,100])
plot(official_laura(1,:),official_laura(2,:),'b','linewidth',2)
hold on
plot(simulation_laura(1,:),simulation_laura(2,:),'r','linewidth',2)
fill([simulation_laura(1,:) simulation_laura(1,26:-1:1)],[simulation_laura(4,:) simulation_laura(3,26:-1:1)],'r','facealpha',0.3,'edgecolor','none')
grid on

saveas(fig, '../results/fig1.png');