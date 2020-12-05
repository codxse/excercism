import java.time.LocalDateTime
import java.time.LocalDate

class Gigasecond(dateTime: LocalDateTime) {
    val date = dateTime.plusSeconds(1_000_000_000)
    constructor(date: LocalDate): this(date.atStartOfDay())
}
