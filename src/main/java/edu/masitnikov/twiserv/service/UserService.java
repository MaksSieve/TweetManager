package edu.masitnikov.twiserv.service;

import edu.masitnikov.twiserv.domain.User;
import org.springframework.stereotype.Service;

@Service
public class UserService implements IUserService{
    @Override
    public User getUser(String email) {
        User user = new User();
        user.setEmail(email);
        user.setPassword("7110eda4d09e062aa5e4a390b0a572ac0d2c0220");
        return user;
    }
}
