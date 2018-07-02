fjioupg4 = cdfplot(fjioup4);
ylim([0 1.2]);
xlim([0 8000]);
set(fjioupg4,'Color','y','linewidth',2);

hold on

fjioupg5 = cdfplot(fjioup5);
set(fjioupg5,'Color',[.5 .6 .7],'linewidth',2);

hold on

fjioupg6 = cdfplot(fjioup6);
set(fjioupg6,'Color','k','linewidth',2);

hold on

fjioupg1 = cdfplot(fjioup1);
set(fjioupg1,'Color','r','linewidth',2);

hold on

fjioupg2 = cdfplot(fjioup2);
set(fjioupg2,'Color','b','linewidth',2);

hold on

fjioupg3 = cdfplot(fjioup3);
set(fjioupg3,'Color','g','linewidth',2);
legend('7 A.M','10 A.M.','1:30 P.M.','4:30 P.M.','7:30 P.M.','12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for Face Images - IITDWifi')