package services;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import controller.CreateUserController;
import dao.UserDao;
import model.UserModel;

public class CreateUserServiceImple implements CreateUserServices {

	@Autowired
	UserDao userDao;
	
	public void register(UserModel userModel) {
		userDao.register(userModel);
	}

	public HashMap<Integer, UserModel> getUserValues() {
		// TODO Auto-generated method stub
		return userDao.getUserValues();
	}

	public void deleteUserDetails(int mobileNumber) {
		
		userDao.deleteUser(mobileNumber);		
	}

	public UserModel updateUserDetails(int mobileNumber) {
		// TODO Auto-generated method stub
		
		return userDao.updateUser(mobileNumber);
		
	}




}
