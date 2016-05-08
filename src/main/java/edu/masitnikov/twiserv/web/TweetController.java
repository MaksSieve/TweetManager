package edu.masitnikov.twiserv.web;

import java.util.Map;

import edu.masitnikov.twiserv.domain.Tweet;
import edu.masitnikov.twiserv.service.ITweetService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TweetController {

	@Autowired
	private ITweetService contactService;

	@RequestMapping("/index")
	public String listContacts(Map<String, Object> map) {

		map.put("tweet", new Tweet());
		map.put("contactList", contactService.listTweets());

		return "contact";
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index ";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("contact") Tweet tweet,
			BindingResult result) {

		contactService.addTweet(tweet);

		return "redirect:/index";
	}

	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId") Integer contactId) {

		contactService.removeTweet(contactId);

		return "redirect:/index";
	}
}
