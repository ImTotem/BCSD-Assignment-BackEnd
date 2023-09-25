public class Main {
    public static void main(String[] args) {
        Farm farm = new Farm();

        farm.addAnimal(Animals.CAT, "고양이", 1);
        farm.addAnimal(Animals.DOG, "강아지", 2);
        farm.addAnimal(Animals.COW, "소", 3);

        farm.cryAnimals();
        farm.getAnimals();
    }
}