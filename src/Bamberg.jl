module Bamberg

using StaticArrays, Plots

export fnp, findminnorm, pointsvecnorm, pointsvecnorm_opt
export generateidealdata, plotdist

include("pointdistance.jl")
include(joinpath("../test/idealdata.jl"))
include("plots.jl")

end 
