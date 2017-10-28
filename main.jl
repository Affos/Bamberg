include("pointdistance.jl")

using Compat, BenchmarkTools

list = [collect(1:7000) ones(7000)]
ego = [4000 0.1]

@benchmark findminnorm(list, ego)
@benchmark fnp(list, ego)