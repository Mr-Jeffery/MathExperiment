<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <subsubsection|Q1>

  It is easy to derive from the text that:

  f = [4,15,10,12.5];

  A = [-0.03,-0.3, 0,-0.15;

  \ 0.14, 0, 0, 0.07];

  b = [-32,42];

  Aeq = [0.05, 0, 0.2, 0.1];

  beq = 24;

  plug the conditions into <fortran|linprog()> , we get the result that

  <\equation*>
    X= *<around*|[|300 ,76.7,45,0|]>
  </equation*>

  and the lowest cost is 2800

  <subsubsection|Q2>

  Let<math|<tabular|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|x<rsub|2>>|<cell|x<rsub|3>>|<cell|x<rsub|4>>|<cell|x<rsub|5>>>>>>>be
  the part-time workers that start working at 9 a.m. to 1 p.m. and let
  <math|<tabular|<tformat|<table|<row|<cell|x<rsub|6>>|<cell|x<rsub|7>>>>>>>devote
  the full-time workers that take lunch break at 11 a.m. or 12 a.m. We can
  get the following inequality constrains:

  <\equation*>
    <stack|<tformat|<table|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<leqslant\>>|<cell|12>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|x<rsub|6>>|<cell|->|<cell|x<rsub|7>>|<cell|\<leqslant\>>|<cell|1>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|->|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<leqslant\>>|<cell|1>>|<row|<cell|x<rsub|1>>|<cell|+>|<cell|x<rsub|2>>|<cell|+>|<cell|x<rsub|3>>|<cell|+>|<cell|x<rsub|4>>|<cell|+>|<cell|x<rsub|5>>|<cell|->|<cell|x<rsub|6>>|<cell|->|<cell|x<rsub|7>>|<cell|\<leqslant\>>|<cell|0>>|<row|<cell|x<rsub|1>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|10>>|<row|<cell|x<rsub|1>>|<cell|+>|<cell|x<rsub|2>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|11>>|<row|<cell|x<rsub|1>>|<cell|+>|<cell|x<rsub|2>>|<cell|+>|<cell|x<rsub|3>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|15>>|<row|<cell|x<rsub|1>>|<cell|+>|<cell|x<rsub|2>>|<cell|+>|<cell|x<rsub|3>>|<cell|+>|<cell|x<rsub|4>>|<cell|>|<cell|>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|15>>|<row|<cell|>|<cell|>|<cell|x<rsub|2>>|<cell|+>|<cell|x<rsub|3>>|<cell|+>|<cell|x<rsub|4>>|<cell|+>|<cell|x<rsub|5>>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|19>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|x<rsub|3>>|<cell|+>|<cell|x<rsub|4>>|<cell|+>|<cell|x<rsub|5>>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|16>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|x<rsub|4>>|<cell|+>|<cell|x<rsub|5>>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|14>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|x<rsub|5>>|<cell|+>|<cell|x<rsub|6>>|<cell|+>|<cell|x<rsub|7>>|<cell|\<geqslant\>>|<cell|11>>>>>
  </equation*>

  and the optimization function is given by:

  <\equation*>
    f=120<around*|(|<tabular|<tformat|<table|<row|<cell|x<rsub|1>>|<cell|+>|<cell|x<rsub|2>>|<cell|+>|<cell|x<rsub|3>>|<cell|+>|<cell|x<rsub|4>>|<cell|+>|<cell|x<rsub|5>>|<cell|+>|<cell|3x<rsub|6>>|<cell|+>|<cell|3x<rsub|7>>>>>>|)>
  </equation*>

  plug the inequalities to the <cpp|intlinprog()> , we can solve out the
  result for x is:

  <\equation*>
    X=<around*|[|0 \ \ \ \ 0 \ \ \ \ 9 \ \ \ 2 \ \ \ \ 0 \ \ \ \ 6
    \ \ \ \ 6|]>
  </equation*>

  where the lowest cost is 5640

  <\equation*>
    \;

    \;
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>