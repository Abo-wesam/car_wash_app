class CustomerModel {

  late String id, FullName,Password,email;

 CustomerModel(this.id,this.FullName, this.Password, this.email);

 CustomerModel.fromjson(Map<dynamic,dynamic>user){
   if(user==null){
     return;
   }
   id=user['id'];
   FullName=user['FullName'];
   email=user['email'];
   Password=user['Password'];

 }
 tojson(){
   return {
     'id':id,
    'FullName':FullName,
     'email':email,
     'Password':Password


   };
 }


}
