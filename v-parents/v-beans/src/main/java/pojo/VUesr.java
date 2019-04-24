package pojo;


import java.io.Serializable;

/**
 * 用户类
 */
public class VUesr implements Serializable {

  private long vUserId; //用户id
  private String vUsername; //用户昵称
  private String vPassword; //用户登录密码
  private String vMail; //用户邮箱
  private String vPhone; //用户手机号
  private String vHeadPath; //用户头像路径
  private long vIsActive; //是否激活
  private long vType; //用户类型（0普通用户 1管理员）
  private double vGrade; //用户积分
  private long vSex; //用户性别（0男 1女）
  private String vIdentity; //用户身份证号
  private String vUsercode; //用户登录名
  private String vSalt;  //用户加密盐值

  public String getvSalt() {
    return vSalt;
  }

  public void setvSalt(String vSalt) {
    this.vSalt = vSalt;
  }

  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }


  public String getVUsername() {
    return vUsername;
  }

  public void setVUsername(String vUsername) {
    this.vUsername = vUsername;
  }


  public String getVPassword() {
    return vPassword;
  }

  public void setVPassword(String vPassword) {
    this.vPassword = vPassword;
  }


  public String getVMail() {
    return vMail;
  }

  public void setVMail(String vMail) {
    this.vMail = vMail;
  }


  public String getVPhone() {
    return vPhone;
  }

  public void setVPhone(String vPhone) {
    this.vPhone = vPhone;
  }


  public String getVHeadPath() {
    return vHeadPath;
  }

  public void setVHeadPath(String vHeadPath) {
    this.vHeadPath = vHeadPath;
  }


  public long getVIsActive() {
    return vIsActive;
  }

  public void setVIsActive(long vIsActive) {
    this.vIsActive = vIsActive;
  }


  public long getVType() {
    return vType;
  }

  public void setVType(long vType) {
    this.vType = vType;
  }


  public double getVGrade() {
    return vGrade;
  }

  public void setVGrade(double vGrade) {
    this.vGrade = vGrade;
  }


  public long getVSex() {
    return vSex;
  }

  public void setVSex(long vSex) {
    this.vSex = vSex;
  }


  public String getVIdentity() {
    return vIdentity;
  }

  public void setVIdentity(String vIdentity) {
    this.vIdentity = vIdentity;
  }


  public String getVUsercode() {
    return vUsercode;
  }

  public void setVUsercode(String vUsercode) {
    this.vUsercode = vUsercode;
  }

}
