public class Student {
    public String firstName;
    public String lastName;
    public String email;
    public Boolean isLegal;
    public Boolean isScholarshipHolder;    
    public Integer age;
	public Integer registrationNumber;
    public Decimal examGrade;    
	public String graduationName;
    
    public Graduation graduation;

    public String username;
    public String password;
   
    public Decimal averageGrade;
    
    public String country;


    public String getUserName(String emailProvider){
        String formattedFirstName = this.firstName.trim().toLowerCase();
        String formattedLastName = this.lastname.trim().toLowerCase().replace(' ','');
        this.username = formattedFirstName + '.' + formattedLastName + '@' + emailProvider + '.com';
        return this.username;
        }

    
    public String getPassword(){
        String formattedFirstName = this.firstName.trim().toUpperCase();
        String formattedLastName = this.lastName.trim().toLowerCase().replace(' ', '');
        String firstNameFirstLetter = formattedFirstName.left(1);
        String lastNameFirstLetter = formattedLastName.left(1);
        String lastNameLastLetter = formattedLastName.right(1);

        this.password = firstNameFirstLetter + '.'+ lastNameFirstLetter + lastNameLastLetter + '@' + this.age;
        return this.password;
    }

    public Student (String studentFirstName, String studentLastName, String studentEmail, Integer studentAge, String emailProvider){
        this.firstName = studentFirstName;
        this.lastName = studentLastName;
        this.email = studentEmail;
        this.age = studentAge;    
        this.username = this.getUserName(emailProvider);
        this.password = this.getPassword();
    }

    public String getStatus(){
        if (this.averageGrade >= 6) {
           return 'The student is approved';
        } else {
            return 'The student is disapproved';
        }
    }

    public String isValid(){
        if (String.isBlank(this.firstName) || this.firstName.length() < 3){
            return 'Student first name is invalid';
        }
        else {
            if (String.isBlank(this.lastName) || this.lastName.length() < 3){
                return 'Student last name is invalid';
            }
                else{
                    if(String.isBlank(this.email) || !this.email.contains('@') || !this.email.contains('.com')){
                        return'Student email is invalid';
                    }
                    else{
                        if (this.age == null || this.age <= 20){
                            return 'Student age is invalid';
                        }
                        else{
                            return 'Student is valid';
                        }
                    }
                }
        }
    }

}