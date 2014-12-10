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
    
    public void InsertAccount(String username,String pass){
        cls =  new Connect();
        int nparameter = 2;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "username";
        name[1] = "password";
        value[0] = username;
        value[1] = pass;
        cls.excuteDataReader("InsertAccount", value, nparameter);
        cls.Disconnect();
    }
    public void UpdateAccount(String nameid,String username, String pass, String email, String sex,String date,String address) {
        cls = new Connect();
        int nparameter = 7;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        name[1] = "pass";
        name[2] = "hoten";
        name[3] = "email";
        name[4] = "gioitinh";
        name[5] = "ngaysinh";
        name[6] = "diachi";
        value[0] = username;
        value[1] = pass;
        value[2] = nameid;
        value[3] = email;
        value[4] = sex;
        value[5] = date;
        value[6] = address;
        cls.executeQuery("UpdateAccount", value, nparameter);
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
    public Object[][] LoadMemberAccount() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadMemberAccount");
        cls.Disconnect();
        return result;
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

