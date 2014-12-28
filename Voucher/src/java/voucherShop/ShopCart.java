/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

/**
 *
 * @author PhuThuan
 */
public class ShopCart {
    String id;
    String name;
    int count;
    double price;
    public ShopCart(){
    }
    public ShopCart(String id, String name,int count, double price){
        super();
        
        this.id = id;
        this.name = name;
        this.count = count;
        this.price = price;
    }
    public String getID(){
        return id;
    }
    public void setID(String ID){
        this.id = id;
    }
     public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }    
    public int getCount(){
        return count;
    }
    public void setCount(int count){
        this.count = count;
    }
    public double getPrice(){
        return price;
    }
    public void setPrice(double price){
        this.price = price;
    }    
}
