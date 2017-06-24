package net.breathtaking.testcrud.service;

import net.breathtaking.testcrud.dao.UserDao;
import net.breathtaking.testcrud.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional
    public void addUser(User user) {
        this.userDao.addUser(user);
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        this.userDao.updateUserData(user);
    }

    @Override
    @Transactional
    public void removeUser(int id) {
        this.userDao.removeUserById(id);
    }

    @Override
    @Transactional
    public User getUserById(int id) {
        return this.userDao.getUserById(id);
    }

    @Override
    @Transactional
    public List<User> listUsers() {
        return this.userDao.listUsers();
    }

    @Override
    @Transactional
    public List<User> listUsersByQuery(String query) {
        return this.userDao.listUsersByQuery(query);
    }
}
