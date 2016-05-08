package edu.masitnikov.twiserv.dao;

import java.util.List;

import edu.masitnikov.twiserv.domain.Tweet;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TweetDao implements ITweetDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void addTweet(Tweet tweet) {
		sessionFactory.getCurrentSession().save(tweet);
	}

	@SuppressWarnings("unchecked")
	public List<Tweet> listTweets() {

		return sessionFactory.getCurrentSession().createQuery("from Tweet").list();
	}

	public void removeTweet(Integer id) {
		Tweet tweet = (Tweet) sessionFactory.getCurrentSession().load(
				Tweet.class, id);
		if (null != tweet) {
			sessionFactory.getCurrentSession().delete(tweet);
		}

	}
}
