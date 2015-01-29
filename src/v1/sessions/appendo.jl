
using LilKanren

function appendᵒ(o,front,back)
    ∨(
       ∧(❀() ≡ front,
          o ≡ back),
       fresh(3) do h,t,temp
         ∧(
             (h,t) ≡ front,
             (h,temp) ≡ o,
             @☾(appendᵒ(temp,t,back))
         )
       end
    )
end

slurpityDooDah() do q
    q ≡ (:♡, :♠)
end

Var(0) ≡ (:♡, :♠)

LilKanren.functionParams() do q
    q ≡ (:♡, :♠)
end


slurpityDooDah() do q
    appendᵒ(q, ❀(:✌︎, :✒︎, :✂︎, :☼), ❀(:☿,:♆))
end

slurpityDooDah(maxResults=20) do front, back
    appendᵒ(❀(:✌︎, :✒︎, :✂︎, :☼,:☿,:♆,:✌︎, :✒︎, :✂︎, :☼,:☿,:♆),
            front, back)
end
