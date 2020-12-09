public class Hamming {
    private int distance = 0;

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
        for (int i = 0; i < leftStrand.length(); i++) {
            if (leftStrand.charAt(i) != rightStrand.charAt(i)) this.distance++;
        }
    }

    public int getHammingDistance() {
        return this.distance;
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
