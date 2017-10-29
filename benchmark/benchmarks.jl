using Bamberg
using PkgBenchmark
using Compat

n = 1e7

#   Abfang
if n < 2 
    n = 2
end

@benchgroup "Benchmarks FlatArray" begin
    gridpoints_fa = [collect(1:n) ones(n)]

    @bench "findminnorm" findminnorm(gridpoints_fa, [n-1 1]) 
    @bench "fnp" fnp(gridpoints_fa, [n-1 1]) 
end

@benchgroup "Benchmarks NestedArray" begin
    gridpoints_na = [[i 1] for i in 1:n]

    @bench "pointsvecnorm" pointsvecnorm(gridpoints_na, [n-1 1])
end

# res = benchmarkpkg("Bamberg")
# showall(res)