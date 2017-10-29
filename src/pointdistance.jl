# erste Schuss
function findminnorm(list, ego)
    nrpoints = size(list)[2]
    distances = Array{Float64}(nrpoints)
    for i in 1:nrpoints
        distances[i] = norm(list[:,i]-ego)
    end
    findmin(distances)
end

# vektorisiert
function fnp(list, ego)
    list = list.-ego
    list[1,:] = list[1,:].^2
    list[2,:] = list[2,:].^2
    distance = list[1,:]+list[2,:]
    findmin(distance)
end

function pointsvecnorm(list, ego)
    list2 = map(x-> norm(x-ego), list)
    findmin(list2)
end