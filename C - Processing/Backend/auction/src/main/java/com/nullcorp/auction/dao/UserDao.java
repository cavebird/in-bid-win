
package com.nullcorp.auction.dao;

import com.nullcorp.auction.entity.User;
import java.math.BigDecimal;
import java.util.List;


public interface UserDao {
    List<User> findAll();

    public void createOrUpdate(User u);

    public User findById(Integer id);

    public void delete(Integer id);

    public List<User> findByUsername(String searchName);

    public User findUserByUsername(String username);

    public void save(User user);

    public void addRole(Integer userid, Integer rid);

    public User getByUsername(String uname);

    public void addCredit(String name, BigDecimal credit);

    public void deductCredit(Integer id, BigDecimal price);
    
}
