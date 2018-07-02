animalalgwifig11 = cdfplot(animalalgwifi11);
ylim([0 1.2]);
xlim([0 6000]);
set(animalalgwifig11,'Color','y','linewidth',2);

hold on

animalalgwifig12 = cdfplot(animalalgwifi12);
set(animalalgwifig12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animalalgwifig13 = cdfplot(animalalgwifi13);
set(animalalgwifig13,'Color','k','linewidth',2);
hold on

animalalgwifig14 = cdfplot(animalalgwifi14);
set(animalalgwifig14,'Color','r','linewidth',2);
hold on

animalalgwifig15 = cdfplot(animalalgwifi15);
set(animalalgwifig15,'Color','b','linewidth',2);
hold on

animalalgwifig16 = cdfplot(animalalgwifi16);
set(animalalgwifig16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - IITDWifi')