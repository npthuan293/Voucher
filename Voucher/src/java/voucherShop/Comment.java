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
public class Comment {
    Connect cls;
    
    public Comment(){
    
    }
    public void InsertCMT(String username,String mavoucher,String noidung,String thoigian){
        cls =  new Connect();
        int nparameter = 5;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "mabl";
        name[1] = "username";
        name[2] = "mavoucher";
        name[3] = "noidung";
        name[4] = "thoigian";
        value[0] = cls.GetID("BL", 3, "GetID_BL");
        value[1] = username;
        value[2] = mavoucher;
        value[3] = noidung;
        value[4] = thoigian;
        cls.excuteDataReader("InsertCMT", value, nparameter);
        cls.Disconnect();
    }    
    public Object[][] LoadCommentByMaV(String mavoucher) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "mavoucher";
        value[0] = mavoucher;
        Object[][] result = cls.loadData("LoadCommentByMaV",value,nparameter);
        cls.Disconnect();
        return result;
    }    
}
