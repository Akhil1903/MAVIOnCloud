animaltot3gg11 = cdfplot(animaltot3g11);
ylim([0 1.2]);
xlim([0 7500]);
set(animaltot3gg11,'Color','y','linewidth',2);

hold on

animaltot3gg12 = cdfplot(animaltot3g12);
set(animaltot3gg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animaltot3gg13 = cdfplot(animaltot3g13);
set(animaltot3gg13,'Color','k','linewidth',2);
hold on

animaltot3gg14 = cdfplot(animaltot3g14);
set(animaltot3gg14,'Color','r','linewidth',2);
hold on

animaltot3gg15 = cdfplot(animaltot3g15);
set(animaltot3gg15,'Color','b','linewidth',2);
hold on

animaltot3gg16 = cdfplot(animaltot3g16);
set(animaltot3gg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for animal Images - 3g')