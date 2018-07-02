animaltotairtelg11 = cdfplot(animaltotairtel11);
ylim([0 1.2]);
xlim([0 7500]);
set(animaltotairtelg11,'Color','y','linewidth',2);

hold on

animaltotairtelg12 = cdfplot(animaltotairtel12);
set(animaltotairtelg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animaltotairtelg13 = cdfplot(animaltotairtel13);
set(animaltotairtelg13,'Color','k','linewidth',2);
hold on

animaltotairtelg14 = cdfplot(animaltotairtel14);
set(animaltotairtelg14,'Color','r','linewidth',2);
hold on

animaltotairtelg15 = cdfplot(animaltotairtel15);
set(animaltotairtelg15,'Color','b','linewidth',2);
hold on

animaltotairtelg16 = cdfplot(animaltotairtel16);
set(animaltotairtelg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for animal Images - Airtel4G')