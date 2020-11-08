fun transcribeToRna(dna: String): String {
    val h = mapOf('G' to 'C', 'C' to 'G', 'T' to 'A', 'A' to 'U')
    return dna
            .map { h.get(it) }
            .filter { it != null }
            .joinToString("")
}
