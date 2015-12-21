package com.chenshuangjzh.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chenshuangjzh.pojo.Book;
import com.chenshuangjzh.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {

	@Inject
	private BookService bookService;

	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public String test(Model model){
		Book book = (Book) bookService.findById(1);
		model.addAttribute("book",book);
		return "book";
	}

	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String toAdd() {
		return "book/add";
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String save(Book book,RedirectAttributes redirectAttributes) {
		bookService.save(book);
		redirectAttributes.addFlashAttribute("message", "��ӳɹ�");
		return "redirect:/book";
	}
	
	@RequestMapping(value="/del/{id:\\d+}",method=RequestMethod.GET)
	public String del(@PathVariable int id,RedirectAttributes redirectAttributes) {
		bookService.del(id);
		redirectAttributes.addFlashAttribute("message", "ɾ���ɹ�");
		return "redirect:/book";
	}
	
	@RequestMapping(value="/edit/{id:\\d+}",method=RequestMethod.GET)
	public String toEdit(@PathVariable int id,Model model) {
		model.addAttribute("book", bookService.findById(id));
		return "book/edit";
	}
	
	@RequestMapping(value="/edit/{id:\\d+}",method=RequestMethod.POST)
	public String edit(Book book,RedirectAttributes redirectAttributes) {
		bookService.edit(book);
		redirectAttributes.addFlashAttribute("message","�޸ĳɹ�");
		return "redirect:/book";
	}

}
