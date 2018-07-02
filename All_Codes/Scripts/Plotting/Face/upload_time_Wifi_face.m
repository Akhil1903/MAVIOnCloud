fwifiupg4 = cdfplot(fwifiup4);
ylim([0 1.2]);
xlim([0 8000]);
set(fwifiupg4,'Color','y','linewidth',2);

hold on

fwifiupg5 = cdfplot(fwifiup5);
set(fwifiupg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

fwifiupg6 = cdfplot(fwifiup6);
set(fwifiupg6,'Color','k','linewidth',2);

hold on

fwifiupg1 = cdfplot(fwifiup1);
set(fwifiupg1,'Color','r','linewidth',2);

hold on

fwifiupg2 = cdfplot(fwifiup2);
set(fwifiupg2,'Color','b','linewidth',2);

hold on

fwifiupg3 = cdfplot(fwifiup3);
set(fwifiupg3,'Color','g','linewidth',2);
legend('7 A.M','10 A.M.','1:30 P.M.','4:30 P.M.','7:30 P.M.','12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for Face Images - IITDWifi')