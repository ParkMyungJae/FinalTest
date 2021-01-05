package test;

public class StudentVO {
	private String id;
	private String pw;
	private String name;
	private int score;

	public StudentVO() {
	}

	public StudentVO(String id, String pw, String name, int score) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.score = score;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void printData() {
		System.out.println("아이디: " + id + " 비밀번호 : " + pw + "이름 : " + name + " 성적 : " + score);
	}

	@Override
	public String toString() {
		return "20113박명재 [id=" + id + ", pw=" + pw + ", name=" + name + ", score=" + score + "]";
	}
	
}