using InfiniteProductQuiz
using Test

@testset verbose=true "InfiniteProductQuiz.jl" begin

    @testset "types" begin
        include("test_types.jl")
    end

    ids = !isempty(ARGS) ? ARGS : [
        m[:id]
        for m in (match(r"^test_(?<id>q\d+)\.jl$", filename) for filename in readdir(@__DIR__))
        if m !== nothing
    ]
    @testset for id in ids
        include("test_$id.jl")
    end

end
