object Pangram {

    fun isPangram(input: String): Boolean {
        val inputChars = input.toList()

        if (inputChars.isEmpty()) return false

        val x = inputChars.first()
        val xs = inputChars.drop(1)
        val init = x in 'a'..'z'
        return xs.fold(init, {
            acc: Boolean, char: Char -> acc and (char in 'a'..'z')
        })
    }
}
