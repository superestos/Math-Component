(*Functions*)

Definition f (n: nat) : nat := n + 1.

About f.
Print f.
Check f 3.
Compute f 3.

Definition g (n m : nat) : nat := n + m * 2.
Definition h (n : nat) : nat -> nat := fun m => n + m * 2.
Check g.
Check h.
Compute g 2 3.
Compute h 2 3.

Definition repeat_twice (g: nat -> nat) : nat -> nat := 
    fun x => g (g x).

Compute repeat_twice f 2.
Check (repeat_twice f).

(*Data types*)

Inductive bool := true | false.
Check true.

Definition andb (b1 b2 : bool) := if b1 then b2 else false.
Definition orb (b1 b2 : bool) := if b1 then true else b2.
Check andb.
Check orb.

Inductive nat := O | S (n : nat).
Check fun n => n+1.

Definition non_zero n :=
    match n with
    | O => false
    | S p => true
    end.

Fixpoint addn n m :=
    match n with
    | O => m
    | S p => S (addn p m)
    end.

Fixpoint subn m n :=
    match m, n with
    | (S p), (S q) => subn p q
    | _, _ => m
    end.

Fixpoint eqn m n :=
    match m, n with
    | O, O => true
    | S p, S q => eqn p q
    | _, _ => false
    end.

