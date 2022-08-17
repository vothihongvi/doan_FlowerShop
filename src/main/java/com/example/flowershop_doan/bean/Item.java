package com.example.flowershop_doan.bean;

public class Item {
    public int productID;
    public String name;
    public String image;
    public String description;
    public int priceSell;
    public int priceOld;
    public int quantity;

    public Item(int productID, String name, String image, String description, int priceSell, int priceOld, int quantity) {
        this.productID = productID;
        this.name = name;
        this.image = image;
        this.description = description;
        this.priceSell = priceSell;
        this.priceOld = priceOld;
        this.quantity = quantity;
    }

    public int getPriceSell() {
        return priceSell;
    }

    public void setPriceSell(int priceSell) {
        this.priceSell = priceSell;
    }

    public int getPriceOld() {
        return priceOld;
    }

    public void setPriceOld(int priceOld) {
        this.priceOld = priceOld;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
