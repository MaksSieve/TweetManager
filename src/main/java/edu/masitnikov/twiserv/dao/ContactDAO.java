package edu.masitnikov.twiserv.dao;

import java.util.List;

import edu.masitnikov.twiserv.domain.Contact;

public interface ContactDAO {


	public void addContact(Contact contact);

	public List<Contact> listContact();

	public void removeContact(Integer id);
}