using Bamberg
using PkgBenchmark

@benchgroup "Benchmarks" begin
    n = 7000
    generatedpoints = [collect(1:n) ones(n)]
    @bench "fnp" fnp(generatedpoints, [n-1 42]) 
end

