function [Solved_WordList] = Board_Solver(Board,dimension,coords)

Dictionary=importdata('CollinsScrabbleWords.txt');
counter=0;
for ijk=1:length(Dictionary)
    100*ijk/length(Dictionary)
    word=Dictionary{ijk};
    if length(word) > 2
    [letter_existence] = First_Order_Checker(word,Board);
        if letter_existence==1
            [existence_check,sacredindices,Distances] = Check_Word_Existence(word,Board,dimension,coords);
            if existence_check
                counter=counter+1;
                WordList{counter}=word;
            end
        end
    end
end

end

