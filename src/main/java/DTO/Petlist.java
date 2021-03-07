package DTO;

import java.util.ArrayList;
import java.util.List;

public class Petlist {
    private List<Bird> birdList = new ArrayList<>();
    private List<Cat> catList = new ArrayList<>();
    private List<Dog> dogList = new ArrayList<>();
    private List<Fish> fishList = new ArrayList<>();
    private List<Horse> horseList = new ArrayList<>();
    private List<Reptile> reptileList = new ArrayList<>();
    private List<Turtle> turtleList = new ArrayList<>();

    public List<Bird> getBirdList() {
        return birdList;
    }



    public List<Cat> getCatList() {
        return catList;
    }



    public List<Dog> getDogList() {
        return dogList;
    }



    public List<Fish> getFishList() {
        return fishList;
    }



    public List<Horse> getHorseList() {
        return horseList;
    }



    public List<Reptile> getReptileList() {
        return reptileList;
    }


    public List<Turtle> getTurtleList() {
        return turtleList;
    }

}
