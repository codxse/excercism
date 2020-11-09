class DndCharacter {

    val strength: Int = DndCharacter.ability()
    val dexterity: Int = DndCharacter.ability()
    val constitution: Int = DndCharacter.ability()
    val intelligence: Int = DndCharacter.ability()
    val wisdom: Int = DndCharacter.ability()
    val charisma: Int = DndCharacter.ability()
    val hitpoints: Int = 10 + DndCharacter.modifier(constitution)

    companion object {
        /*
        private lateinit var _instance: DndCharacter

        val instance: DndCharacter
        get() {
            if (_instance == null) {
                _instance = DndCharacter()
            }
            return _instance
        }
        */

        fun ability(): Int {
            return List(4) { (1..6).shuffled().first() }
                    .sorted()
                    .drop(1)
                    .sum()
        }

        fun modifier(score: Int): Int {
            return java.lang.Math.floor((score - 10) / 2.0).toInt()
        }
    }

}
