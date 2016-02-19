package com.askandar.service;

import com.askandar.model.User;

import java.util.List;

/**
 * Created by askandar on 13.02.16.
 */
public interface UserService {
    List<User> findAll();
    User findById(Long id);
    User save(User user);
    void delete(User user);
}
