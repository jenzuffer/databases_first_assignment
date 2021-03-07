package DTO;

public class Dog {
    private int petID;
    private String petName;
    private int petAge;
    private int petVetID;
    private int barkPitch;

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

    public int getBarkPitch() {
        return barkPitch;
    }

    public Dog(int petID, String petName, int petAge, int petVetID, int barkPitch) {
        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.barkPitch = barkPitch;
    }
    public Dog( String petName, int petAge, int petVetID, int barkPitch) {
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.barkPitch = barkPitch;
    }
}
