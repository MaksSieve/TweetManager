package edu.masitnikov.twiserv.dao;

import edu.masitnikov.twiserv.domain.Tweet;

import java.util.List;

/**
 * Created by Максим on 08.05.2016.
 */
public interface IContactDao {

    public void addContact(Tweet tweet);

    public List<Tweet> listContact();

    public void removeContact(Integer id);

}
