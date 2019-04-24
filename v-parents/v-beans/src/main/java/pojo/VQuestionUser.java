package pojo;


import java.io.Serializable;

/**
 * 用户问题关联类
 */
public class VQuestionUser implements Serializable {

  private long vQuId;  //用户问题关联id
  private long vUserId; //用户id
  private long vQuestionId; //问题id
  private String vAnswer; //用户回答


  public long getVQuId() {
    return vQuId;
  }

  public void setVQuId(long vQuId) {
    this.vQuId = vQuId;
  }


  public long getVUserId() {
    return vUserId;
  }

  public void setVUserId(long vUserId) {
    this.vUserId = vUserId;
  }


  public long getVQuestionId() {
    return vQuestionId;
  }

  public void setVQuestionId(long vQuestionId) {
    this.vQuestionId = vQuestionId;
  }


  public String getVAnswer() {
    return vAnswer;
  }

  public void setVAnswer(String vAnswer) {
    this.vAnswer = vAnswer;
  }

}
