public class Dog extends Animal {
    protected Dog(String name, int age) {
        super(name, age);
    }

    @Override
    protected void cry() {
        System.out.println("멍멍");
    }
}
