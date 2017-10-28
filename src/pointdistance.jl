# erste Schuss
function findminnorm(p, location)
    p .-= location
    nrpoints = size(p)[1]
    n = Array{eltype(p)}(nrpoints)
    for i in 1:nrpoints
        n[i] = norm(p[i,:])
    end
    findmin(n)
end

# vektorisiert
function fnp(list, ego)
    list = list.-ego
    list[:,1] = list[:,1].^2
    list[:,2] = list[:,2].^2
    distance = list[:,1]+list[:,2]
    value, idx = findmin(distance)
    return idx 
end