animalalgairtelg11 = cdfplot(animalalgairtel11);
ylim([0 1.2]);
xlim([0 6000]);
set(animalalgairtelg11,'Color','y','linewidth',2);

hold on

animalalgairtelg12 = cdfplot(animalalgairtel12);
set(animalalgairtelg12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animalalgairtelg13 = cdfplot(animalalgairtel13);
set(animalalgairtelg13,'Color','k','linewidth',2);
hold on

animalalgairtelg14 = cdfplot(animalalgairtel14);
set(animalalgairtelg14,'Color','r','linewidth',2);
hold on

animalalgairtelg15 = cdfplot(animalalgairtel15);
set(animalalgairtelg15,'Color','b','linewidth',2);
hold on

animalalgairtelg16 = cdfplot(animalalgairtel16);
set(animalalgairtelg16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - Airtel4G')