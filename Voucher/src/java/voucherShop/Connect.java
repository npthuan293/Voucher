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
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
public class Connect {
    Connection conn;
    String driver   = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String urlConn  = "jdbc:sqlserver://localhost:1433;databaseName=";
    String dbName   = "test";
    String userName = "sa";
    String passWord = "123";
    public Connect() {
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(urlConn + dbName, userName, passWord);
        } catch (Exception e) {
            
        }
    }

    public boolean checkConnect() {
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(urlConn + dbName, userName, passWord);
            return true;
        } catch (Exception e) {
            String a = e.toString();
                String b = e.toString();
        }
        return false;
    }
    public void Disconnect() {
        try {
            conn.close();

        } catch (Exception e) {
        }
    }    
    public String callSql(String sql, int nParameter) {
        String ret = "{call " + sql + "(";
        for (int i = 0; i < nParameter; i++) {
            if (i == nParameter - 1) {
                ret += "?";
            } else {
                ret += "?,";
            }
        }
        ret += ")}";
        return ret;
    }

    public Object[][] loadData(String sql) {
        try {
            CallableStatement stm = conn.prepareCall(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stm.executeQuery();
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();
            int countCol = rsmd.getColumnCount();
            int countRow = rs.getRow();
            Object[][] result = new Object[countRow][countCol];
            rs.first();
            for (int i = 0; i < countRow; i++) {
                for (int j = 0; j < countCol; j++) {
                    result[i][j] = rs.getObject(j + 1);
                }
                rs.next();
            }
            rs.close();
            stm.close();
            return result;

        } catch (Exception ex) {
        }
        return null;
    }
public Object[][] loadData(String sql, Object[] value, int nParameter) {
        try {
            CallableStatement stm = conn.prepareCall(callSql(sql, nParameter), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            for (int i = 0; i < nParameter; i++) {
                stm.setObject(i + 1, value[i]);
            }
            ResultSet rs = stm.executeQuery();
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();
            int countCol = rsmd.getColumnCount();
            int countRow = rs.getRow();
            Object[][] result = new Object[countRow][countCol];
            rs.first();
            for (int i = 0; i < countRow; i++) {
                for (int j = 0; j < countCol; j++) {
                    result[i][j] = rs.getObject(j + 1);
                }
                rs.next();
            }
            rs.close();
            stm.close();
            return result;
        } catch (Exception ex) {
            Object[][] result = new Object[1][1];
            result[0][0] = ex.toString();
            return result;
        }
    }

    public void executeQuery(String sql) {
        try {
            CallableStatement stm = conn.prepareCall(sql);
            stm.executeQuery();
            stm.close();

        } catch (Exception ex) {
        }
    }

    public void executeQuery(String sql, Object[] value, int nParameter) {
        try {
            CallableStatement stm = conn.prepareCall(callSql(sql, nParameter), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            for (int i = 0; i < nParameter; i++) {
                stm.setObject(i + 1, value[i]);
            }
            stm.executeQuery();
            stm.close();
        } catch (Exception ex) {
            String a = ex.toString();
            String b = ex.toString();

        }

    }

    public ResultSet excuteDataReader(String sql) {
        try {
            CallableStatement stm = conn.prepareCall(sql);
            return stm.executeQuery();
        } catch (Exception ex) {
        }
        return null;
    }

    public ResultSet excuteDataReader(String sql, Object[] value, int nParameter) {
        try {
            CallableStatement stm = conn.prepareCall(callSql(sql, nParameter), ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            for (int i = 0; i < nParameter; i++) {
                stm.setObject(i + 1, value[i]);
            }
            return stm.executeQuery();
        } catch (Exception ex) {
            ex.toString();
            ex.toString();
        }
        return null;
    }
    public Date toDate(String date) throws ParseException {
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
        java.util.Date temp1 = df.parse(date);
        java.sql.Date sql = new java.sql.Date(temp1.getTime());
        return sql;
    }

    public String GetID(String ID_Text, int ID_length, String sql) {
        int maxID;
        int length_no;
        String ID = ID_Text;

        Object[][] temp = this.loadData(sql);
        try {
            maxID = Integer.parseInt(temp[0][0].toString().substring(ID_Text.length()));
            maxID++;
        } catch (Exception e) {
            maxID = 1;
        }

        String x = Integer.toString(maxID);
        length_no = x.length();

        for (int i = 0; i < ID_length - length_no; i++) {
            ID += "0";
        }

        ID += Integer.toString(maxID);
        return ID;
    }
//        public boolean checkLogin(String username, String password) {
//        Connect cls = new Connect();
//        try {
//            int nparameter = 2;
//            String[] name = new String[nparameter];
//            Object[] value = new Object[nparameter];
//            name[0] = "ausername";
//            name[1] = "apassword";
//            value[0] = username;
//            value[1] = password;
//            ResultSet rs = cls.("CheckLogin", name, value, nparameter);
//            boolean result = rs.next();
//                    rs.close();
//                    
//                    cls.Disconnect();
//            if (result) {
//                return true;
//            }
//        } catch (Exception e) {
//        }
//        return false;
//    } 
//        public static void main(String arg[])
//    {
//        Connect cls = new Connect();
//        
//        if (cls.checkConnect())
//        {
//            System.out.println("Thanh cong");
//        }else{
//            System.out.println("That bai");
//        }
//        if (cls.checkLogin("admin", "123456"))
//        {
//            System.out.println("Thanh cong");
//        }else{
//            System.out.println("That bai");        
//        }
//    }
}
