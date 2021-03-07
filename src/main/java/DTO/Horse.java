package DTO;

public class Horse {
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

    public int getPopularity() {
        return popularity;
    }

    private int popularity;

    public Horse(int petID, String petName, int petAge, int petVetID, int popularity) {
        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.popularity = popularity;
    }
}
