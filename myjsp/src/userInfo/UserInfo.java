package userInfo;

import java.io.Serializable;

public class UserInfo implements Serializable{
	private String email;
	private String password;
	private String nickname;
	
	public UserInfo(String email, String password, String nickname) {
		this.email = email;
		this.password = password;
		this.nickname = nickname;
	}
}
