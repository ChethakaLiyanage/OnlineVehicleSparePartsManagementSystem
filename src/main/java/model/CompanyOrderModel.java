package model;

public class CompanyOrderModel {
    private String request_id;
    private String spare_id;
    private int adminid;
    private int supplierid;
    private int amount;
    private String status;
    private String reason;
    private String orderdate;

    public CompanyOrderModel(String request_id, String spare_id, int adminid, int supplierid, int amount, String status, String reason, String orderdate) {
        this.request_id = request_id;
        this.spare_id = spare_id;
        this.adminid = adminid;
        this.supplierid = supplierid;
        this.amount = amount;
        this.status = status;
        this.reason = reason;
        this.orderdate = orderdate;
    }

    // Getters
    public String getRequest_id() {
        return request_id;
    }

    public String getSpare_id() {
        return spare_id;
    }

    public int getAdminid() {
        return adminid;
    }

    public int getSupplierid() {
        return supplierid;
    }

    public int getAmount() {
        return amount;
    }

    public String getStatus() {
        return status;
    }

    public String getReason() {
        return reason;
    }

    public String getOrderdate() {
        return orderdate;
    }

    // Setters
    public void setRequest_id(String request_id) {
        this.request_id = request_id;
    }

    public void setSpare_id(String spare_id) {
        this.spare_id = spare_id;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }

    public void setSupplierid(int supplierid) {
        this.supplierid = supplierid;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }
}
