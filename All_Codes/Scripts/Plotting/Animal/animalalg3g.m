animalalg3gg11 = cdfplot(animalalg3g11);
ylim([0 1.2]);
xlim([0 6000]);
set(animalalg3gg11,'Color','y','linewidth',2);

hold on

animalalg3gg12 = cdfplot(animalalg3g12);
set(animalalg3gg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animalalg3gg13 = cdfplot(animalalg3g13);
set(animalalg3gg13,'Color','k','linewidth',2);
hold on

animalalg3gg14 = cdfplot(animalalg3g14);
set(animalalg3gg14,'Color','r','linewidth',2);
hold on

animalalg3gg15 = cdfplot(animalalg3g15);
set(animalalg3gg15,'Color','b','linewidth',2);
hold on

animalalg3gg16 = cdfplot(animalalg3g16);
set(animalalg3gg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - 3g')