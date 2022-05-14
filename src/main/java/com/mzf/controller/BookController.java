package com.mzf.controller;

import com.mzf.entity.Book;
import com.mzf.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/Book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;
    /*添加一本书籍*/
    @RequestMapping("/addBook")
    public String addbook(Book book){
       bookService.addBookbs(book);
       return "frontpage";
    }
   /*删除一本书籍*/
    @RequestMapping("/deleteBook")
    public String deletabook(/*@PathVariable("bookid")*/HttpServletRequest request){
        String id1=request.getParameter("bid");
        int id=Integer.parseInt(id1);
       bookService.deleteBookbs(id);
        return "Adminmanagement";
    }
    /*更新一本书籍*/
    @RequestMapping("/tpBook")
  public String tpbook(Model model,HttpServletRequest request){
        String ID=request.getParameter("bid");
        int id=Integer.parseInt(ID);
        System.out.println("编号vvvvvvvvvvvvvvvvv"+id);
      Book book=bookService.seleteBookByIdbs(id);
      model.addAttribute("book123",book);
      return "Updatebook2";
  }
  @RequestMapping("/upBook")
    public String upbook(Book book,Model model){
        bookService.updateBookbs(book);
        Book book1=bookService.seleteBookByIdbs(book.getBid());
        List<Book> list=new ArrayList<>();
        list.add(book1);
      model.addAttribute("list",list);
      return "AllBook";
  }
  /*根据书名查找书籍*/
    @RequestMapping("/Sbname")
    public String selebookName(/*@PathVariable*/ String bname, Model model, HttpServletRequest request){
        String bname1=request.getParameter("bname");
        System.out.println(bname1);
        List<Book> book=bookService.selectBookByName(bname1);
        for (Book u:book) {
            System.out.println("图书信息"+u.toString());
        }
        model.addAttribute("list",book);
        return "AllBook";
    }
    /*查询全部书籍*/
@RequestMapping("/AllBookAll")
    public String seleallBook(Model model){
        List<Book> books=bookService.selectAllBookbs();
        model.addAttribute("list",books);
        return "AllBook";
    }
/*跳转到Updatebook.jsp*/
    @RequestMapping("/Toub")
    public String toub(){
        return "Updatebook";
    }
/*跳转到添加图书页面*/
    @RequestMapping("/AddBook1")
    public String addb(){
        return "AddBook";
    }
    /*跳转到删除页面*/
    @RequestMapping("/DeleBook1")
    public String deleb(){
        return "DeleteBook";
    }
}

