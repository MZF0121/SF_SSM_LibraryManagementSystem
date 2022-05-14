package com.mzf.service;

import com.mzf.entity.Book;

import java.util.List;

public interface BookService {
    /*增加一本书*/
    int addBookbs(Book book);

    /*删除一本书*/
    int deleteBookbs(int id);

    /*更新一本书*/
    int updateBookbs(Book book);


    /*根据id查询一本书*/
    Book seleteBookByIdbs(int id);

    /*根据书名查找一本数*/
    List<Book> selectBookByName(String bname);

    /*查询所有书籍*/
    List<Book> selectAllBookbs();

}
