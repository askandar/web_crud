package com.askandar.service;

import com.askandar.model.User;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by askandar on 13.02.16.
 */

@Repository
@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;


    @Transactional(readOnly = true)
    public List<User> findAll() {
        return Lists.newArrayList(userRepository.findAll());
    }


    @Transactional(readOnly = true)
    public User findById(Long id) {
        return userRepository.findOne(id);
    }

    public User save(User contact) {
        return userRepository.save(contact);
    }

    public void delete(User user) {
        userRepository.delete(user);
    }

    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

}
