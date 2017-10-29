using Bamberg
using PkgBenchmark
using Compat

n = Int(10^3)

@benchgroup "$n" begin 

    gridpoints_fa = generateidealdata(n,"flat")
    @bench "findminnorm" findminnorm(gridpoints_fa, [n-1 1]') 
    @bench "fnp" fnp(gridpoints_fa, [n-1 1]')

    gridpoints_na = generateidealdata(n,"nested")
    @bench "pointsvecnorm" pointsvecnorm(gridpoints_na, [n-1 1]')
end


# res = benchmarkpkg("Bamberg")
# showall(res)