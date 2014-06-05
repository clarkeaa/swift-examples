/*
 * This is pretty ugly.  I couldn't get recursive generics working so I used
 * 'Any?'  Then the as operator didn't work converting nil of the Any? type
 * to another optional type.  I believe these are bugs in the current version
 * of swift.
 */


let terminalInt = 1234

struct Node<T> {
    var val : T
    var next : Any?
    init(value : T, nextNode : Any?) {
        val = value
        next = nextNode
    }
    init(value : T) {
        val = value
        next = terminalInt
    }
}

func cons<T>(list : Node<T>? , val : T) -> Node<T> {
    if list {
        let newNode = Node<T>(value: val, nextNode: list)
        return newNode
    } else {
        return Node<T>(value: val)
    }
}

func foreach<T>(list : Node<T>?, closure: (T) -> ()) {
    if list {
        var realList : Node<T> = list!
        closure(realList.val)
        if realList.next is Int {
            
        } else {
            let next : Node<T>? = realList.next as Node<T>?
            foreach(next, closure)
        }
    }
}

func main(Void) -> Void {
    var list : Node<Int>? = nil
    list = cons(cons(cons(cons(list, 1), 2), 3), 4)
    foreach(list, { println("\($0)")})
}

main()
