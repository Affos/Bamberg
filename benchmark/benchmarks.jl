using Bamberg
using PkgBenchmark
using Compat

n = Int(1e7)

#   Abfang
if n < 2 
    n = 2
end

@benchgroup "Benchmarks FlatArray" begin
    gridpoints_fa = generateidealdata(n,"flat")

    @bench "findminnorm" findminnorm(gridpoints_fa, [n-1 1]) 
    @bench "fnp" fnp(gridpoints_fa, [n-1 1]) 
end

@benchgroup "Benchmarks NestedArray" begin
    gridpoints_na = generateidealdata(n,"nested")

    @bench "pointsvecnorm" pointsvecnorm(gridpoints_na, [n-1 1])
end

# res = benchmarkpkg("Bamberg")
# showall(res)