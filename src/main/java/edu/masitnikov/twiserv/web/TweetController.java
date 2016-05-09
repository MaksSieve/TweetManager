package edu.masitnikov.twiserv.web;

import java.util.Map;

import edu.masitnikov.twiserv.domain.Tweet;
import edu.masitnikov.twiserv.service.ITweetService;

import edu.masitnikov.twiserv.service.TweetService;
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
	private ITweetService tweetService;

	@RequestMapping("/index")
	public String listContacts(Map<String, Object> map) {

		map.put("tweet", new Tweet());
		map.put("tweetList", tweetService.listTweets());

		return "tweet";
	}
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/index ";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("tweet") Tweet tweet,
			BindingResult result) {

		tweetService.addTweet(tweet);

		return "redirect:/index";
	}

	@RequestMapping("/delete/{tweetId}")
	public String deleteContact(@PathVariable("tweetId") Integer tweetId) {

		tweetService.removeTweet(tweetId);

		return "redirect:/index";
	}
}
