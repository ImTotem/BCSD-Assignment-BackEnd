import java.util.ArrayList;
import java.util.List;

public class Farm {
    private final List<Animal> animals = new ArrayList<>();

    public void addAnimal(Animals animal, String name, int age) {
        Animal anim;
        switch (animal) {
            case DOG:
                anim = new Dog(name, age);
                break;
            case COW:
                anim = new Cow(name, age);
                break;
            case CAT:
            default:
                anim = new Cat(name, age);
                break;
        }

        animals.add(anim);
    }

    public void cryAnimals() {
        animals.forEach(Animal::cry);
    }

    public void getAnimals() {
        animals.forEach(Animal::getInfo);
    }
}
