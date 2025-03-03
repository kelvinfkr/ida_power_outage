
load('../data/Ida_profile.mat')
%%%define color map
temp_color = colormap(cubehelix([],0.68,-0.57,1.45,0.84,[0.13,1],[0.36,0.9]));
fig = figure;

%%%% visualize
for j = 1:4
    subplot(2,2,j)
for i = 1:64
hold on
color_scale = 257-min(max(round(rec1(i,7+j)/100*256),1),256);
%if j>2
%color_scale = max(min(color_scale +5 - round(rand()*10),256),1);
%end
mapshow(LA_county(i),'FaceColor',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
%mapshow(LA_county(i),'FaceColor',[1 1 .5],'FaceAlpha',temp_color(color_scale,:),'EdgeColor',[0.6,0.6,0.6]);
axis off
end
end
saveas(fig, '../results/fig1b.png');