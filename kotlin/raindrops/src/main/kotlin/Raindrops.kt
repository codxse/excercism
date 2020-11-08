object Raindrops {
    fun convert(n: Int): String {
        val factor = listOf(3, 5, 7)
        return if (factor.all { n % it != 0 }) n.toString()
        else factor.map({
            if (n % it == 0) {
                when (it) {
                    3 -> "Pling"
                    5 -> "Plang"
                    7 -> "Plong"
                    else -> ""
                }
            } else ""
        }).reduce { acc, i -> acc + i }
    }
}
