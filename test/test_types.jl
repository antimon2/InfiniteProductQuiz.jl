module TypeTests

using InfiniteProductQuiz: infiniteproduct, InfiniteProduct
using Test

@testset "types" begin

    @test typeof(infiniteproduct()) <: InfiniteProduct{0}
    @test typeof(infiniteproduct(1:3)) <: InfiniteProduct{1}
    @test typeof(infiniteproduct(1:3, "ABC")) <: InfiniteProduct{2}
    @test typeof(infiniteproduct(Iterators.countfrom(1), 1:3, "ABC")) <: InfiniteProduct{3}

    iter = infiniteproduct(Iterators.countfrom(1), 1:3, "ABC")
    @test eltype(iter) === Tuple{Int, Int, Char}

end

end  # module TypeTests
