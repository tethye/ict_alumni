package entity;

public class UserDtls {
    private String id;
    private String name;
    private String email;
    private String batch;
    private String pass;
    private String phone;
    private String ctown;
    private String ptown;
    private String grad;
    private String sex;
    private String job;
    private String jdtls;
    private String flink;
    private String ilink;
    private String llink;
    private String date;

    private String picture;

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public UserDtls() {
        super();
    }

    public UserDtls(String id, String name, String email, String batch, String pass, String phone,
                    String ctown, String ptown, String grad, String sex, String job, String jdtls,
                    String flink, String ilink, String llink, String date, String picture) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.batch = batch;
        this.pass = pass;
        this.phone = phone;
        this.ctown = ctown;
        this.ptown = ptown;
        this.grad = grad;
        this.sex = sex;
        this.job = job;
        this.jdtls = jdtls;
        this.flink = flink;
        this.ilink = ilink;
        this.llink = llink;
        this.date = date;
        this.picture = picture;
    }

    public UserDtls(String id, String name, String email, String batch, String pass, String phone,
                    String ctown, String ptown, String grad, String sex, String job, String jdtls,
                    String flink, String ilink, String llink, String picture) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.pass = pass;
        this.phone = phone;
        this.ctown = ctown;
        this.ptown = ptown;
        this.grad = grad;
        this.sex = sex;
        this.job = job;
        this.jdtls = jdtls;
        this.flink = flink;
        this.ilink = ilink;
        this.llink = llink;
        this.batch = batch;
        this.picture = picture;
    }

    public UserDtls(String id, String name, String email, String batch, String pass, String phone,
                    String ctown, String ptown, String grad, String sex, String job, String jdtls,
                    String flink, String ilink, String llink) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.batch = batch;
        this.pass = pass;
        this.phone = phone;
        this.ctown = ctown;
        this.ptown = ptown;
        this.grad = grad;
        this.sex = sex;
        this.job = job;
        this.jdtls = jdtls;
        this.flink = flink;
        this.ilink = ilink;
        this.llink = llink;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBatch() {
        return batch;
    }

    public void setBatch(String batch) {
        this.batch = batch;
    }

    public String getCtown() {
        return ctown;
    }

    public void setCtown(String ctown) {
        this.ctown = ctown;
    }

    public String getPtown() {
        return ptown;
    }

    public void setPtown(String ptown) {
        this.ptown = ptown;
    }

    public String getGrad() {
        return grad;
    }

    public void setGrad(String grad) {
        this.grad = grad;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getJdtls() {
        return jdtls;
    }

    public void setJdtls(String jdtls) {
        this.jdtls = jdtls;
    }

    public String getFlink() {
        return flink;
    }

    public void setFlink(String flink) {
        this.flink = flink;
    }

    public String getIlink() {
        return ilink;
    }

    public void setIlink(String ilink) {
        this.ilink = ilink;
    }

    public String getLlink() {
        return llink;
    }

    public void setLlink(String llink) {
        this.llink = llink;
    }

    public String getDate() {
        return date;
    }


    public void setDate(String date) {
        this.date = date;
    }


    @Override
    public String toString() {
        return "UserDtls{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", batch='" + batch + '\'' +
                ", pass='" + pass + '\'' +
                ", phone='" + phone + '\'' +
                ", ctown='" + ctown + '\'' +
                ", ptown='" + ptown + '\'' +
                ", grad='" + grad + '\'' +
                ", sex='" + sex + '\'' +
                ", job='" + job + '\'' +
                ", jdtls='" + jdtls + '\'' +
                ", flink='" + flink + '\'' +
                ", ilink='" + ilink + '\'' +
                ", llink='" + llink + '\'' +
                ", date='" + date + '\'' +
                ", picture='" + picture + '\'' +
                '}';
    }
}
