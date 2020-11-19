package chap08;

public class Car {
	private String name;
	private int speed;
	
	//자바빈의 property는 메소드에 의해 생성!!
	//stop이라는 필드는 없지만 property가 생성됨
	public boolean getStop() { //boolean을 리턴하는 경우 get 대신 is라고 작성해도 됨
		return speed == 0;
	} //get메소드만 존재하므로, stop은 읽기 전용 property
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	
	
}
