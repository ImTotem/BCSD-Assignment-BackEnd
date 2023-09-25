public class Cow extends Animal {
    protected Cow(String name, int age) {
        super(name, age);
    }

    @Override
    protected void cry() {
        System.out.println("음메");
    }
}
