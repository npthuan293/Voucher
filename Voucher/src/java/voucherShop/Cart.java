/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

import java.util.Collection;
import java.util.Iterator;
import java.util.TreeMap;

/**
 *
 * @author PhuThuan
 */
public class Cart {
    TreeMap<String, ShopCart> data;
    
    public Cart(){
        data = new TreeMap<String,ShopCart>();
    }
    
    public Cart(TreeMap<String,ShopCart> data){
        this.data = data;
    }
    
    public int size(){
        return data.size();
    }
    
    public double total(){
        Collection<ShopCart> lsp = data.values();
        Iterator<ShopCart> it = lsp.iterator();
        double total = 0;
        ShopCart s = null;
        while (it.hasNext()){
            s = it.next();
            total += (s.getCount() * s.getPrice());
        }
        return total;
    }
    
    public boolean add(ShopCart s){
        ShopCart s1 = data.get(s.getID());
        if (s1 == null){
            data.put(s.getID(),s);
            return true;
        }
        return false;
    }
    
    public boolean del(String id){
        return data.remove(id) == null ? false : true;
    }
    
    public boolean update (String id, int count){
        ShopCart s = data.get(id);
        if (s != null){
            s.setCount(count);
            return true;
        }
        return false;
    }
}
