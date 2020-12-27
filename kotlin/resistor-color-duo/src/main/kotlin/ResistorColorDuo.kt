object ResistorColorDuo {

    fun value(vararg colors: Color): Int {
        return "${colors[0].ordinal}${colors[1].ordinal}".toInt()
        /*
        return colors
                .map { it.ordinal }
                .fold("") { acc, next -> "$acc$next" }
                .substring(0, 2)
                .toInt()
         */
    }
}
