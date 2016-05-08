package edu.masitnikov.twiserv.dao;

import edu.masitnikov.twiserv.domain.Tweet;

import java.util.List;

public interface ITweetDao {

    void addTweet(Tweet tweet);

    List<Tweet> listTweets();

    void removeTweet(Integer id);

}
