package login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author NELLA
 */
public class koneksi {
    private static Connection con;

    public static Connection getkoneksi() {
        if (con == null) {
            try {
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "");
                System.out.println("Berhasil");
            } catch (Exception e) {
                e.getStackTrace();
            }
        }
        return con;
    }

    public static class con {

        public con() {
        }
    }
}

