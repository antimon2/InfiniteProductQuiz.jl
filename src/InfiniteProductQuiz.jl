module InfiniteProductQuiz

export infiniteproduct

# 必要に応じて既存のAPIを `import` もしくは `using` してください。
# 例：import Base: tail
# 例：using .Iterators: take

struct InfiniteProduct{N, T <: NTuple{N, Any}}
    iterators::T
end

function infiniteproduct(iterators::Vararg{Any, N}) where {N}
    InfiniteProduct{N, typeof(iterators)}(iterators)
end

# Base.IteratorEltype(::Type{<:InfiniteProduct}) = HasEltype()  # default
Base.eltype(::Type{<:InfiniteProduct{N,T}}) where {N,T} = Tuple{ntuple(n -> eltype(fieldtype(T, n)), Val(N))...}

Base.IteratorSize(::Type{<:InfiniteProduct}) = Base.SizeUnknown()
# ↑（任意）余裕があったら各 `iterator` を調査して適切にサイズトレイトを返すようにしてみてください。
# 例：すべての `iterator` が `Haslength()` または `HasShape{N}()` ならば `HasLength()` を返して `Base.length()` も適切にメソッド追加する、等。

function Base.iterate(itr::InfiniteProduct{N}) where {N}
    # ↓取り敢えず何も列挙しないことを表すサンプル実装
    return nothing
    # ↑ここを適切に実装変更して、全テストが通るようにしてください。
    # * 必要に応じて引数の違い（型パラメータの違い、引数の個数の違い等）で複数多重定義してもOK！
end

# その他注意事項等：
# * 他の関数や型を追加するのはOK！（というか他の補助型がないとほぼ無理…）
# * 型 `InfiniteProduct` および関数 `infiniteproduct` の実装も、必要に応じて変更してもOK（変えなくてもテストの通る実装は可能なはず）。
# * 外部パッケージを依存に加えて使用するのもOK（でも外部依存なくても実装可能です！）

end
