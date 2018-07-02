animaltotwifig11 = cdfplot(animaltotwifi11);
ylim([0 1.2]);
xlim([0 7500]);
set(animaltotwifig11,'Color','y','linewidth',2);

hold on

animaltotwifig12 = cdfplot(animaltotwifi12);
set(animaltotwifig12,'Color',[.4 .5 .6],'linewidth',2);
hold on

animaltotwifig13 = cdfplot(animaltotwifi13);
set(animaltotwifig13,'Color','k','linewidth',2);
hold on

animaltotwifig14 = cdfplot(animaltotwifi14);
set(animaltotwifig14,'Color','r','linewidth',2);
hold on

animaltotwifig15 = cdfplot(animaltotwifi15);
set(animaltotwifig15,'Color','b','linewidth',2);
hold on

animaltotwifig16 = cdfplot(animaltotwifi16);
set(animaltotwifig16,'Color','g','linewidth',2);
hold on

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for animal Images - IITDWifi')