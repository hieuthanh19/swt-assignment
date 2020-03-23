/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import DBLib.ConnectionLib;
import Info.UserInfo;
import Model.CommentModel;
import Model.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author haumqce130436@fpt.edu.vn
 */
public class demo {
        private static Statement statement;
    private static PreparedStatement preparedStatement;
    private static ResultSet resultSet;
    private static Connection connection;

    public static void main(String[] args) throws SQLException {
        Connection con = ConnectionLib.getConnection();
        CommentModel cm = new CommentModel(con);
        UserModel um = new UserModel(con);
        um.updateUser(3, "aaaaaaaaaaa", 0, "adsasdasdadada", "dasdasdasda", "asdasdasdas", "asdasdasds", 1, 2);
        ArrayList<UserInfo> list = um.getUser();
        for (UserInfo userInfo : list) {
            System.out.println(userInfo.getUser_name());
        }
    }
}
