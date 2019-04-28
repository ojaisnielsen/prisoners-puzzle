function success = Dumb(perm, id, N)
    i = randperm(N);    
    for n=1:uint16(N/2)
        success = (perm(i(n)) == id);
        if success
            break
        end        
    end
end

