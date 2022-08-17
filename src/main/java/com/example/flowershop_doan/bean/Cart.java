package com.example.flowershop_doan.bean;

import java.util.ArrayList;

public class Cart {
    public ArrayList<Item> cart;

    public Cart() {
        this.cart = new ArrayList<>();
    }

    public void addItem(Item item) {
        //Nếu món hàng đã có trong giỏ
        //thì cập nhập lại số lượng
        boolean isDuplicate = false;
        for (Item i : cart) {
            if (i.getProductID() == item.getProductID()) {
                isDuplicate = true;
                i.setQuantity(i.getQuantity() + item.getQuantity());
                break;
            }
        }
        if (isDuplicate == false) cart.add(item);
    }


    public int getTotalQuantity() {
        int result = 0;
        for (Item item : this.getItems()) {
            result += item.getQuantity();
        }
        return result;
    }

    public double getTotalPriceSell() {
        double amount = 0;
        for (Item item : cart) {
            amount += item.getPriceSell() * item.getQuantity();
        }
        return amount;
    }
    public double getTotalPriceOld() {
        double amount = 0;
        for (Item item : cart) {
            amount += item.getPriceOld() * item.getQuantity();
        }
        return amount;
    }
    public ArrayList<Item> getItems() {
        return cart;
    }

}
