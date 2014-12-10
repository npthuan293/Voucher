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
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 *
 * @author PhuThuan
 */
public class Event {
    public Event() {
    }
    public String md5String(String message) {

        String digest = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hash = md.digest(message.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(2 * hash.length);
            for (byte b : hash) {
                sb.append(String.format("%02x", b & 0xff));
            }
            digest = sb.toString();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException ex) {
            digest = ex.toString();
        }
        return digest;
    }
    public boolean checkLogin(String username, String password) {
        try {
            Account a = new Account();
            //password = md5String(password);
            boolean result = a.checkLogin(username, password);
            if (result) {
                return true;
            }
        } catch (Exception ex) {
        }
        return false;
    }
    public boolean insertMember(String ma_mem,String username,String pass, String hoten, String diachi, String sdt,String email,String ngaysinh,String CMND,String ngaydk, String gioitinh) {
        try {
            Account a = new Account();
            Member m = new Member();
            if (!a.CheckAccount(username)) {
                //pass = md5String(pass);
                a.InsertAccount(username, pass);
                m.InsertMember(ma_mem, username, hoten, diachi, sdt, email, ngaysinh, CMND, ngaydk, gioitinh);
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {

        }
        return false;
    }
    public boolean insertAccount(String username,String pass) {
        try {
            Account a = new Account();
            Member m = new Member();
            if (!a.CheckAccount(username)) {
                a.InsertAccount(username, pass);                
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {

        }
        return false;
    }    
    public boolean updateAccount(String name,String username, String pass, String email, String sex,String date,String address) {
        try {
            Account a = new Account();
            if (!a.CheckAccount(username)) {
                //pass = md5String(pass);
                a.UpdateAccount(name, username, pass, email, sex, date, address);
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
        }
        return false;
    }  
//    public boolean updateKhoa(String username) {
//        try {
//            Account a = new Account();
//            if (a.CheckAccount(username)) {
//                //pass = md5String(pass);
//                a.UpdateKhoa(username);
//                return true;
//            } else {
//                return false;
//            }
//        } catch (Exception ex) {
//        }
//        return false;
//    }
//    public boolean updateKhoa2(String username) {
//        try {
//            Account a = new Account();
//            if (a.CheckAccount(username)) {
//                //pass = md5String(pass);
//                a.UpdateKhoa2(username);
//                return true;
//            } else {
//                return false;
//            }
//        } catch (Exception ex) {
//        }
//        return false;
//    }    
    public String CheckAdmin(String username) {
        Account a = new Account();
        Object[][] info = a.LoadAccountByUsername(username);
        String quyen = (String) info[0][3];
        String ChucVu;
        if (quyen.equals("Q001"))
        {
            ChucVu = "Admin";
        }else if (quyen.equals("Q002"))
        {
            ChucVu = "Nhân viên bán hàng";
        }else
        {
            ChucVu = "Member";    
        }
        return ChucVu;
    }
//    public static void main(String arg[]){
//        Connect cls = new Connect();
//        Event e = new Event();
//        Account a = new Account();
//        
//        System.out.print(e.insertMember("M001", "admin","123456", "Nguyen", "HCM", "0909", "oc@gmail.com", "1994/03/29", "2644", "2014/12/2", "Nam"));
//    }    
}
