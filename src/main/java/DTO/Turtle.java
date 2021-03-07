package DTO;

public class Turtle {
    private int petID;
    private String petName;
    private int petAge;

    public int getPetID() {
        return petID;
    }

    public String getPetName() {
        return petName;
    }

    public int getPetAge() {
        return petAge;
    }

    public int getPetVetID() {
        return petVetID;
    }

    public int getSlowness() {
        return slowness;
    }

    private int petVetID;
    private int slowness;

    public Turtle(int petID, String petName, int petAge, int petVetID, int slowness) {
        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.slowness = slowness;
    }
}
