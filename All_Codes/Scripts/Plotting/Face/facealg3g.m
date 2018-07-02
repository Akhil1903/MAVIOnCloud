falg3gg4 = cdfplot(falg3g4);
ylim([0 1.2]);
xlim([0 2500]);
set(falg3gg4,'Color','y','linewidth',2);

hold on

falg3gg5 = cdfplot(falg3g5);
set(falg3gg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

falg3gg6 = cdfplot(falg3g6);
set(falg3gg6,'Color','k','linewidth',2);

hold on

falg3gg1 = cdfplot(falg3g1);
set(falg3gg1,'Color','r','linewidth',2);

hold on

falg3gg2 = cdfplot(falg3g2);
set(falg3gg2,'Color','b','linewidth',2);

hold on

falg3gg3 = cdfplot(falg3g3);
set(falg3gg3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for Face Images - 3G')