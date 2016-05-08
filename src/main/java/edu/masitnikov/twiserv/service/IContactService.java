package edu.masitnikov.twiserv.service;

import java.util.List;
import edu.masitnikov.twiserv.domain.Tweet;

public interface IContactService {

	void addContact(Tweet tweet);

	List<Tweet> listContact();

	void removeContact(Integer id);
}
