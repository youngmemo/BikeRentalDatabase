package models;

public class EquipmentCategory {
    private int id;
    private String name;
    private boolean isFreeToRentForOneDay;
    private int rentPrice;
    private int maxTotalDaysForRent;
    private EquipmentType equipmentType;

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

    public int getMaxTotalDaysForRent() {
        return maxTotalDaysForRent;
    }

    public void setMaxTotalDaysForRent(int maxTotalDaysForRent) {
        this.maxTotalDaysForRent = maxTotalDaysForRent;
    }

    public EquipmentType getEquipmentType() {
        return equipmentType;
    }

    public void setEquipmentType(EquipmentType equipmentType) {
        this.equipmentType = equipmentType;
    }
}
