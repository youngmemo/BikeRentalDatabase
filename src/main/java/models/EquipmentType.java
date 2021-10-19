package models;

import java.util.ArrayList;

public class EquipmentType {
    private int id;
    private String name;
    private ArrayList<EquipmentCategory> equipmentCategories;

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

    public ArrayList<EquipmentCategory> getEquipmentCategories() {
        return equipmentCategories;
    }

    public void setEquipmentCategories(ArrayList<EquipmentCategory> equipmentCategories) {
        this.equipmentCategories = equipmentCategories;
    }

    @Override
    public String toString() {
        return "EquipmentType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
