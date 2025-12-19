#import "./lib.typ":*

= Test

#start(
  pf(
    ($forall x.A(x)$, [some reason]),
    ($exists x.A(x)$, [trust me]),
    pfbox(
      ($forall x.A(x)$, [some reason]),
      ($exists x.A(x)$, [trust me]),
    ),
    ($forall x.A(x)$, [some reason]),
    cases(
      pf(
        ($forall x.A(x)$, [some reason]),
        ($exists x.A(x)$, [trust me]),
      ),
      pf(
        ($forall x.A(x)$, [some reason]),
        ($exists x.A(x)$, [trust me]),
      ),
      pf(
        ($forall x.A(x)$, [some reason]),
        ($exists x.A(x)$, [trust me]),
      ),
    ),
    cases(
      pf(($forall x.A(x)$, [some reason])),
      pf(
        ($forall x.A(x)$, [some reason]),
        ($exists x.A(x)$, [trust me]),
        pfbox(
          ($forall x.A(x)$, [some reason]),
          ($exists x.A(x)$, [trust me]),
          cases(
            pf(
              ($forall x.A(x)$, [f]),
              ($exists x.A(x)$, [f]),
            ),
            pf(
              ($forall x.A(x)$, [f]),
              ($exists x.A(x)$, [f]),
            ),
          ),
          ($exists x.A(x)$, [f]),
        ),
      ),
    ),
  ),
)