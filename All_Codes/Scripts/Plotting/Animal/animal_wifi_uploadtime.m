animalwifiupg6 = cdfplot(animalwifiup6);
ylim([0 1.3]);
xlim([0 7000]);
set(animalwifiupg6,'Color','y','linewidth',2);

hold on

animalwifiupg5 = cdfplot(animalwifiup5);
set(animalwifiupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

animalwifiupg4 = cdfplot(animalwifiup4);
set(animalwifiupg4,'Color','k','linewidth',2);

hold on

animalwifiupg1 = cdfplot(animalwifiup1);
set(animalwifiupg1,'Color','r','linewidth',2);

hold on

animalwifiupg2 = cdfplot(animalwifiup2);
set(animalwifiupg2,'Color','b','linewidth',2);

hold on

animalwifiupg3 = cdfplot(animalwifiup3);
set(animalwifiupg3,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for animal Images - wifi')

%y = get(animalwifiupg3,'YData');

