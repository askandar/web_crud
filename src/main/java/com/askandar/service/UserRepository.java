package com.askandar.service;

import com.askandar.model.User;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by askandar on 13.02.16.
 */
public interface UserRepository extends CrudRepository<User,Long> {
}
