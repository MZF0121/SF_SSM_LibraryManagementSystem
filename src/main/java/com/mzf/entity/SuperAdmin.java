package com.mzf.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SuperAdmin {
    private Integer sid;
    private String sname;
    private String sphone;
    private String spassword;
}
