falgwifig4 = cdfplot(falgwifi4);
ylim([0 1.2]);
xlim([0 2500]);
set(falgwifig4,'Color','y','linewidth',2);

hold on

falgwifig5 = cdfplot(falgwifi5);
set(falgwifig5,'Color',[.5 .6 .7],'linewidth',2);

hold on

falgwifig6 = cdfplot(falgwifi6);
set(falgwifig6,'Color','k','linewidth',2);

hold on

falgwifig1 = cdfplot(falgwifi1);
set(falgwifig1,'Color','r','linewidth',2);

hold on

falgwifig2 = cdfplot(falgwifi2);
set(falgwifig2,'Color','b','linewidth',2);

hold on

falgwifig3 = cdfplot(falgwifi3);
set(falgwifig3,'Color','g','linewidth',2);

legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for Face Images - IITDWifi')