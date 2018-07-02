mixedalg3gg11 = cdfplot(mixedalg3g11);
ylim([0 1.2]);
xlim([0 6000]);
set(mixedalg3gg11,'Color','y','linewidth',2);

hold on

mixedalg3gg12 = cdfplot(mixedalg3g12);
set(mixedalg3gg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

mixedalg3gg13 = cdfplot(mixedalg3g13);
set(mixedalg3gg13,'Color','k','linewidth',2);
hold on

mixedalg3gg14 = cdfplot(mixedalg3g14);
set(mixedalg3gg14,'Color','r','linewidth',2);
hold on

mixedalg3gg15 = cdfplot(mixedalg3g15);
set(mixedalg3gg15,'Color','b','linewidth',2);
hold on

mixedalg3gg16 = cdfplot(mixedalg3g16);
set(mixedalg3gg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for mixed Images - 3g')