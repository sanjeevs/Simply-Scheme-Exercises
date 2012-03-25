; Write depth, a procedure that takes a tree as argument and returns the largest
; number of nodes connected through parent-child links. That is, a leaf node has depth
; 1; a tree in which all the children of the root node are leaves has depth 2. Our world
; tree has depth 4 (because the longest path from the root to a leaf is, for example, world,
; country, state, city).

; Andy note: This one took me AGES. It's embarressing, but I my brain melts when I try to
;            think about trees recursively.

; My attempt. Not sure if it works in all cases (:
; The depth of the tree is 1 if it is a leaf else it is the max of the depth of all the nodes
; in the forest.
(define (depth tree)
  (depth-helper tree 1))

(define (depth-helper tree level)
  (if (leaf? tree) level
      (apply max (every (lambda(x) (depth-helper x (+ level 1))) (children tree)))))