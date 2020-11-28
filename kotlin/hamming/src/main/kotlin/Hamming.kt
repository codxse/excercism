object Hamming {

    fun compute(leftStrand: String, rightStrand: String) = leftStrand.zip(rightStrand).count { it.first != it.second }
}
