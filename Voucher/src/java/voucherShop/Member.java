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
import java.text.SimpleDateFormat;
import java.util.Date;
public class Member {
    Connect cls;
    
    public Member() {
    }

    public void InsertMember(String ma_mem,String username, String hoten, String diachi, String sdt,String email,String ngaysinh,String CMND,String ngaydk,String gioitinh) {
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
        value[0] = ma_mem;
        value[1] = username;
        value[2] = hoten;
        value[3] = diachi;
        value[4] = sdt;
        value[5] = email;
        value[6] = ngaysinh;
        value[7] = CMND;
        value[8] = ngaydk;
        value[9] = gioitinh;
        cls.excuteDataReader("InsertMember", value, nparameter);
        cls.Disconnect();
    }    
    public static void main(String arg[]){
        Connect cls = new Connect();
        Member e = new Member();
                    SimpleDateFormat timeFormat = new SimpleDateFormat("dd/MM/yyyy");
                    Date today=new Date(System.currentTimeMillis());
                    String ngaydk = timeFormat.format(today.getTime());    
                    System.out.print(ngaydk);
        //e.InsertMember("M001", "admin", "Nguyen", "HCM", "0909", "oc@gmail.com", "1994/03/29", "2644", "2014/12/2", "Nam");
    }
}
