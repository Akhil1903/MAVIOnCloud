% ocrtotjiog11 = cdfplot(ocrtotjio11);
% ylim([0 1.2]);
% xlim([0 8000]);
% set(ocrtotjiog11,'LineStyle', '--','Color','y','linewidth',2);
% hold on
% 
% ocrtotjiog12 = cdfplot(ocrtotjio12);
% set(ocrtotjiog12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
% hold on
% 
% ocrtotjiog13 = cdfplot(ocrtotjio13);
% set(ocrtotjiog13,'LineStyle', '--','Color','k','linewidth',2);
% hold on
% 
% ocrtotjiog14 = cdfplot(ocrtotjio14);
% set(ocrtotjiog14,'LineStyle', '--','Color','r','linewidth',2);
% hold on
% 
% ocrtotjiog15 = cdfplot(ocrtotjio15);
% set(ocrtotjiog15,'LineStyle', '--','Color','b','linewidth',2);
% hold on
% 
% ocrtotjiog16 = cdfplot(ocrtotjio16);
% set(ocrtotjiog16,'LineStyle', '--','Color','g','linewidth',2);
% hold on

ocrtotjiog21 = cdfplot(ocrtotjio21);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtotjiog21,'Color','y','linewidth',2);
hold on

ocrtotjiog22 = cdfplot(ocrtotjio22);
set(ocrtotjiog22,'Color',[.4 .5 .6],'linewidth',2);
hold on

ocrtotjiog23 = cdfplot(ocrtotjio23);
set(ocrtotjiog23,'Color','k','linewidth',2);
hold on

ocrtotjiog24 = cdfplot(ocrtotjio24);
set(ocrtotjiog24,'Color','r','linewidth',2);
hold on

ocrtotjiog25 = cdfplot(ocrtotjio25);
set(ocrtotjiog25,'Color','b','linewidth',2);
hold on

ocrtotjiog26 = cdfplot(ocrtotjio26);
set(ocrtotjiog26,'Color','g','linewidth',2);
hold on

legend('7:00 A.M. - Both','10:00 A.M. - Both', '1:30 P.M. - Both','4:30 P.M. - Both','7:30 P.M. - Both', '12 A.M. - Both','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Algo Time for ocr Images - Jio')