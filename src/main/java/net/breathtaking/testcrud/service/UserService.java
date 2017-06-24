package net.breathtaking.testcrud.service;

import net.breathtaking.testcrud.model.User;

import java.util.List;

public interface UserService {
    public void addUser(User user);

    public void updateUser(User user);

    public void removeUser(int id);

    public User getUserById(int id);

    public List<User> listUsers();

    public List<User> listUsersByQuery(String query);
}
