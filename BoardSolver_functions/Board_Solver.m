function [Solved_WordList] = Board_Solver(Board,dimension,coords)

Dictionary=importdata('CollinsScrabbleWords.txt');
counter=0;
h = waitbar(0,'Beginning to Solve...');

for ijk=1:length(Dictionary)
    
    word=Dictionary{ijk};
    if length(word) > 2 && length(word)< 14
    [letter_existence] = First_Order_Checker(word,Board);
        if letter_existence==1
            [existence_check,sacredindices,Distances] = Check_Word_Existence(word,Board,dimension,coords);
            if existence_check
                counter=counter+1;
                WordList{counter}=word;
            end
        end
    end
    if rem(ijk,10000)==0
 waitbar(ijk/length(Dictionary),h,'Solving in Progress!');
    pause(0.01)
    end

end
Solved_WordList=WordList;


end

