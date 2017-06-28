package services;

import java.util.HashMap;
import java.util.Map;

import model.UserModel;

public interface CreateUserServices {

	void register(UserModel userModel);
	public HashMap<Integer, UserModel> getUserValues();
	public void deleteUserDetails(int mobileNumber);
	public UserModel updateUserDetails(int mobileNumber);
	
}
