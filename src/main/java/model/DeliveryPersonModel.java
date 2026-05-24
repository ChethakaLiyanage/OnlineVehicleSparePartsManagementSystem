package model;

public class DeliveryPersonModel {
    private int deliverypersonid;
    private String deliverypersonname;
    private String deliverypersonemail;
    private String deliverypersonusername;
    private String deliverypersonphone;
    private String deliverypersonpassword;

    public DeliveryPersonModel(int deliverypersonid, String deliverypersonname, String deliverypersonemail,
                         String deliverypersonusername, String deliverypersonphone, String deliverypersonpassword) {
        this.deliverypersonid = deliverypersonid;
        this.deliverypersonname = deliverypersonname;
        this.deliverypersonemail = deliverypersonemail;
        this.deliverypersonusername = deliverypersonusername;
        this.deliverypersonphone = deliverypersonphone;
        this.deliverypersonpassword = deliverypersonpassword;
    }

    public int getDeliverypersonid() {
        return deliverypersonid;
    }

    public String getDeliverypersonname() {
        return deliverypersonname;
    }

    public String getDeliverypersonemail() {
        return deliverypersonemail;
    }

    public String getDeliverypersonusername() {
        return deliverypersonusername;
    }

    public String getDeliverypersonphone() {
        return deliverypersonphone;
    }

    public String getDeliverypersonpassword() {
        return deliverypersonpassword;
    }
}
