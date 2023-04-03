package DAO;

import entity.UserDtls;

import javax.servlet.http.Part;
import java.io.IOException;
import java.util.List;

public interface UserDAO {
    public abstract boolean insertUser(UserDtls userDtls, Part picture) throws IOException;

    public abstract List<UserDtls> getAllUser();

    public abstract Boolean updateUser(UserDtls userDtls);

    public abstract UserDtls getUserByID(String id);

    //public abstract boolean deleteUser(String id);

    public abstract UserDtls checkLogin(String id, String password);

    public abstract boolean checkPass(String id, String password);

    public abstract List<UserDtls> searchUser(String svalue);

}
