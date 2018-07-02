miixed3gupg1 = cdfplot(miixed3gup1);
ylim([0 1.3]);
xlim([0 11000]);
set(miixed3gupg1,'Color','y','linewidth',2);

hold on

miixed3gupg2 = cdfplot(miixed3gup2);
set(miixed3gupg2,'Color',[.4 .5 .6],'linewidth',2);

hold on

miixed3gupg3 = cdfplot(miixed3gup3);
set(miixed3gupg3,'Color','k','linewidth',2);

hold on

miixed3gupg4 = cdfplot(miixed3gup4);
set(miixed3gupg4,'Color','r','linewidth',2);

hold on

miixed3gupg5 = cdfplot(miixed3gup5);
set(miixed3gupg5,'Color','b','linewidth',2);

hold on

miixed3gupg6 = cdfplot(miixed3gup6);
set(miixed3gupg6,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for miixed Images - 3g')

%y = get(miixed3gupg3,'YData');

