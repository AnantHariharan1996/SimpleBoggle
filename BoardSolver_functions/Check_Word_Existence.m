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
    
    % test every coordinate
    for lettercoord = idxs
        
        
        
    end
    
    
end


end

