package edu.masitnikov.twiserv.dao;

import edu.masitnikov.twiserv.domain.Tweet;

import java.util.List;

public interface IContactDao {

    void addContact(Tweet tweet);

    List<Tweet> listContact();

    void removeContact(Integer id);

}
