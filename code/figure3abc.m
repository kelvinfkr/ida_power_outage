load('../data/LA_county.mat')
fig = figure;

%%%define color map
temp_color = colormap(cubehelix([],0.1,0.4,2,1,[0.1,1],[0.29,0.92]));
subplot(1,3,1)
load('../data/risk_summary.mat')
%%%% visualize
for i = 1:64
hold on
color_scale = 257-min(max(risk_current(i),1),256);
mapshow(LA_county(i),'FaceColor',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
%mapshow(LA_county(i),'FaceColor',[1 1 .5],'FaceAlpha',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
end
axis off
subplot(1,3,2)
%%%% visualize
for i = 1:64
hold on
color_scale = 257- min(max(risk_245_future(i),1),256);
mapshow(LA_county(i),'FaceColor',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
%mapshow(LA_county(i),'FaceColor',[1 1 .5],'FaceAlpha',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
end
axis off
subplot(1,3,3)
%%%% visualize
for i = 1:64
hold on
color_scale = 257- min(max(risk_585_future(i),1),256);
mapshow(LA_county(i),'FaceColor',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
%mapshow(LA_county(i),'FaceColor',[1 1 .5],'FaceAlpha',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
end
axis off
saveas(fig, '../results/fig3abc.png');