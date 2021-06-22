function [Board,dimension,coords] = Input_Board(dimension);
% Input letters from a boggle board you created by hand
% so that we can solve it

Num_Cubes=dimension(1)*dimension(2);

figure()
counter=0;
for ijk=1:dimension(1)
    for ijkl=1:dimension(2)
        counter=counter+1
        current_letter= input(['Enter letter number ' num2str(counter)],'s')
        while length(current_letter) > 1
            disp('Try again. Only enter a single letter!')
            current_letter= input(['Enter letter number ' num2str(counter)],'s')
           
        end
        
        
        Board{counter}=current_letter;
        
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

end

