animalairtelupg4 = cdfplot(animalairtelup4);
ylim([0 1.3]);
xlim([0 7000]);
set(animalairtelupg4,'Color','y','linewidth',2);

hold on

animalairtelupg5 = cdfplot(animalairtelup5);
set(animalairtelupg5,'Color',[.4 .5 .6],'linewidth',2);

hold on

animalairtelupg6 = cdfplot(animalairtelup6);
set(animalairtelupg6,'Color','k','linewidth',2);

hold on

animalairtelupg1 = cdfplot(animalairtelup1);
set(animalairtelupg1,'Color','r','linewidth',2);

hold on

animalairtelupg2 = cdfplot(animalairtelup2);
set(animalairtelupg2,'Color','b','linewidth',2);

hold on

animalairtelupg3 = cdfplot(animalairtelup3);
set(animalairtelupg3,'Color','g','linewidth',2);
legend('7 A.M.','10 A.M.', '1:30 P.M.', '4:30 P.M.', '7:30 P.M.', '12 A.M.');
xlabel({'Time','(in ms)'})
ylabel('Fraction of Images');
title('Upload Time for animal Images - airtel')

%y = get(animalairtelupg3,'YData');

% animalairtelupavgg = cdfplot(animalairtelupavg);
% ylim([0 1.3]);
% xlim([0 7000]);
% legend('Average upload time - Airtel4G')
% xlabel({'Time','(in ms)'})
% ylabel('Fraction of Images');
% title('Upload Time for animal Images - Airtel4G');
% 
