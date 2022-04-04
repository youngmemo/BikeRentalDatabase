package models;

import java.util.Date;

public class Rent {
    private int id;
    private Date startRentDate;
    private Date endRentDate;
    private boolean isPaid;
    private EquipmentCategory equipmentCategory;
    private User user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getStartRentDate() {
        return startRentDate;
    }

    public void setStartRentDate(Date startRentDate) {
        this.startRentDate = startRentDate;
    }

    public Date getEndRentDate() {
        return endRentDate;
    }

    public void setEndRentDate(Date endRentDate) {
        this.endRentDate = endRentDate;
    }

    public boolean isPaid() {
        return isPaid;
    }

    public void setPaid(boolean paid) {
        isPaid = paid;
    }

    public EquipmentCategory getEquipment() {
        return equipmentCategory;
    }

    public void setEquipment(EquipmentCategory equipment) {
        this.equipmentCategory = equipment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }


}