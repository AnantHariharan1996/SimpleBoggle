 function [Distances,idxs1,idxs2] = Get_Letter2LetterDistances(Letter1,Letter2,Board,dimension,coords)
%Get distances between all sets of 2 letters on the board
%
    
    checks1 = strcmp(Board,Letter1);    
    idxs1 = find(checks1==1);

    checks2 = strcmp(Board,Letter2);    
    idxs2 = find(checks2==1);
    
    for ijkl= 1:length(idxs1)
    % check every starting letter

        current_coord1 = coords(idxs1(ijkl),:);

        for ijklm = 1:length(idxs2)
            
            current_coord2 = coords(idxs2(ijklm),:);
            
            Distances(ijkl,ijklm) = sqrt( (current_coord1(1)-...
                current_coord2(1))^2 + (current_coord1(2)-current_coord2(2))^2 );
            

        end
        
    end
    
    
    
end




