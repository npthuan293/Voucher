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
import java.sql.ResultSet;
import java.util.Date;
public class Account {
    Connect cls;

    public Account() {
    }

    public boolean checkLogin(String username, String password) {
        try {
            cls = new Connect();
            int nparameter = 2;
            String[] name = new String[nparameter];
            Object[] value = new Object[nparameter];
            name[0] = "ausername";
            name[1] = "apassword";
            value[0] = username;
            value[1] = password;
            Object[][] rs = cls.loadData("CheckLogin", value, nparameter);
            
            cls.Disconnect();
            if (rs.length > 0) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    public boolean CheckAccount(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "ausername";
        value[0] = username;
        Object[][] result = cls.loadData("CheckAccount", value, nparameter);
        cls.Disconnect();
        if (result.length > 0)
            return true;
        return false;
    }
    
    public void InsertAccountMember(String username,String pass){
        cls =  new Connect();
        int nparameter = 2;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "username";
        name[1] = "password";
        value[0] = username;
        value[1] = pass;
        cls.excuteDataReader("InsertAccountMember", value, nparameter);
        cls.Disconnect();
    }
    public void InsertAccountStaff(String username,String pass){
        cls =  new Connect();
        int nparameter = 2;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "username";
        name[1] = "password";
        value[0] = username;
        value[1] = pass;
        cls.excuteDataReader("InsertAccountStaff", value, nparameter);
        cls.Disconnect();
    }    
    public void UpdatePass(String username, String pass) {
        cls = new Connect();
        int nparameter = 2;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        name[1] = "pass";
        value[0] = username;
        value[1] = pass;
        cls.executeQuery("UpdatePass", value, nparameter);
        cls.Disconnect();
    }
    public void UpdateKey(String username, boolean lock) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "ausername";
        value[0] = username;
        if(lock){
            cls.executeQuery("UpdateKhoa2", value, nparameter);
        }else{
            cls.executeQuery("UpdateKhoa", value, nparameter);
        }
        cls.Disconnect();
    }
//    
//    public void UpdatePassword(int id, String apassword) {
//        cls = new Connect();
//        int nparameter = 2;
//        String[] name = new String[nparameter];
//        Object[] value = new Object[nparameter];
//        name[0] = "aacountid";
//        name[1] = "apassword";
//        value[0] = id;
//        value[1] = apassword;
//        cls.executeQuery("UpdatePassword", name, value, nparameter);
//        cls.Disconnect();
//    }
//    
//    public void UpdateEmail(int id, String aemail) {
//        cls = new Connect();
//        int nparameter = 2;
//        String[] name = new String[nparameter];
//        Object[] value = new Object[nparameter];
//        name[0] = "aacountid";
//        name[1] = "aemail";
//        value[0] = id;
//        value[1] = aemail;
//        cls.executeQuery("UpdateEmail", name, value, nparameter);
//        cls.Disconnect();
//    }
    public Object[][] LoadAccountByUsername(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "ausername";
        value[0] = username;
        Object[][] result = cls.loadData("CheckAccount", value, nparameter);
        cls.Disconnect();
        return result;
    }
    public Object[][] LoadAccount() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadAccount");
        cls.Disconnect();
        return result;
    }    

    public void DeleteAccount(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        value[0] = username;
        cls.executeQuery("DeleteAccount", value, nparameter);
        cls.Disconnect();
    }    
}

