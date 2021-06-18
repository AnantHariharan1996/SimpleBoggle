function  dist_list = get_distances(current_coord,coords)

    for mmmmm=1:length(coords)
        coord=coords(mmmmm,:);
        dist_list(mmmmm)=...
            sqrt((current_coord(1)-coord(1))^2+(current_coord(2)-coord(2))^2);
        
    end

end

