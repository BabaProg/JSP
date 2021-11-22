package metier;

public class Cpt {
    private int val = 0;

    public Cpt() {
        val = 0;
    }

    public String getValue() {
        return "" + val;
    }

    public void incr() {
        val++;
    }
}
