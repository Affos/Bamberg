using Bamberg
using Base.Test

for n in 1000:1000:10000
    generatedpoints = [collect(1:n) ones(n)]
    @testset "Number of points: $n" begin
        @test fnp(generatedpoints, [n-1 42]) == n-1
    end
end