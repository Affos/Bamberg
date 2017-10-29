using Bamberg
using Base.Test, StaticArrays

for n in 1000:1000:10000
    gridpoints_fa = generateidealdata(n,"flat")    
    gridpoints_na = generateidealdata(n,"nested")
    gridpoints_st = generateidealdata(n,"static-nested")
    @testset "Number of points: $n" begin
        @test findminnorm(gridpoints_fa, [n-1 1]')[2]  == n-1
        @test fnp(gridpoints_fa, [n-1 1]')[2]  == n-1
        @test pointsvecnorm(gridpoints_na, [n-1 1]')[2] == n-1
        @test pointsvecnorm(gridpoints_st, SVector{2, Int}(n-1, 1))[2] == n-1
        @test pointsvecnorm_opt(gridpoints_st, SVector{2, Int}(n-1, 1))[2] == n-1
    end
end