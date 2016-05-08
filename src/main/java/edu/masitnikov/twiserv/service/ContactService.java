package edu.masitnikov.twiserv.service;
 
import java.util.List;

import edu.masitnikov.twiserv.dao.IContactDao;
import edu.masitnikov.twiserv.domain.Tweet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ContactService implements IContactService {
 
    @Autowired
    private IContactDao dao;
 
    @Transactional
    public void addContact(Tweet tweet) {
        dao.addContact(tweet);
    }
 
    @Transactional
    public List<Tweet> listContact() {
        return dao.listContact();
    }
 
    @Transactional
    public void removeContact(Integer id) {
        dao.removeContact(id);
    }
}
