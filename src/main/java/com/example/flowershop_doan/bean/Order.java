package com.example.flowershop_doan.bean;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable {

    private int id;
    private Date dateDelivery;
    private String periodDelivery;
    private String addressDelivery;
    private int deliveryID;
    private String nameCustomer;
    private String emailCustomer;
    private String phoneCustomer;
    private String otherContactCustomer;
    private String contentCard;
    private String noteForStaff;
    private String noteForDeliver;
    private String payments;
    private int status;
    private Date createdAt;
    private Date updatedAt;

    public Order() {
    }

    public Order(int id, Date dateDelivery, String periodDelivery, String addressDelivery,
                 int deliveryID, String nameCustomer, String emailCustomer, String phoneCustomer,
                 String otherContactCustomer, String contentCard, String noteForStaff, String noteForDeliver,
                 String payments, int status, Date createdAt, Date updatedAt) {
        this.id = id;
        this.dateDelivery = dateDelivery;
        this.periodDelivery = periodDelivery;
        this.addressDelivery = addressDelivery;
        this.deliveryID = deliveryID;
        this.nameCustomer = nameCustomer;
        this.emailCustomer = emailCustomer;
        this.phoneCustomer = phoneCustomer;
        this.otherContactCustomer = otherContactCustomer;
        this.contentCard = contentCard;
        this.noteForStaff = noteForStaff;
        this.noteForDeliver = noteForDeliver;
        this.payments = payments;
        this.status = status;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateDelivery() {
        return dateDelivery;
    }

    public void setDateDelivery(Date dateDelivery) {
        this.dateDelivery = dateDelivery;
    }

    public String getPeriodDelivery() {
        return periodDelivery;
    }

    public void setPeriodDelivery(String periodDelivery) {
        this.periodDelivery = periodDelivery;
    }

    public String getAddressDelivery() {
        return addressDelivery;
    }

    public void setAddressDelivery(String addressDelivery) {
        this.addressDelivery = addressDelivery;
    }

    public int getDeliveryID() {
        return deliveryID;
    }

    public void setDeliveryID(int deliveryID) {
        this.deliveryID = deliveryID;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public String getEmailCustomer() {
        return emailCustomer;
    }

    public void setEmailCustomer(String emailCustomer) {
        this.emailCustomer = emailCustomer;
    }

    public String getPhoneCustomer() {
        return phoneCustomer;
    }

    public void setPhoneCustomer(String phoneCustomer) {
        this.phoneCustomer = phoneCustomer;
    }

    public String getOtherContactCustomer() {
        return otherContactCustomer;
    }

    public void setOtherContactCustomer(String otherContactCustomer) {
        this.otherContactCustomer = otherContactCustomer;
    }

    public String getContentCard() {
        return contentCard;
    }

    public void setContentCard(String contentCard) {
        this.contentCard = contentCard;
    }

    public String getNoteForStaff() {
        return noteForStaff;
    }

    public void setNoteForStaff(String noteForStaff) {
        this.noteForStaff = noteForStaff;
    }

    public String getNoteForDeliver() {
        return noteForDeliver;
    }

    public void setNoteForDeliver(String noteForDeliver) {
        this.noteForDeliver = noteForDeliver;
    }

    public String getPayments() {
        return payments;
    }

    public void setPayments(String payments) {
        this.payments = payments;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", dateDelivery=" + dateDelivery +
                ", periodDelivery='" + periodDelivery + '\'' +
                ", addressDelivery='" + addressDelivery + '\'' +
                ", deliveryID=" + deliveryID +
                ", nameCustomer='" + nameCustomer + '\'' +
                ", emailCustomer='" + emailCustomer + '\'' +
                ", phoneCustomer='" + phoneCustomer + '\'' +
                ", otherContactCustomer='" + otherContactCustomer + '\'' +
                ", contentCard='" + contentCard + '\'' +
                ", noteForStaff='" + noteForStaff + '\'' +
                ", noteForDeliver='" + noteForDeliver + '\'' +
                ", payments='" + payments + '\'' +
                ", status=" + status +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
