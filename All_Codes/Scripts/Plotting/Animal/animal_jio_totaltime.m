animaltotjiog11 = cdfplot(animaltotjio11);
ylim([0 1.2]);
xlim([0 7500]);
set(animaltotjiog11,'Color','y','linewidth',2);

hold on

animaltotjiog12 = cdfplot(animaltotjio12);
set(animaltotjiog12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animaltotjiog13 = cdfplot(animaltotjio13);
set(animaltotjiog13,'Color','k','linewidth',2);
hold on

animaltotjiog14 = cdfplot(animaltotjio14);
set(animaltotjiog14,'Color','r','linewidth',2);
hold on

animaltotjiog15 = cdfplot(animaltotjio15);
set(animaltotjiog15,'Color','b','linewidth',2);
hold on

animaltotjiog16 = cdfplot(animaltotjio16);
set(animaltotjiog16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - Jio')