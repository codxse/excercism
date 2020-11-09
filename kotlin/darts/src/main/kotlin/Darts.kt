object Darts {

    fun score(x: Number, y: Number): Int {
        val sum = java.lang.Math.pow(x.toDouble(), 2.0) + java.lang.Math.pow(y.toDouble(), 2.0)
        val radius = java.lang.Math.sqrt(sum)
        return when {
            radius <= 1 -> 10
            radius <= 5 -> 5
            radius <= 10 -> 1
            else -> 0
        }
    }
}
