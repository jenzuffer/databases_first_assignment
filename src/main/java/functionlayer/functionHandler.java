package functionlayer;

import DTO.*;
import datalayer.dataHandler;

import java.util.List;

public class functionHandler {


    public static void main(String[] args) {
        dataHandler datahandler = new dataHandler();
        try {
            datahandler.createConnection();
            Petlist petlist = datahandler.selectAllPets();
            for (Turtle turtles : petlist.getTurtleList()) {
                System.out.println("turtle name: " + turtles.getPetName());
            }
            for (Reptile reptile : petlist.getReptileList()) {
                System.out.println("reptile name: " + reptile.getPetName());
            }
            for (Horse horse : petlist.getHorseList()) {
                System.out.println("horse name: " + horse.getPetName());
            }
            for (Fish fish : petlist.getFishList()) {
                System.out.println("fish name: " + fish.getPetName());
            }
            for (Bird bird : petlist.getBirdList()) {
                System.out.println("bird name: " + bird.getPetName());
            }
            for (Dog dog : petlist.getDogList()) {
                System.out.println("dog name: " + dog.getPetName());
            }
            for (Cat cat : petlist.getCatList()) {
                System.out.println("cat name: " + cat.getPetName());
            }

            Cat cat = new Cat("johna", 8, 1, 8);
            datahandler.insertCallCat(cat, 1);
            Dog dog = new Dog("brotus", 4, 2, 6);
            datahandler.insertCallDog(dog, 8);
        } finally {
            datahandler.closeConnection();
        }
    }
}
