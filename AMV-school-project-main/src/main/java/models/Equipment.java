package models;

public class Equipment {
    private int id;
    private boolean is_available;
    private boolean is_damaged;
    private EquipmentCategory equipmentCategory;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean is_available() {
        return is_available;
    }

    public void setIs_available(boolean is_available) {
        this.is_available = is_available;
    }

    public boolean is_damaged() {
        return is_damaged;
    }

    public void setIs_damaged(boolean is_damaged) {
        this.is_damaged = is_damaged;
    }

    public EquipmentCategory getEquipmentCategory() {
        return equipmentCategory;
    }

    public void setEquipmentCategory(EquipmentCategory equipmentCategory) {
        this.equipmentCategory = equipmentCategory;
    }
}
