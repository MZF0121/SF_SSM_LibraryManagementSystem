package com.mzf.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
/*注解*/
public class Book {
    private Integer bid;
    private String bname;
    private Double bprice;
    private Integer bcount;
    private String bdescribe;

    @Override
    public String toString() {
        return "Book{" +
                "bid=" + bid +
                ", bname='" + bname + '\'' +
                ", bprice=" + bprice +
                ", bcount=" + bcount +
                ", bdescribe='" + bdescribe + '\'' +
                '}';
    }
}
