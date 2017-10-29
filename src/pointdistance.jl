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
    findmin(distance)
end

function pointsvecnorm(list, ego)
    list2 = list .- ego
    findmin(norm.(list2))
end