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
public class Voucher {
    Connect cls;
    public Voucher(){
    }

    public void InsertVoucher(String mavoucher,String imgfile){
        cls =  new Connect();
        int nparameter = 2;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "mavoucher";
        name[1] = "imgfile";
        value[0] = mavoucher;
        value[1] = imgfile;
        cls.excuteDataReader("InsertVoucher", value, nparameter);
        cls.Disconnect();
    }    
}
