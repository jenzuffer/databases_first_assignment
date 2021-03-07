package datalayer;

import DTO.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

public class dataHandler {
    private static Connection conn;

    public void createConnection() {
        String url = "jdbc:postgresql://172.27.188.39:5432/postgres";
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Properties props = new Properties();
        props.setProperty("user", "davide");
        props.setProperty("password", "jw8s0F4");
        try {
            conn = DriverManager.getConnection(url, props);
            conn.setAutoCommit(true);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void closeConnection() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public Petlist selectAllPets() {
        Petlist animalList = new Petlist();


        String sql = "select * from pets;";
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try (ResultSet result = statement.executeQuery()) {
            while (result.next()) {
                int petID = result.getInt(1);
                String petName = result.getString(2);
                int petAge = result.getInt(3);
                int petVetID = result.getInt(4);
                int livecount = result.getInt(5);
                if (livecount != 0) {
                    Cat cat = new Cat(petID, petName, petAge, petVetID, livecount);
                    animalList.getCatList().add(cat);
                    continue;
                }
                int barkPitch = result.getInt(6);
                if (barkPitch != 0) {
                    Dog dog = new Dog(petID, petName, petAge, petVetID, barkPitch);
                    animalList.getDogList().add(dog);
                    continue;
                }
                String singing_frequency = result.getString(7);
                if (singing_frequency != null) {
                    Bird bird = new Bird(petID, petName, petAge, petVetID, singing_frequency);
                    animalList.getBirdList().add(bird);
                    continue;
                }
                int freshWater = result.getInt(8);
                if (freshWater != 0) {
                    Fish fish = new Fish(petID, petName, petAge, petVetID, freshWater);
                    animalList.getFishList().add(fish);
                    continue;
                }
                int popularity = result.getInt(9);
                if (popularity != 0) {
                    Horse horse = new Horse(petID, petName, petAge, petVetID, popularity);
                    animalList.getHorseList().add(horse);
                    continue;
                }
                int eggcount = result.getInt(10);
                if (eggcount != 0) {
                    Reptile reptile = new Reptile(petID, petName, petAge, petVetID, eggcount);
                    animalList.getReptileList().add(reptile);
                    continue;
                }
                int slowness = result.getInt(11);
                if (slowness != 0) {
                    Turtle turtle = new Turtle(petID, petName, petAge, petVetID, slowness);
                    animalList.getTurtleList().add(turtle);
                }
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return animalList;
    }


    public void insertCallCat(Cat cat, int careTakerID) {
        String sql = "call INSERT_CAT (?, ?, ?, ?, ?);";
        PreparedStatement statement = null;
        try {
            statement = conn.prepareCall(sql);
            statement.setString(1, cat.getPetName());
            statement.setInt(2, cat.getPetAge());
            statement.setInt(3, cat.getPetVetID());
            statement.setInt(4, cat.getLivecount());
            statement.setInt(5, careTakerID);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            statement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void insertCallDog(Dog dog, int careTakerID) {
        String sql = "call INSERT_DOG (?, ?, ?, ?, ?);";
        PreparedStatement statement = null;
        try {
            statement = conn.prepareCall(sql);
            statement.setString(1, dog.getPetName());
            statement.setInt(2, dog.getPetAge());
            statement.setInt(3, dog.getPetVetID());
            statement.setInt(4, dog.getBarkPitch());
            statement.setInt(5, careTakerID);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        try {
            statement.execute();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
