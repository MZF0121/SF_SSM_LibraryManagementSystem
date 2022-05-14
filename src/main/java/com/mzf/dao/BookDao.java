package com.mzf.dao;

import com.mzf.entity.Book;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BookDao {
    /*增加一本书*/
    int addBook(Book book);

    /*删除一本书*/
    int deleteBook(int id);

    /*更新一本书*/
    int updateBook(Book book);

    /*根据id查询一本书*/
    Book seleteBookById(int id);

    /*根据书名查找一本书*/
    List<Book> selectBookByName(String bname);

    /*查询所有书籍*/
    List<Book> selectAllBook();
}
