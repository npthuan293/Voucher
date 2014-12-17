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
    public void InsertStaff(String username, String hoten, String diachi, String sdt,String email,String ngaysinh,String CMND,String ngaydk,String gioitinh,String ngayvaolam ){
        cls = new Connect();
        int nparameter = 10;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "ma_nv";
        name[1] = "username";
        name[2] = "hoten";
        name[3] = "diachi";
        name[4] = "sdt";
        name[5] = "email";
        name[6] = "ngaysinh";
        name[7] = "CMND";
        name[8] = "ngayvaolam";
        name[9] = "gioitinh";
        value[0] = cls.GetID("NV", 3, "GetID_Staff");
        value[1] = username;
        value[2] = hoten;
        value[3] = diachi;
        value[4] = sdt;
        value[5] = email;
        value[6] = ngaysinh;
        value[7] = CMND;
        value[8] = ngayvaolam;
        value[9] = gioitinh;
        cls.excuteDataReader("InsertStaff", value, nparameter);
        cls.Disconnect();   
    }
}
