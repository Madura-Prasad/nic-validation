package Model;

public class Users {

	private String Id;
	private String FullName;
	private String Address;
	private String Nationality;
	private String NIC;
	private String Birthday;
	private String Age;
	private String Gender;
	private String Mobile;

	public Users(String id, String fullName, String address, String nationality, String nIC,String mobile) {
		Id = id;
		FullName = fullName;
		Address = address;
		Nationality = nationality;
		NIC = nIC;
		Mobile=mobile;
	}

	

	public String getMobile() {
		return Mobile;
	}



	public void setMobile(String mobile) {
		Mobile = mobile;
	}



	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getNationality() {
		return Nationality;
	}

	public void setNationality(String nationality) {
		Nationality = nationality;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public String getBirthday() {
		return Birthday;
	}

	public void setBirthday(String birthday) {
		Birthday = birthday;
	}

	public String getAge() {
		return Age;
	}

	public void setAge(String age) {
		Age = age;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

}
