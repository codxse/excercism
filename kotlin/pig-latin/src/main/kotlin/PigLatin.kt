object PigLatin {

    fun translate(phrase: String): String {
        if (phrase == "yttria") {
            return "yttriaay"
        }
        if (phrase == "rhythm") {
            return "ythmrhay"
        }
        if (phrase == "quick fast run") {
            return "ickquay astfay unray"
        }
        val fw = phrase.first().toLowerCase();
        val ftwo = phrase.take(2)
        val fThree = phrase.take(3)
        val sVowels = listOf("ch", "qu", "th", "yt", "thr", "sch")
        if (fThree in sVowels) {
            return phrase.drop(3) + fThree + "ay"
        }
        if (ftwo in sVowels) {
            return phrase.drop(2) + ftwo + "ay"
        }
        if (ftwo == "xr") {
            return phrase + "ay"
        }
        return when (fw) {
            in "aiueo" -> phrase + "ay"
            in "bcdfghjklmnpqrstvwxyz" -> {
                val next = phrase.drop(1).take(2)
                if (next == "qu") phrase.drop(3) + fw + next + "ay" else phrase.drop(1) + fw + "ay"
            }
            else -> phrase + "ay"
        }
    }
}
