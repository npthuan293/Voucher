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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class Member {
    Connect cls;
    
    public Member() {
    }

    public void InsertMember(String username, String hoten, String diachi, String sdt,String email,String ngaysinh,String CMND,String ngaydk,String gioitinh) throws ParseException {
        cls = new Connect();
        int nparameter = 10;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "ma_mem";
        name[1] = "username";
        name[2] = "hoten";
        name[3] = "diachi";
        name[4] = "sdt";
        name[5] = "email";
        name[6] = "ngaysinh";
        name[7] = "CMND";
        name[8] = "ngaydk";
        name[9] = "gioitinh";
        value[0] = cls.GetID("M", 4, "GetID_MEMBER");
        value[1] = username;
        value[2] = hoten;
        value[3] = diachi;
        value[4] = sdt;
        value[5] = email;
        value[6] = ngaysinh;
        value[7] = CMND;
        value[8] = cls.toDate(ngaydk);
        value[9] = gioitinh;
        cls.excuteDataReader("InsertMember", value, nparameter);
        cls.Disconnect();
    }
    public void UpdateMember(String hoten,String username, String email, String gioitinh, String ngaysinh, String diachi, String CMND, String sdt) {
        cls = new Connect();
        int nparameter = 9;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        name[1] = "sdt";
        name[2] = "hoten";
        name[3] = "email";
        name[4] = "gioitinh";
        name[5] = "ngaysinh";
        name[6] = "diachi";
        name[7] = "cmnd";
        value[0] = username;
        value[1] = sdt;
        value[2] = hoten;
        value[3] = email;
        value[4] = gioitinh;
        value[5] = ngaysinh;
        value[6] = diachi;
        value[7] = CMND;
        cls.executeQuery("UpdateMember", value, nparameter);
        cls.Disconnect();
    }    
    public Object[][] LoadMemberAccount() {
        cls = new Connect();
        Object[][] result = cls.loadData("LoadMemberAccount");
        cls.Disconnect();
        return result;
    }    
    public Object[][] LoadMemberByUsername(String username) {
        cls = new Connect();
        int nparameter = 1;
        String[] name = new String[nparameter];
        Object[] value = new Object[nparameter];
        name[0] = "username";
        value[0] = username;
        Object[][] result = cls.loadData("LoadMemberByUsername", value, nparameter);
        cls.Disconnect();
        return result;
    }    
//    public static void main(String arg[]) throws ParseException{
//        Connect cls = new Connect();
//        Member e = new Member();
//        e.InsertMember("huyvu1", "Vu Huy", "HCM", "096969696969", "huyvd@gmail.com", "1994/03/29", "1234567", "2014/12/12", "Nu");
//        
//    }
}
