animaljioupg4 = cdfplot(animaljioup4);
ylim([0 1.3]);
xlim([0 7000]);
set(animaljioupg4,'Color','y','linewidth',2);

hold on

animaljioupg5 = cdfplot(animaljioup5);
set(animaljioupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

animaljioupg6 = cdfplot(animaljioup6);
set(animaljioupg6,'Color','k','linewidth',2);

hold on

animaljioupg1 = cdfplot(animaljioup1);
set(animaljioupg1,'Color','r','linewidth',2);

hold on

animaljioupg2 = cdfplot(animaljioup2);
set(animaljioupg2,'Color','b','linewidth',2);

hold on

animaljioupg3 = cdfplot(animaljioup3);
set(animaljioupg3,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for animal Images - Jio')

%y = get(animaljioupg3,'YData');

