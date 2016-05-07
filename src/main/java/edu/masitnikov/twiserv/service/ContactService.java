package edu.masitnikov.twiserv.service;

import java.util.List;
import edu.masitnikov.twiserv.domain.Contact;

public interface ContactService {

	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}
