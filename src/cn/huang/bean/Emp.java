package cn.huang.bean;

public class Emp {
    private String userName;
    private String passWord;
    private String account;
    private String name;
    private String content;

    public Emp(String userName, String passWord, String account, String name, String content) {
        this.userName = userName;
        this.passWord = passWord;
        this.account = account;
        this.name = name;
        this.content = content;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
