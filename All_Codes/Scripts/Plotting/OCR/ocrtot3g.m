ocrtot3gg11 = cdfplot(ocrtot3g11);
ylim([0 1.2]);
xlim([0 8000]);
set(ocrtot3gg11,'LineStyle', '--','Color','y','linewidth',2);
hold on

ocrtot3gg12 = cdfplot(ocrtot3g12);
set(ocrtot3gg12,'LineStyle', '--','Color',[.4 .5 .6],'linewidth',2);
hold on

ocrtot3gg13 = cdfplot(ocrtot3g13);
set(ocrtot3gg13,'LineStyle', '--','Color','k','linewidth',2);
hold on

ocrtot3gg14 = cdfplot(ocrtot3g14);
set(ocrtot3gg14,'LineStyle', '--','Color','r','linewidth',2);
hold on

ocrtot3gg15 = cdfplot(ocrtot3g15);
set(ocrtot3gg15,'LineStyle', '--','Color','b','linewidth',2);
hold on

ocrtot3gg16 = cdfplot(ocrtot3g16);
set(ocrtot3gg16,'LineStyle', '--','Color','g','linewidth',2);
hold on

% ocrtot3gg21 = cdfplot(ocrtot3g21);
% ylim([0 1.2]);
% xlim([0 8000]);
% set(ocrtot3gg21,'Color','y','linewidth',2);
% hold on
% 
% ocrtot3gg22 = cdfplot(ocrtot3g22);
% set(ocrtot3gg22,'Color',[.4 .5 .6],'linewidth',2);
% hold on
% 
% ocrtot3gg23 = cdfplot(ocrtot3g23);
% set(ocrtot3gg23,'Color','k','linewidth',2);
% hold on
% 
% ocrtot3gg24 = cdfplot(ocrtot3g24);
% set(ocrtot3gg24,'Color','r','linewidth',2);
% hold on
% 
% ocrtot3gg25 = cdfplot(ocrtot3g25);
% set(ocrtot3gg25,'Color','b','linewidth',2);
% hold on
% 
% ocrtot3gg26 = cdfplot(ocrtot3g26);
% set(ocrtot3gg26,'Color','g','linewidth',2);
% hold on

legend('7:00 A.M. - English','10:00 A.M. - English', '1:30 P.M. - English','4:30 P.M. - English','7:30 P.M. - English', '12 A.M. - English','Location','SouthEast');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Total Time for ocr Images - 3g')