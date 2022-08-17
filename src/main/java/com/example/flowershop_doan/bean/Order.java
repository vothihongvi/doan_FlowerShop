package com.example.flowershop_doan.bean;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable {
    private int id;
    private String dateDelivery;
    private String periodDelivery;
    private String addressDelivery;
    private String district;
    private String nameCustomer;
    private String emailCustomer;
    private String phoneCustomer;
    private String contentCard;
    private String noteForStaff;
    private String noteForDeliver;
    private String payments;
    private int status;

    public Order() {
    }

    public Order(int id, String dateDelivery, String periodDelivery, String addressDelivery, String district, String nameCustomer, String emailCustomer, String phoneCustomer, String contentCard, String noteForStaff, String noteForDeliver, String payments, int status) {
        this.id = id;
        this.dateDelivery = dateDelivery;
        this.periodDelivery = periodDelivery;
        this.addressDelivery = addressDelivery;
        this.district = district;
        this.nameCustomer = nameCustomer;
        this.emailCustomer = emailCustomer;
        this.phoneCustomer = phoneCustomer;
        this.contentCard = contentCard;
        this.noteForStaff = noteForStaff;
        this.noteForDeliver = noteForDeliver;
        this.payments = payments;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDateDelivery() {
        return dateDelivery;
    }

    public void setDateDelivery(String dateDelivery) {
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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
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
}
