ftotwifig4 = cdfplot(ftotwifi4);
ylim([0 1.2]);
xlim([0 8000]);
set(ftotwifig4,'Color','y','linewidth',2);

hold on

ftotwifig5 = cdfplot(ftotwifi5);
set(ftotwifig5,'Color',[.5 .6 .7],'linewidth',2);

hold on

ftotwifig6 = cdfplot(ftotwifi6);
set(ftotwifig6,'Color','k','linewidth',2);

hold on

ftotwifig1 = cdfplot(ftotwifi1);
set(ftotwifig1,'Color','r','linewidth',2);

hold on

ftotwifig2 = cdfplot(ftotwifi2);
set(ftotwifig2,'Color','b','linewidth',2);

hold on

ftotwifig3 = cdfplot(ftotwifi3);
set(ftotwifig3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for Face Images - IITDWifi')