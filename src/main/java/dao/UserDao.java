package dao;

import java.util.HashMap;

import model.UserModel;

public interface UserDao {

	void register(UserModel user);
	public HashMap<Integer, UserModel> getUserValues();
	public void deleteUser(int number);
	public UserModel updateUser(int mobileNumber);
}
