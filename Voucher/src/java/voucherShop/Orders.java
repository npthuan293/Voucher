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
public class Orders {
    Connect cls;
    public Orders(){
    }
    public Object[][] LoadOrderByMaDH(String MaDH) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "madh";
        value[0] = MaDH;
        Object[][] result = cls.loadData("LoadOrderByMaDH", value, nparameter);
        cls.Disconnect();
        return result;
    }
    public Object[][] LoadOrderByUsername(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        value[0] = username;
        Object[][] result = cls.loadData("LoadOrderByUsername", value, nparameter);
        cls.Disconnect();
        return result;
    }    
    public Object[][] LoadCTDHByMaDH(String MaDH) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "madh";
        value[0] = MaDH;
        Object[][] result = cls.loadData("LoadCTDHByMaDH", value, nparameter);
        cls.Disconnect();
        return result;
    }
    public Object[][] LoadOrder() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadOrder");
        cls.Disconnect();
        return result;
    }
    public Object[][] SearchOrder(String input) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "input";
        value[0] = input;
        Object[][] result = cls.loadData("SearchOrder", value, nparameter);
        cls.Disconnect();
        return result;
    }
    public void DeleteOrder(String madh) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "madh";
        value[0] = madh;
        cls.executeQuery("DeleteOrder", value, nparameter);
        cls.Disconnect();
    } 
    public void ChangeStatus(String madh) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "madh";
        value[0] = madh;
        cls.executeQuery("DeleteOrder", value, nparameter);
        cls.Disconnect();
    }     
}
