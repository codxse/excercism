class Anagram(val source: String) {
    fun match(anagrams: Collection<String>): Set<String> {
        val source = this.source.toLowerCase()
        return anagrams
                .filter { (it.toLowerCase() != source) and (it.toLowerCase().toList().sorted() == source.toList().sorted()) }
                .toSet()
    }
}
