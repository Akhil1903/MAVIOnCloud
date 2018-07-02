animal3gupg4 = cdfplot(animal3gup4);
ylim([0 1.3]);
xlim([0 7000]);
set(animal3gupg4,'Color','y','linewidth',2);

hold on

animal3gupg5 = cdfplot(animal3gup5);
set(animal3gupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

animal3gupg6 = cdfplot(animal3gup6);
set(animal3gupg6,'Color','k','linewidth',2);

hold on

animal3gupg1 = cdfplot(animal3gup1);
set(animal3gupg1,'Color','r','linewidth',2);

hold on

animal3gupg2 = cdfplot(animal3gup2);
set(animal3gupg2,'Color','b','linewidth',2);

hold on

animal3gupg3 = cdfplot(animal3gup3);
set(animal3gupg3,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for animal Images - 3g')

%y = get(animal3gupg3,'YData');

