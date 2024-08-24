module Q005

using InfiniteProductQuiz
using .Iterators: take, drop
using Test

# ↓ `InfiniteProductQuiz` を適切に実装したら `SKIP = false` に変更してください。
const SKIP = true

iterator = infiniteproduct(Iterators.countfrom(1), Iterators.countfrom(1), Iterators.countfrom(1))

# 最初の20要素
expected = [
    (1, 1, 1),
    (1, 1, 2), (1, 2, 1),                         (2, 1, 1),
    (1, 1, 3), (1, 2, 2), (1, 3, 1),              (2, 1, 2), (2, 2, 1),              (3, 1, 1),
    (1, 1, 4), (1, 2, 3), (1, 3, 2), (1, 4, 1),   (2, 1, 3), (2, 2, 2), (2, 3, 1),   (3, 1, 2), (3, 2, 1),   (4, 1, 1),
]
@test collect(take(iterator, 20)) == expected skip=SKIP

# 100番目の要素
@test first(drop(iterator, 99)) == (3, 1, 6) skip=SKIP

end