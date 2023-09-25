abstract public class Animal {
    private final String name;
    private final int age;

    protected Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }

    protected void getInfo() {
        System.out.printf("이름: %s, 나이: %d%n", this.name, this.age);
    }

    abstract protected void cry();
}
