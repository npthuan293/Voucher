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
    public void InsertDIENKIEN(String detail){
        cls =  new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "detail";
        value[0] = detail;
        cls.excuteDataReader("InsertDIEUKIEN", value, nparameter);
        cls.Disconnect();
    }  
    public Object[][] LoadDetail() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadDetail");
        cls.Disconnect();
        return result;
    }    
}
