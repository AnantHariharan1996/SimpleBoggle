function [existence_check,sacredindices,Distances] = Check_Word_Existence(word,Board,dimension,coords)
sacredindices=0;
%Check to see if a word exists in the board
%
[IndexList,WordLocations] = Check_Word_Indices(word,Board,dimension,coords);

% look over every possible set of words
counter=0;
existence_check=0;
Distances=0;
while existence_check == 0 & counter < length(WordLocations(:,1))
    
    counter=counter+1;
    
    current_wordindices=WordLocations(counter,:);
    
    % check no repeated tiles
    if length(unique(current_wordindices)) == length(word)
        
        % check distance between every letter pair
        Distances=[];
        lettercounter=0;
        breaker=0;
        while breaker==0 & lettercounter< length(current_wordindices)-1
            
            lettercounter=lettercounter+1;
            current_coord1=coords(current_wordindices(lettercounter),:);
            current_coord2=coords(current_wordindices(lettercounter+1),:);
            
           Distance= sqrt( (current_coord1(1)-...
                    current_coord2(1))^2 + (current_coord1(2)-current_coord2(2))^2 );

            Distances(lettercounter)=Distance;
            if Distance>1.5
                breaker=1;
            end
            
        end
        
        if lettercounter+1 == length(current_wordindices)
            if max(Distances) < 1.5
                existence_check=1;
                sacredindices=current_wordindices;
            end
        end
    end
    
    
    
end


end

