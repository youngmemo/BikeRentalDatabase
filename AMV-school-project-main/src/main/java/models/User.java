package models;

public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String tlf;
    private boolean is_union;
    private boolean is_superuser;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTlf() {
        return tlf;
    }

    public void setTlf(String tlf) {
        this.tlf = tlf;
    }

    public boolean is_union() {
        return is_union;
    }

    public void set_union(boolean is_union) {
        this.is_union = is_union;
    }

    public boolean is_superuser() {
        return is_superuser;
    }

    public void set_superuser(boolean is_superuser) {
        this.is_superuser = is_superuser;
    }
}
