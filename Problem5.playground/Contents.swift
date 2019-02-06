import UIKit

/*
 cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. For example, car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.

 Given this implementation of cons:

 def cons(a, b):
 def pair(f):
 return f(a, b)
 return pair
 Implement car and cdr.
*/


func cons<A, B>(_ a: A, _ b: B) -> (A,B) {
    return (a,b)
}

func car<A, B>(_ ab: (A,B)) -> A {
    return ab.0
}

func cdr<A, B>(_ ab: (A,B)) -> B {
    return ab.1
}


car(cons(3, 4)) //returns 3
cdr(cons(3, 4)) //returns 4

