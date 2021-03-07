package DTO;

public class Cat {

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

    public int getLivecount() {
        return livecount;
    }

    private int livecount;
    public Cat(int petID, String petName, int petAge, int petVetID, int livecount) {
        this.livecount = livecount;
        this.petAge = petAge;
        this.petID = petID;
        this.petName = petName;
        this.petVetID = petVetID;
    }

    public Cat(String petName, int petAge, int petVetID, int livecount) {
        this.livecount = livecount;
        this.petAge = petAge;
        this.petName = petName;
        this.petVetID = petVetID;
    }
}
