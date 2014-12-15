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
public class Staff {
    Connect cls;
    
    public Staff() {
    }
    public Object[][] LoadStaffAccount() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadStaffAccount");
        cls.Disconnect();
        return result;
    }    
    public void DeleteStaff(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        value[0] = username;
        cls.executeQuery("DeleteStaff", value, nparameter);
        cls.Disconnect();
    }    
}
