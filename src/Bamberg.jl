module Bamberg

using StaticArrays

export fnp, findminnorm, pointsvecnorm, pointsvecnorm_opt
export generateidealdata

include("pointdistance.jl")
include(joinpath("../test/idealdata.jl"))

end 
