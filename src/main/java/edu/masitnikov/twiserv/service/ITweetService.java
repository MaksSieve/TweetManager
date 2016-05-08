package edu.masitnikov.twiserv.service;

import java.util.List;
import edu.masitnikov.twiserv.domain.Tweet;

public interface ITweetService {

	void addTweet(Tweet tweet);

	List<Tweet> listTweets();

	void removeTweet(Integer id);
}
