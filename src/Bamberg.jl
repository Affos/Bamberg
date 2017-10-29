module Bamberg

export fnp, findminnorm, pointsvecnorm
export generateidealdata

include("pointdistance.jl")
include(joinpath("../test/idealdata.jl"))

end 
