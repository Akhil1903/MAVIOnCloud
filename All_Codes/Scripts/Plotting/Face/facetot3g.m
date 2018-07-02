ftot3gg4 = cdfplot(ftot3g4);
ylim([0 1.2]);
xlim([0 8000]);
set(ftot3gg4,'Color','y','linewidth',2);

hold on

ftot3gg5 = cdfplot(ftot3g5);
set(ftot3gg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

ftot3gg6 = cdfplot(ftot3g6);
set(ftot3gg6,'Color','k','linewidth',2);

hold on

ftot3gg1 = cdfplot(ftot3g1);
set(ftot3gg1,'Color','r','linewidth',2);

hold on

ftot3gg2 = cdfplot(ftot3g2);
set(ftot3gg2,'Color','b','linewidth',2);

hold on

ftot3gg3 = cdfplot(ftot3g3);
set(ftot3gg3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for Face Images - 3G')