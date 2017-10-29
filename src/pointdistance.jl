# erste Schuss
function findminnorm(list, ego)
    list .-= ego
    nrpoints = size(list)[1]
    distances = Array{eltype(list)}(nrpoints)
    for i in 1:nrpoints
        distances[i] = norm(list[i,:])
    end
    findmin(distances)
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

function fmn(list, ego)
    list =  .- ego
    res = mapslices(x -> sum(abs2,x), list, 2)  
    _, idx = findmin(res) 
    return idx
end