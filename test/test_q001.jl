module Q001

using InfiniteProductQuiz
using .Iterators: take, drop
using Test

# ↓ `InfiniteProductQuiz` を適切に実装したら `SKIP = false` に変更してください。
const SKIP = true

iterator = infiniteproduct(Iterators.countfrom(1), 1:3)

# 最初の要素
@test first(iterator) == (1, 1) skip=SKIP

# 最初の15要素
expected_take15 = [
    (1, 1),
    (1, 2), (2, 1),
    (1, 3), (2, 2), (3, 1),
            (2, 3), (3, 2), (4, 1),
                    (3, 3), (4, 2), (5, 1),
                            (4, 3), (5, 2), (6, 1),
]
@test collect(take(iterator, 15)) == expected_take15 skip=SKIP

# 100番目の要素
@test first(drop(iterator, 99)) == (33, 3) skip=SKIP

end