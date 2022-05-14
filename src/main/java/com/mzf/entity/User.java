package com.mzf.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer uid;
    private String uname;
    private String uphone;
    private String upassword;
    private Integer uage;
    private String usex;
    private String uaddress;

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", uphone='" + uphone + '\'' +
                ", upassword='" + upassword + '\'' +
                ", uage=" + uage +
                ", usex='" + usex + '\'' +
                ", uaddress='" + uaddress + '\'' +
                '}';
    }
}
