function [Board,dimension,coords] = Generate_Board(dimension)
%%
%
Load_25_Cubes
Num_Cubes=dimension(1)*dimension(2);

Y = randsample(25,Num_Cubes);

    for ijk=1:Num_Cubes
        
       CurrCube=Cube{Y(ijk)};
       randIdx  = randperm(length(CurrCube),1); % generate the random index into array
       Letter = CurrCube(randIdx);  
       Board{ijk}=Letter;
    end

counter=0;
figure()
for ijk=1:dimension(1)
    for ijkl=1:dimension(2)
%         ijk
%         ijkl
        counter=counter+1;
        text(ijk,ijkl,Board{counter},'fontsize',25,'fontweight','bold')
        hold on
        coords(counter,:)=[ijk ijkl];
    end

end
Board_Array=gca;
xlim([0 dimension(1)+1])
ylim([0 dimension(2)+1])
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])
box on
set(gca,'fontweight','bold')
title(['Boggle Board: Configured on ' date],'fontsize',18)
end

