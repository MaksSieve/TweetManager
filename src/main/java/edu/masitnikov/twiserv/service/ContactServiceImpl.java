package edu.masitnikov.twiserv.service;
 
import java.util.List;

import edu.masitnikov.twiserv.dao.IContactDao;
import edu.masitnikov.twiserv.domain.Tweet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ContactServiceImpl implements ContactService {
 
    @Autowired
    private IContactDao IDao;
 
    @Transactional
    public void addContact(Tweet tweet) {
        IDao.addContact(tweet);
    }
 
    @Transactional
    public List<Tweet> listContact() {
        return IDao.listContact();
    }
 
    @Transactional
    public void removeContact(Integer id) {
        IDao.removeContact(id);
    }
}
