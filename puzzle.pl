:- use_module(library(clpfd)).

allbut(As,But) :-
    select(But, As, R),
    R = [I, I, I].

count(1,[A,B,C,D],[A1,B, C, D]) :- A1 is A+1.
count(2,[A,B,C,D],[A, B1,C, D]) :- B1 is B+1.
count(3,[A,B,C,D],[A, B, C1,D]) :- C1 is C+1.
count(4,[A,B,C,D],[A, B, C, D1]) :- D1 is D+1.

solve(Qs) :- 
    Qs = [A1, A2, A3, A4, A5, A6, A7, A8, A9, A10],
    Qs ins 1..4,
    member((A2,A5), [(1,3), (2, 4), (3, 1), (4, 2)]), %2
    member((A3, But), [(1,A3), (2,A6), (3, A2), (4, A4)]),
    allbut([A3, A6, A2, A4], But), %3
    member((A4, Same, Same), [(1,A1, A5), (2, A2, A7), (3, A1, A9), (4, A6, A10)]), %4
    member((A5,A5), [(1, A8), (2, A4), (3, A9), (4, A7)]), %5
    member((A6, A8, A8), [(1, A2, A4), (2, A1, A6), (3, A3, A10), (4, A5, A9)]), %6
    member((A8, Y), [(1, A7), (2, A5), (3, A2), (4, A10)]), abs(A1-Y) #> 1,  %8
    % select(Y, [A7, A5, A2, A10], R8), forall(member(NotY, R8), abs(A1-NotY)#=1),
    (A1 #= A6, X #\= A5; A1 #\= A6, X #= A5),
    member((A9, X), [(1,A6), (2, A10), (3, A2), (4, A9)]), %9
    member((A7, Min), [(1, LC), (2, LB), (3, LA), (4, LD)]), %7
    foldl(count, Qs, [0,0,0,0], [LA, LB, LC, LD]),
    min_list([LA, LB, LC, LD], Min),
    max_list([LA, LB, LC, LD], Max),
    Dif #= Max - Min,
    member((A10, Dif), [(1, 3), (2, 2), (3,4), (4,1)]). %10

print([]).
print([H|T]) :-
    nth1(H,[a,b,c,d], E),
    writeq(E),
    print(T).