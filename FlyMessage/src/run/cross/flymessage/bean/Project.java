package run.cross.flymessage.bean;

/**
 * ÏîÄ¿Àà
 * @author RunCross
 *
 */
public class Project {

	private String Uid;
	private String ID;
	private float Money;
	private String Title;
    private String Url;
    private int State;
    private int IsInFav;
	public String getUid() {
		return Uid;
	}
	public void setUid(String uid) {
		Uid = uid;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public float getMoney() {
		return Money;
	}
	public void setMoney(float money) {
		Money = money;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public int getState() {
		return State;
	}
	public void setState(int state) {
		State = state;
	}
	public int getIsInFav() {
		return IsInFav;
	}
	public void setIsInFav(int isInFav) {
		IsInFav = isInFav;
	}
    
}
