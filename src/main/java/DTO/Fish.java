package DTO;

public class Fish {
    private int petID;
    private String petName;
    private int petAge;
    private int petVetID;

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

    public int getFreshwater() {
        return freshwater;
    }

    private int freshwater;

    public Fish(int petID, String petName, int petAge, int petVetID, int freshWater) {
        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.freshwater = freshWater;
    }
}
