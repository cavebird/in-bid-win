
package com.nullcorp.auction.dao;

import com.nullcorp.auction.entity.User;
import java.util.List;


public interface UserDao {
    List<User> findAll();

    public void createOrUpdate(User u);

    public User findById(Integer id);

    public void delete(Integer id);

    public List<User> findByUsername(String searchName);
}