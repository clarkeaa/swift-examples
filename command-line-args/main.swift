
func main(Void) -> Void {
    for x in 0..Int(C_ARGC) {
        let arg = C_ARGV[x]
        println("\(arg)")
    }
}

main()
