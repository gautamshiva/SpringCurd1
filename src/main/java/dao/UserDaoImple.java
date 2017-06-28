package dao;

import java.util.HashMap;
import java.util.Map.Entry;

import services.CreateUserServiceImple;
import model.UserModel;

public class UserDaoImple implements UserDao{


	HashMap<Integer, UserModel> hashMap = new HashMap<Integer, UserModel>();
	public void register(UserModel user) {

		//		System.out.println("In the UserDaoImple...."+user.getFirstname()+"--"+user.getLastname()+"--"
		//				+user.getEmail()+"--"+user.getMobile()+"--"+user.getCity());

		hashMap.put(user.getMobile(), user);

		System.out.println("Value in hash Map --->>  "+hashMap.size());

	}

	public HashMap<Integer, UserModel> getUserValues() {

		return hashMap;
	}

	public void deleteUser(int number) {

		hashMap.remove(number);

	}

	public UserModel updateUser(int mobileNumber) {

		return hashMap.get(mobileNumber);
	}

}
