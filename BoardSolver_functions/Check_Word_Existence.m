function [existence_check] = Check_Word_Existence(word,Board,dimension,coords)
%Check to see if a word exists in the board
%
existence_check=0;
% First check to see if the board has the word's first letter
First_Letter = word(1);

if any(strcmp(Board,word(1)))
    
    checks = strcmp(Board,word(1));
    
    % begin looping over every 'root' letter  
    
    idxs = find(checks==1);

    
    for ijkl= 1:length(idxs)
    % check every starting letter
        breaker=0;
        current_Letter=First_Letter;
        lettercounter=1;
        
        while breaker=0 && lettercounter<length(word)

            current_coord = coords(idxs(ijkl),:);
            
            %dist_list = get_distances(current_coord,coords);
            dist_list = get_distances(current_coord,coords);
            Adjacent_idxs = find(dist_list<1.5 & dist_list>0);
            
            Adjacent_Letters=Board(Adjacent_idxs);
            
            nextchecks = strcmp(Adjacent_Letters,word(lettercounter+1));

            lettercounter=lettercounter+1;
            
            if ~any(nextchecks)
                breaker=1;
                
            end
            
        end
        
    end
    
    
    
end


end

