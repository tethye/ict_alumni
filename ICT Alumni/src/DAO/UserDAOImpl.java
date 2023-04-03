package DAO;

import entity.UserDtls;

import javax.servlet.http.Part;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    private Connection connection;

    public UserDAOImpl(Connection connection) {
        super();
        this.connection = connection;
    }

    @Override
    public boolean insertUser(UserDtls userDtls, Part picture) {
        boolean f = false;
        try {
            String sql = "insert into user_info(id,name,email,batch,pass,phone,ctown,ptown," +
                    "grad,sex,job,jdtls,flink,ilink,llink,date,picture) values" +
                    "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, userDtls.getId());
            ps.setString(2, userDtls.getName());
            ps.setString(3, userDtls.getEmail());
            ps.setString(4, userDtls.getBatch());
            ps.setString(5, userDtls.getPass());
            ps.setString(6, userDtls.getPhone());
            ps.setString(7, userDtls.getCtown());
            ps.setString(8, userDtls.getPtown());
            ps.setString(9, userDtls.getGrad());
            ps.setString(10, userDtls.getSex());
            ps.setString(11, userDtls.getJob());
            ps.setString(12, userDtls.getJdtls());
            ps.setString(13, userDtls.getFlink());
            ps.setString(14, userDtls.getIlink());
            ps.setString(15, userDtls.getLlink());
            ps.setString(16, new Date().toString());
            UploadFile uploadFile = new UploadFile();
            String pictureName = uploadFile.stringGenerator() + ".jpg";
            ps.setString(17, pictureName);

            int i = ps.executeUpdate();
            if (i == 1) {
                // file upload
                UploadFile file = new UploadFile();
                String fileName = file.uploadImage(picture, pictureName);
                f = true;
                System.out.println("print");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public List<UserDtls> getAllUser() {
        List<UserDtls> list = new ArrayList<>();
        UserDtls userDtls = null;

        try {
            String sql = "select * from user_info";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                userDtls = new UserDtls();
                userDtls.setId(rs.getString(1));
                userDtls.setName(rs.getString(2));
                userDtls.setEmail(rs.getString(3));
                userDtls.setBatch(rs.getString(4));
                userDtls.setPass(rs.getString(5));
                userDtls.setPhone(rs.getString(6));
                userDtls.setCtown(rs.getString(7));
                userDtls.setPtown(rs.getString(8));
                userDtls.setGrad(rs.getString(9));
                userDtls.setSex(rs.getString(10));
                userDtls.setJob(rs.getString(11));
                userDtls.setJdtls(rs.getString(12));
                userDtls.setFlink(rs.getString(13));
                userDtls.setIlink(rs.getString(14));
                userDtls.setLlink(rs.getString(15));
                userDtls.setDate(rs.getString(16));
                userDtls.setPicture(rs.getString(17));
                list.add(userDtls);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Boolean updateUser(UserDtls userDtls) {
        boolean f = false;

        try {

            String sql = "update user_info set  name=? , email=?, phone=?, ctown=?, ptown=?, grad=?, sex=?, job=?, jdtls=?, flink=?, ilink=?, llink=? where id =?";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, userDtls.getName());
            ps.setString(2, userDtls.getEmail());
            //ps.setString(3,userDtls.getPass());
            ps.setString(3, userDtls.getPhone());
            ps.setString(4, userDtls.getCtown());
            ps.setString(5, userDtls.getPtown());
            ps.setString(6, userDtls.getGrad());
            ps.setString(7, userDtls.getSex());
            ps.setString(8, userDtls.getJob());
            ps.setString(9, userDtls.getJdtls());
            ps.setString(10, userDtls.getFlink());
            ps.setString(11, userDtls.getIlink());
            ps.setString(12, userDtls.getLlink());
            ps.setString(13, userDtls.getId());

            int i = ps.executeUpdate();
            if (i > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public UserDtls getUserByID(String id) {
        UserDtls userDtls = null;

        try {
            String sql = "select * from user_info where id =?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                userDtls = new UserDtls();

                userDtls.setId(rs.getString("id"));
                userDtls.setName(rs.getString("name"));
                userDtls.setEmail(rs.getString("email"));
                userDtls.setBatch(rs.getString("batch"));
                userDtls.setPass(rs.getString("pass"));
                userDtls.setPhone(rs.getString("phone"));
                userDtls.setCtown(rs.getString("ctown"));
                userDtls.setPtown(rs.getString("ptown"));
                userDtls.setGrad(rs.getString("grad"));
                userDtls.setSex(rs.getString("sex"));
                userDtls.setJob(rs.getString("job"));
                userDtls.setJdtls(rs.getString("jdtls"));
                userDtls.setFlink(rs.getString("flink"));
                userDtls.setIlink(rs.getString("ilink"));
                userDtls.setLlink(rs.getString("llink"));
                userDtls.setDate(rs.getString("date"));
                userDtls.setPicture(rs.getString("picture"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(userDtls);
        return userDtls;
    }


    /*@Override
    public boolean deleteUser(String id) {
        boolean f = false;
        try {
            String sql = "delete from user_info where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,id);
            int i = ps.executeUpdate();
            if (i==1){
                f=true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }*/

    public UserDtls checkLogin(String id, String password) {
        UserDtls user = null;

        try {
            String sql = "SELECT * FROM user_info WHERE id = ? and pass = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, password);

            ResultSet result = ps.executeQuery();


            if (result.next()) {
                user = new UserDtls();
                user.setId(result.getString("id"));
                user.setName(result.getString("name"));
                user.setEmail(result.getString("email"));
                user.setBatch(result.getString("batch"));
                user.setPass(result.getString("pass"));
                user.setPhone(result.getString("phone"));
                user.setCtown(result.getString("ctown"));
                user.setPtown(result.getString("ptown"));
                user.setGrad(result.getString("grad"));
                user.setSex(result.getString("sex"));
                user.setJob(result.getString("job"));
                user.setJdtls(result.getString("jdtls"));
                user.setFlink(result.getString("flink"));
                user.setIlink(result.getString("ilink"));
                user.setLlink(result.getString("llink"));
                user.setDate(result.getString("date"));
                user.setPicture(result.getString("picture"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;

    }

    @Override
    public boolean checkPass(String id, String password) {
        /*UserDtls userDtls = null;*/
        boolean f = false;
        try {
            String sql = "select * from user_info where id=? and pass=?";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, id);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                f = true;


            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public List<UserDtls> searchUser(String svalue) {
        List<UserDtls> list = new ArrayList<>();
        UserDtls userDtls = null;

        try {
            String sql = "select * from user_info where concat(id, name, email,batch, phone, ctown, ptown, grad, sex, job, jdtls) like '%" + svalue + "%'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    userDtls = new UserDtls();
                    userDtls.setId(rs.getString(1));
                    userDtls.setName(rs.getString(2));
                    userDtls.setEmail(rs.getString(3));
                    userDtls.setPass(rs.getString(4));
                    userDtls.setBatch(rs.getString(5));
                    userDtls.setPhone(rs.getString(6));
                    userDtls.setCtown(rs.getString(7));
                    userDtls.setPtown(rs.getString(8));
                    userDtls.setGrad(rs.getString(9));
                    userDtls.setSex(rs.getString(10));
                    userDtls.setJob(rs.getString(11));
                    userDtls.setJdtls(rs.getString(11));
                    userDtls.setFlink(rs.getString(13));
                    userDtls.setIlink(rs.getString(14));
                    userDtls.setLlink(rs.getString(15));
                    userDtls.setDate(rs.getString(16));
                    list.add(userDtls);
                }
            } else {
                System.out.println("No Result Found... ");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
