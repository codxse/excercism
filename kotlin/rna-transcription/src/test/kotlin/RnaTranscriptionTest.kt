import org.junit.Test
import org.junit.Ignore
import kotlin.test.assertEquals

class RnaTranscriptionTest {
    @Test
    fun `empty RNA` ()= assertEquals("", transcribeToRna(""))

    @Test
    fun `RNA complement of cytosine is guanine`() = assertEquals("G", transcribeToRna("C"))

    @Ignore
    fun `RNA complement of guanine is cytosine`() = assertEquals("C", transcribeToRna("G"))

    @Ignore
    fun `RNA complement of thymine is adenine`() = assertEquals("A", transcribeToRna("T"))

    @Ignore
    fun `RNA complement of adenine is uracil`() = assertEquals("U", transcribeToRna("A"))

    @Ignore
    fun `compound RNA`() = assertEquals("UGCACCAGAAUU", transcribeToRna("ACGTGGTCTTAA"))
}
