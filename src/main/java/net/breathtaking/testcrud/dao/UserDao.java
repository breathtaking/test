package net.breathtaking.testcrud.dao;

import net.breathtaking.testcrud.model.User;

import java.util.List;

public interface UserDao {
    public void addUser(User user);

    public void updateUserData(User user);

    public void removeUserById(int id);

    public User getUserById(int id);

    public List<User> listUsers();
}
