package edu.masitnikov.twiserv.service;
 
import java.util.List;

import edu.masitnikov.twiserv.dao.ITweetDao;
import edu.masitnikov.twiserv.domain.Tweet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TweetService implements ITweetService {
 
    @Autowired
    private ITweetDao dao;
 
    @Transactional
    public void addTweet(Tweet tweet) {
        dao.addTweet(tweet);
    }
 
    @Transactional
    public List<Tweet> listTweets() {
        return dao.listTweets();
    }
 
    @Transactional
    public void removeTweet(Integer id) {
        dao.removeTweet(id);
    }
}
