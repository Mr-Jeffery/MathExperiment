<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <section|Question I>

  Proved in lab7.mlx file.

  <section|Question II>

  Note that <math|d=3> in the following proves, for the d=1 case, let the
  magnitude in <math|y,z> of the vectors \ equal zero.

  <subsection|<math|<frac|\<partial\>F|\<partial\>\<rho\>>\<gtr\>0> and
  <math|<frac|\<partial\><rsup|2>F|\<partial\>\<rho\><rsup|2>>=0>>

  Proved in lab7.mlx file.

  <subsection|<math|F\|<rsub|\<rho\>=0>\<geqslant\>0>>

  Notice that <math|F\|<rsub|\<rho\><rsub|\<ast\>>=0>\<leqslant\>F\|<rsub|\<rho\><rsub|\<ast\>>\<gtr\>0>>
  , thus:

  <\equation*>
    <\align>
      <tformat|<table|<row|<cell|>|<cell|F\|<rsub|\<rho\>=0>>>|<row|<cell|\<geqslant\>>|<cell|F\|<rsub|\<rho\>=\<rho\><rsub|\<ast\>>=0>>>|<row|<cell|=>|<cell|<around*|(|<around*|\||B|\|><rsup|2>v-<around*|(|v\<cdot\>B|)>B|)>\<cdot\><around*|(|-v<rsub|\<ast\>>|)>-<around*|(|<around*|\||B<rsub|\<ast\>>|\|><rsup|2>v<rsub|\<ast\>>-<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>B<rsub|\<ast\>>|)>\<cdot\><around*|(|-v<rsub|\<ast\>>|)>>>|<row|<cell|>|<cell|+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)>B<rsub|\<ast\>>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>v<rsub|\<ast\>>|)>\<cdot\><around*|(|-B|)>-<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)>B<rsub|\<ast\>>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>v<rsub|\<ast\>>|)>\<cdot\><around*|(|-B<rsub|\<ast\>>|)>>>|<row|<cell|>|<cell|+<frac|<around*|(|1+<around*|\||v|\|><rsup|2>|)><around*|\||B|\|><rsup|2>-<around*|(|v\<cdot\>B|)><rsup|2>|2>-<frac|<around*|(|1+<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>-<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>>>|<row|<cell|>|<cell|+<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>-<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>>>|<row|<cell|=>|<cell|<around*|(|<around*|\||B|\|><rsup|2>v-<around*|(|v\<cdot\>B|)>B|)>\<cdot\><around*|(|-v<rsub|\<ast\>>|)>+<around*|(|<around*|\||B<rsub|\<ast\>>|\|><rsup|2><around*|\||v<rsub|\<ast\>><rsup|>|\|><rsup|2>-<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|)>>>|<row|<cell|>|<cell|+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)>B<rsub|\<ast\>>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>v<rsub|\<ast\>>|)>\<cdot\><around*|(|-B|)>+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|)>>>|<row|<cell|>|<cell|+<frac|<around*|(|1+<around*|\||v|\|><rsup|2>|)><around*|\||B|\|><rsup|2>-<around*|(|v\<cdot\>B|)><rsup|2>|2>-<frac|<around*|\||B<rsub|\<ast\>>|\|><rsup|2>|2>>>|<row|<cell|>|<cell|+<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>-<frac|<around*|\||B<rsub|\<ast\>>|\|><rsup|2>|2>>>|<row|<cell|=>|<cell|<around*|(|<around*|\||B|\|><rsup|2>v-<around*|(|v\<cdot\>B|)>B|)>\<cdot\><around*|(|-v<rsub|\<ast\>>|)>+<around*|(|<around*|\||B<rsub|\<ast\>>|\|><rsup|2><around*|\||v<rsub|\<ast\>><rsup|>|\|><rsup|2>|)>>>|<row|<cell|>|<cell|+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)>B<rsub|\<ast\>>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>v<rsub|\<ast\>>|)>\<cdot\><around*|(|-B|)>+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>|)>>>|<row|<cell|>|<cell|+<frac|<around*|(|1+<around*|\||v|\|><rsup|2>|)><around*|\||B|\|><rsup|2>-<around*|(|v\<cdot\>B|)><rsup|2>|2>-<around*|\||B<rsub|\<ast\>>|\|><rsup|2>>>|<row|<cell|>|<cell|+<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>>>|<row|<cell|=>|<cell|<around*|(|<around*|\||B|\|><rsup|2>v-<around*|(|v\<cdot\>B|)>B|)>\<cdot\><around*|(|-v<rsub|\<ast\>>|)>>>|<row|<cell|>|<cell|+<around*|(|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)>B<rsub|\<ast\>>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>v<rsub|\<ast\>>|)>\<cdot\><around*|(|-B|)>>>|<row|<cell|>|<cell|+<frac|<around*|(|1+<around*|\||v|\|><rsup|2>|)><around*|\||B|\|><rsup|2>-<around*|(|v\<cdot\>B|)><rsup|2>|2>>>|<row|<cell|>|<cell|+<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>|\|><rsup|2>+<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>>>|<row|<cell|=>|<cell|<frac|<around*|(|1-<around*|\||v<rsub|\<ast\>>|\|><rsup|2>|)><around*|\||B<rsub|\<ast\>>-B|\|><rsup|2>|2>+<frac|<around*|\||v<rsub|\<ast\>>-v|\|><rsup|2><around*|\||B|\|><rsup|2>|2>>>|<row|<cell|>|<cell|+<frac|<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><rsup|2>|2>-<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)><around*|(|v<rsub|\<ast\>>\<cdot\>B|)>-<frac|<around*|(|v\<cdot\>B|)><rsup|2>|2>+<around*|(|v\<cdot\>B|)><around*|(|v<rsub|\<ast\>>\<cdot\>B|)>>>|<row|<cell|\<geqslant\>>|<cell|<frac|<around*|\||v<rsub|\<ast\>>-v|\|><rsup|2><around*|\||B|\|><rsup|2>|2>+<frac|<around*|[|<around*|(|v<rsub|\<ast\>>\<cdot\>B<rsub|\<ast\>>|)>-<around*|(|v<rsub|\<ast\>>\<cdot\>B|)>|]><rsup|2>|2>-<frac|<around*|[|<around*|(|v\<cdot\>B|)>-<around*|(|v<rsub|\<ast\>>\<cdot\>B|)>|]><rsup|2>|2>>>|<row|<cell|=>|<cell|<frac|<around*|\||v<rsub|\<ast\>>-v|\|><rsup|2><around*|\||B|\|><rsup|2>|2>-<frac|<around*|[|<around*|(|v<rsub|\<ast\>>-v|)>\<cdot\>B<rsub|>|]><rsup|2>|2>+<frac|<around*|[|<around*|(|B<rsub|\<ast\>>-B|)>\<cdot\>v<rsub|\<ast\>><rsub|>|]><rsup|2>|2>\<geqslant\>0>>>>
    </align>
  </equation*>

  Now we can tell that

  <\equation*>
    F\|<rsub|\<rho\>=0>\<geqslant\>F\|<rsub|\<rho\>=\<rho\><rsub|\<ast\>>=0>\<geqslant\>0
  </equation*>

  As desired.

  <subsection|<math|F\<geqslant\>0>>

  The result can be directly derived from 2.1 and 2.2 .

  <subsection|d=3>

  Since my previous work did not specify the dimension, this should
  automatically hold for all <math|d=<around*|{|1,2,3|}>>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|1>>
    <associate|auto-5|<tuple|2.3|2>>
    <associate|auto-6|<tuple|2.4|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Question
      I> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Question
      II> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc><with|mode|<quote|math>|<frac|\<partial\>F|\<partial\>\<rho\>>\<gtr\>0>
      and <with|mode|<quote|math>|<frac|\<partial\><rsup|2>F|\<partial\>\<rho\><rsup|2>>=0>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc><with|mode|<quote|math>|F\|<rsub|\<rho\>=0>\<geqslant\>0>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc><with|mode|<quote|math>|F\<geqslant\>0>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>d=3
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>