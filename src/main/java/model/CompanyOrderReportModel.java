package model;

public class CompanyOrderReportModel {

    // Fields
    private String request_id;
    private String spare_id;
    private int adminid;
    private int supplierid;
    private int amount;
    private String orderdate;
    private String status;
    private String reason;

    private String spare_name;
    private String category;

    private String suppliername;
    private String supplieremail;

    private String action_status;

    // Constructor
    public CompanyOrderReportModel(String request_id, String spare_id, int adminid, int supplierid,
                                   int amount, String orderdate, String status, String reason,
                                   String spare_name, String category,
                                   String suppliername, String supplieremail,
                                   String action_status) {
        this.request_id = request_id;
        this.spare_id = spare_id;
        this.adminid = adminid;
        this.supplierid = supplierid;
        this.amount = amount;
        this.orderdate = orderdate;
        this.status = status;
        this.reason = reason;
        this.spare_name = spare_name;
        this.category = category;
        this.suppliername = suppliername;
        this.supplieremail = supplieremail;
        this.action_status = action_status;
    }

    // Getters for JSP use
    public String getrequest_id() {
        return request_id;
    }

    public String getspare_id() {
        return spare_id;
    }

    public int getadminid() {
        return adminid;
    }

    public int getsupplierid() {
        return supplierid;
    }

    public int getamount() {
        return amount;
    }

    public String getorderdate() {
        return orderdate;
    }

    public String getstatus() {
        return status;
    }

    public String getreason() {
        return reason;
    }

    public String getspare_name() {
        return spare_name;
    }

    public String getcategory() {
        return category;
    }

    public String getsuppliername() {
        return suppliername;
    }

    public String getsupplieremail() {
        return supplieremail;
    }

    public String getaction_status() {
        return action_status;
    }
}

