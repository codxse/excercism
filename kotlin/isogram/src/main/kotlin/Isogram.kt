object Isogram {

    fun isIsogram(input: String): Boolean {
        return input.toList()
                .filter({ it.toLowerCase() in 'a'..'z' })
                .groupBy({ it.toLowerCase() })
                .map({ it.value })
                .all { it.size == 1 }
    }
}
