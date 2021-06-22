function [NumPoints,PointList] = TallyUpPoints(Solved_WordList)
%Get number of points that correspond to a list of words

for ijk=1:length(Solved_WordList)
    currword=Solved_WordList{ijk};
    numpts=length(currword)-2;
    PointList(ijk)=numpts; 
end
NumPoints=sum(PointList);

end

