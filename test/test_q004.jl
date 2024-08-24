module Q004

using InfiniteProductQuiz
using Test

# ↓ `InfiniteProductQuiz` を適切に実装したら `SKIP = false` に変更してください。
const SKIP = true

iterator = infiniteproduct(1:3, 1:3)

# 全要素
expected = [
    (1, 1),
    (1, 2), (2, 1),
    (1, 3), (2, 2), (3, 1),
            (2, 3), (3, 2),
                    (3, 3),
]
@test collect(iterator) == expected skip=SKIP

end