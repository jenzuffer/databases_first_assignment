package DTO;

public class Bird {
    private int petID;
    private String petName;
    private int petAge;
    private int petVetID;
    private String singing_frequency;

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

    public String getSinging_frequency() {
        return singing_frequency;
    }

    public Bird(int petID, String petName, int petAge, int petVetID, String singing_frequency) {

        this.petID = petID;
        this.petName = petName;
        this.petAge = petAge;
        this.petVetID = petVetID;
        this.singing_frequency = singing_frequency;
    }
}
