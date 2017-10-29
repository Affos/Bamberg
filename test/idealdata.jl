"""
    generateidealdata(numberofgridpoints, kind)

numberofgridpoint   
kind:
* 'nested' for array with n gridpoint arrays
* 'flat' for array with n gridpoints
""" generateidealdata
function generateidealdata(numberofgridpoints::Integer, kind)
    #   Arg-Check
    n  = numberofgridpoints
    n < 2 && throw(ArgumentError("number of gridpoints has to be greater than 1"))
    #   Gridpoints erstellen
    if kind == "flat"
        gridpoints = [collect(1:n) ones(Int, n)]'
    elseif kind == "nested"
        gridpoints = [[i,1] for i in 1:n]
    elseif kind == "static-nested"
        gridpoints = [SVector{2, Int}(i,1) for i in 1:n]
    else
        throw(ArgumentError("kind has to be either 'flat', 'nested' or 'static-nested'"))  
    end
    
    return gridpoints
end