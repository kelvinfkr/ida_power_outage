load('../data/orleans_hist.mat')
fig = figure;

b = bar([orleans_hist(2,:);orleans_hist(4,:);orleans_hist(3,:)]',1,'EdgeColor','none','FaceColor','flat');
set(gca,'xTickLabel',{'0-60','60-120','120-180','180-240','240-300','300-360','>360'})

    %b(2).CData = [0 0.4470 0.7410];
    %b(3).CData = [0.9290 0.6940 0.1250];
    %b(1).CData = [0.4940 0.1840 0.5560];

hold on
ylim([0,100])
plot((1:7)-0.25,cumsum(orleans_hist(2,:)),'color',[0.4940 0.1840 0.5560])
plot((1:7),cumsum(orleans_hist(4,:)),'color',[0 0.4470 0.7410])
plot((1:7)+0.25,cumsum(orleans_hist(3,:)),'color',[0.9290 0.6940 0.1250])
saveas(fig, '../results/fig3d.png');