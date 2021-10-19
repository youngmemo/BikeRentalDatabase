package models;

import java.util.ArrayList;

public class EquipmentCategory {
    private int id;
    private String name;
    private boolean isFreeToRentForOneDay;
    private int rentPrice;
    private int maxTotalDaysForRent;
    private String img;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isFreeToRentForOneDay() {
        return isFreeToRentForOneDay;
    }

    public void setFreeToRentForOneDay(boolean freeToRentForOneDay) {
        isFreeToRentForOneDay = freeToRentForOneDay;
    }

    public int getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(int rentPrice) {
        this.rentPrice = rentPrice;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getMaxTotalDaysForRent() {
        return maxTotalDaysForRent;
    }

    public void setMaxTotalDaysForRent(int maxTotalDaysForRent) {
        this.maxTotalDaysForRent = maxTotalDaysForRent;
    }


}
