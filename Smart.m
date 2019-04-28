function success = Smart(perm, id, N)
    i = id;
    for n=1:uint16(N/2)
        success = (perm(i) == id);
        if success
            break
        end
        i = perm(i);
    end
end

