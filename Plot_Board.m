%% Plot_Board

Num_Cubes=dimension(1)*dimension(2);

figure()
counter=0;
for ijk=1:dimension(1)
    for ijkl=1:dimension(2)
        counter=counter+1
        
         text(ijk,ijkl,Board{counter},'fontsize',25,'fontweight','bold')
        hold on   
    
            hold on
        coords(counter,:)=[ijk ijkl];
        
        xlim([0 dimension(1)+1])
ylim([0 dimension(2)+1])
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
    end
end


box on
set(gca,'fontweight','bold')