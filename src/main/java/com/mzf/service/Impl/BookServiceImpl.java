package com.mzf.service.Impl;

import com.mzf.dao.BookDao;
import com.mzf.entity.Book;
import com.mzf.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    @Qualifier("bookDao")
    private BookDao bookDao;

    public BookDao getBookDao() {
        return bookDao;
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    public int addBookbs(Book book) {
        return bookDao.addBook(book);
    }

    @Override
    public int deleteBookbs(int id) {
        return bookDao.deleteBook(id);
    }

    @Override
    public int updateBookbs(Book book) {
        return bookDao.updateBook(book);
    }

    @Override
    public Book seleteBookByIdbs(int id) {
        return bookDao.seleteBookById(id);
    }

    @Override
    public List<Book> selectBookByName(String bname) {
        return bookDao.selectBookByName(bname);
    }
    @Override
    public List<Book> selectAllBookbs() {
        return bookDao.selectAllBook();
    }
}
