module Q006

using InfiniteProductQuiz
using .Iterators: take, drop
using Test

# ↓ `InfiniteProductQuiz` を適切に実装したら `SKIP = false` に変更してください。
const SKIP = true

fibs() = Channel{Int}() do chnl
    a = 0
    b = 1
    put!(chnl, a)
    while true
        a, b = b, a + b
        put!(chnl, a)
    end
end

iterator() = infiniteproduct(1:3, fibs())

# 最初の要素
@test first(iterator()) == (1, 0) skip=SKIP

# 最初の15要素
expected_take15 = [
    (1, 0),
    (1, 1), (2, 0),
    (1, 1), (2, 1), (3, 0),
    (1, 2), (2, 1), (3, 1),
    (1, 3), (2, 2), (3, 1),
    (1, 5), (2, 3), (3, 2),
]
@test collect(take(iterator(), 15)) == expected_take15 skip=SKIP

# 100番目の要素
@test first(drop(iterator(), 99)) == (1, 5702887) skip=SKIP 

end