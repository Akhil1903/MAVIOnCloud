f3gupg4 = cdfplot(f3gup4);
ylim([0 1.2]);
xlim([0 8000]);
set(f3gupg4,'Color','y','linewidth',2);

hold on

f3gupg5 = cdfplot(f3gup5);
set(f3gupg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

f3gupg6 = cdfplot(f3gup6);
set(f3gupg6,'Color','k','linewidth',2);

hold on

f3gupg1 = cdfplot(f3gup1);
set(f3gupg1,'Color','r','linewidth',2);

hold on

f3gupg2 = cdfplot(f3gup2);
set(f3gupg2,'Color','b','linewidth',2);

hold on

f3gupg3 = cdfplot(f3gup3);
set(f3gupg3,'Color','g','linewidth',2);
legend('7 A.M','10 A.M.','1:30 P.M.','4:30 P.M.','7:30 P.M.','12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for Face Images - 3G')