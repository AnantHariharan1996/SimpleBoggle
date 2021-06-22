function [letter_existence] = First_Order_Checker(word,Board)
% Checks if the letters that make up a word exist on this board

checker=1;
lettercounter=0;
while checker ~=0 & lettercounter<length(word)
    
 lettercounter=lettercounter+1;
 current_letter=word(lettercounter);
 if ~any(strcmp(Board,current_letter))
     checker=0;
 else
 
 % if there is a match, delete this letter temporarily from Board
 % to prevent double counting
 
     checks = strcmp(Board,current_letter);
    
    % begin looping over every 'root' letter  
    
    idxs = find(checks==1);
    Board(idxs(1))=[];
    
 end
    
end

letter_existence = checker;
end

