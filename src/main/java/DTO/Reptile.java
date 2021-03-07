package DTO;

public class Reptile {
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

    public int getEggcount() {
        return eggcount;
    }

    private int petVetID;
    private int eggcount;

    public Reptile(int petID, String petName, int petAge, int petVetID, int eggcount) {
        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.eggcount = eggcount;
    }
}
