package test;

import java.util.ArrayList;

public class StudentDAO {
	
	//싱글톤 인스턴트 생성
	private static StudentDAO instance = new StudentDAO();
	
	//리스트, 해당 리스트에 StudentVO 규격으로 한 자리에 아이디, 비밀번호, 점수를 담음
    public ArrayList<StudentVO> list = new ArrayList<StudentVO>();
 
    //초기값으로 3명의 학생 정보를 넣기 위한 메서드
    public StudentDAO() {
    	StudentVO temp = new StudentVO("qwer", "qwer", "홍길동", 100);
		list.add(temp);
		temp = new StudentVO("abcd", "abcd", "홍장미", 87);
		list.add(temp);		
		temp = new StudentVO("javaking", "javaking", "김양영", 42);
		list.add(temp);
		
	}
	
	
	//해당 getInstance()로 싱글톤 기능 이용
	public static StudentDAO getInstance() {
		return instance;
	}
	
	//학생 성적 추가하는 메서드
	public void addStudent(StudentVO st) {
		list.add(st);
	}
	
	//학생 성적 제거하는 메서드
	public StudentVO removeStudent(int index) {
		StudentVO delSt = list.get(index);
		list.remove(index);
		return delSt;
	}
	
	
	//아이디 값이 존재하는지 존재하지 않는지 검사하고 존재하면 인덱스 값을 가져오는 친구
	public int checkId(StudentVO st) {
		int check = -1;
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getId().equals(st.getId())) {
				check = i;
				break;
			}
		}
		return check;
	}
	
	//리스트 데이터를 볼 수 있는 메서드
	public void printStudent() {
		for(int i=0; i<list.size(); i++) {
			list.get(i).printData();
		}
	}
	
	//리스트를 정렬해주는 메서드
	public void sortData() {
		for(int i=0; i<list.size(); i++) {
			int maxScore = list.get(i).getScore();
			int maxIdx = i;
			for(int j=i; j<list.size(); j++) {
				if(maxScore < list.get(j).getScore()) {
					maxScore = list.get(j).getScore();
					maxIdx = j;
				}
			}
			
			StudentVO temp = list.get(i);
			list.set(i, list.get(maxIdx));
			list.set(maxIdx, temp);
		}
	}
	
	//리스트의 사이즈를 알 수 있는 메서드 int 형으로 바로 값을 return받음
	public int getSize() {
		return list.size();
	}
}