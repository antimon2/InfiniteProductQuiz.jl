# InfiniteProductQuiz.jl

[![Build Status](https://github.com/antimon2/InfiniteProductQuiz.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/antimon2/InfiniteProductQuiz.jl/actions/workflows/CI.yml?query=branch%3Amain)

## Quiz

Implement the `Base.iterate(itr::InfiniteProduct[, state])` method so that it enumerates the Cartesian product as shown below.

```julia
julia> for vals in infiniteproduct(
           Iterators.countfrom(1),
           Iterators.countfrom(1)
       )
           println(vals)
       end
## (1, 1)
## (1, 2)
## (2, 1)
## (1, 3)
## (2, 2)
## (3, 1)
##   : <omitted>
```

### Additional Information

The enumeration should follow the pattern shown in the image below:

![列挙イメージ](https://hackmd.io/_uploads/SyxXcByh0.png)

### How to Submit Your Solution

1. Clone this repository
   * Forking is also acceptable
2. Open it in your preferred editor (e.g., VSCode)
   * A DevContainer is provided, so feel free to use it
3. Implement the necessary parts
   * At a minimum, implement the `Base.iterate(itr::InfiniteProduct[, state])` method in `src/InfiniteProduct.jl`
4. Run the tests
   * `julia --project=. -e 'using Pkg; Pkg.test()'` or `] test` in the REPL
   * Enable tests by changing the line `const SKIP = true` to `const SKIP = false` in each `test/test_qXXX.jl` file
   * It should look like the following when successful:  
     ![テストパスイメージ](https://hackmd.io/_uploads/ByLQ5rJnR.png)
5. (Optional) Submit a Pull Request
   * Please ensure all tests pass before submitting
   * Alternatively, you can share the URL of your repository (in-progress) within the JuliaLangJa Discord server

--- 

If you have any other requests or adjustments, feel free to ask!
