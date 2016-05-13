package edu.masitnikov.twiserv.service;

import edu.masitnikov.twiserv.domain.User;

/**
 * Created by Максим on 13.05.2016.
 */
public interface IUserService {

    User getUser(String email);
}
