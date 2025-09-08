package iuh.fit.se.dao;

import iuh.fit.se.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static List<User> users = new ArrayList<>();

    public static void addUser(User user) {
        users.add(user);
    }

    public static List<User> getAllUsers() {
        return users;
    }
}
