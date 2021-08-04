% |(bar) in lists means [first element | rest of elements]
% _(meh) means don't care, can substitute for anything

% params: change, denom, #coins per denom

% change needed is 0 means meh denoms, no coins
change (0, _, []).

% change > first denom means update change (to B) and recurse with same denoms
change(A, [F | R], [F | X]) :-
    A >= F,
    B is A - F,
    change(B, [F | R], X).

% change > 0 means recurse with rest of denoms
change(A, [_ | R], X) :-
    A > 0,
    change(A, R, X).