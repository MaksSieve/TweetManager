package edu.masitnikov.twiserv.service;

import java.util.List;
import edu.masitnikov.twiserv.domain.Tweet;

public interface ContactService {

	public void addContact(Tweet tweet);

	public List<Tweet> listContact();

	public void removeContact(Integer id);
}
