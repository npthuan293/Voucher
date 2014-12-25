/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package voucherShop;

import java.text.ParseException;

/**
 *
 * @author PhuThuan
 */
public class Voucher {
    Connect cls;
    public Voucher(){
    }
public boolean CheckVoucher(String tenvoucher, String thongtin, String soluong, String giaban, 
        String thoihanvoucher, String soluongdaban, String hinhanh, String dieukien, String diemnoibat) {
        cls = new Connect();
        int nparameter = 9;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[2] = "tenvoucher";
        value[2] = tenvoucher;
        name[3] = "thongtin";
        value[3] = thongtin;
        name[4] = "soluong";
        value[4] = soluong;
        name[5] = "giaban";
        value[5] = giaban;
        name[6] = "thoihanvoucher";
        value[6] = thoihanvoucher;
        name[7] = "soluongdaban";
        value[7] = soluongdaban;
        name[8] = "hinhanh";
        value[8] = hinhanh;
        name[9] = "dieukien";
        value[9] = dieukien;
        name[10] = "diemnoibat";
        value[10] = diemnoibat;
        Object[][] result = cls.loadData("CheckVoucher", value, nparameter);
        cls.Disconnect();
        if (result.length > 0)
            return true;
        return false;
    }
    public void InsertVoucher(String madm, String tenvoucher, String thongtin, String soluong, String giaban, String thoihanvoucher, String soluongdaban, String hinhanh, String dieukien, String diemnoibat)throws ParseException{
        cls =  new Connect();
        int nparameter = 11;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];     
        name[0] = "mavoucher";
        name[1] = "madm";
        name[2] = "tenvoucher";
        name[3] = "thongtin";
        name[4] = "soluong";
        name[5] = "giaban";
        name[6] = "thoihanvouher";
        name[7] = "soluongdaban";
        name[8] = "hinhanh";
        name[9] = "dieukien";
        name[10] = "diemnoibat";
        if (madm.equals("DL")){
             value[0] = cls.GetID(madm, 3, "GetID_VoucherByDL");
        }
        else if (madm.equals("AU"))
        {
            value[0] = cls.GetID(madm, 3, "GetID_VoucherByAU");
        }
        else if (madm.equals("GT"))
        {
            value[0] = cls.GetID(madm, 3, "GetID_VoucherByGT");
        }
        else
        {
            value[0] = cls.GetID(madm, 3, "GetID_VoucherBySP");
        }
        value[1] = madm;
        value[2] = tenvoucher;
        value[3] = thongtin;
        value[4] = soluong;
        value[5] = giaban;
        value[6] = thoihanvoucher;
        value[7] = soluongdaban;
        value[8] = hinhanh;
        value[9] = dieukien;
        value[10] = diemnoibat;
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
    public Object[][] LoadDetailVoucher() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadDetailVoucher");
        cls.Disconnect();
        return result;
    }
    public Object[][] LoadVoucherByDM(String Ma_DM){
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "MADM";
        value[0] = Ma_DM;
        Object[][] result = cls.loadData("LoadVoucherByDM", value, nparameter);
        cls.Disconnect();
        return result;
    }
    public void DeleteVoucherByMAVOUCHER(String MAVOUCHER) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "MAVOUCHER";
        value[0] = MAVOUCHER;
        cls.executeQuery("DeleteVoucherByMAVOUCHER", value, nparameter);
        cls.Disconnect();
    }
    }
