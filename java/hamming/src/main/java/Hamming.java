public class Hamming {
    private String leftStrand;
    private String rightStrand;

    public Hamming(String leftStrand, String rightStrand) {
        if (this.isLeftstrandEmpty(leftStrand, rightStrand)) {
            throw new IllegalArgumentException("left strand must not be empty.");
        }
        if (this.isRightstrandEmpty(leftStrand, rightStrand)) {
            throw new IllegalArgumentException("right strand must not be empty.");
        }
        if (this.isNotEqualSize(leftStrand, rightStrand)) {
            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }
        this.leftStrand = leftStrand;
        this.rightStrand = rightStrand;
    }

    public int getHammingDistance() {
        var value = 0;
        for (int i = 0; i < this.leftStrand.length(); i++) {
            if (this.leftStrand.charAt(i) != this.rightStrand.charAt(i)) value++;
        }
        return value;
    }

    private boolean isLeftstrandEmpty(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            return leftStrand.isEmpty();
        }
        return false;
    }

    private boolean isRightstrandEmpty(String leftStrand, String rightStrand) {
        if (rightStrand.length() != leftStrand.length()) {
            return rightStrand.isEmpty();
        }
        return false;
    }

    private boolean isNotEqualSize(String leftStrand, String rightStrand) {
        return rightStrand.length() != leftStrand.length();
    }
}
