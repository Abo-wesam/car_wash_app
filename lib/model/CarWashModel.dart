class CarWashModel{
 late String id_cwash, name_cwash , email_cwash , pass_cwash , adrress_cwash, descr_cwash, phote_cwash , starttime_cwash , endtime_cwash ;
 CarWashModel(this.id_cwash, this.name_cwash, this.email_cwash, this.pass_cwash, this.adrress_cwash, this.descr_cwash, this.phote_cwash, this.starttime_cwash,this.endtime_cwash);

 CarWashModel.fromjson(Map<dynamic,dynamic>usercash){
  if (usercash==null){
   return;}
   id_cwash=usercash['id_cwash'];
   name_cwash =usercash['name_cwash'];
   email_cwash =usercash['email_cwash'];
   pass_cwash= usercash['pass_cwash'];
   adrress_cwash=usercash['adrress_cwash'];
   descr_cwash=usercash['descr_cwash'];
   phote_cwash =usercash['phote_cwash'];
   starttime_cwash =usercash['starttime_cwash'];
   endtime_cwash=usercash['endtime_cwash'];
 }
 tojson(){
  return
      {
       'id_cwash':id_cwash,
       'name_cwash':name_cwash ,
      'email_cwash': email_cwash,
       'pass_cwash':pass_cwash,
       'adrress_cwash':adrress_cwash,
       'descr_cwash':descr_cwash,
       'phote_cwash':phote_cwash ,
       'starttime_cwash' :starttime_cwash,
       'endtime_cwash':endtime_cwash

      };
 }
}