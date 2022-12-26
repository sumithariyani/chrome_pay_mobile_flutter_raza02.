import 'package:chrome_pay_mobile_flutter/Activity/customer%20profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DocumentScanner extends StatefulWidget {
  @override
  _DocumentScanerState createState() => _DocumentScanerState();

}


class _DocumentScanerState extends State <DocumentScanner> {

  TextEditingController _otp1 = TextEditingController();
  TextEditingController _otp2 = TextEditingController();
  TextEditingController _otp3 = TextEditingController();
  TextEditingController _otp4 = TextEditingController();
  TextEditingController _otp5 = TextEditingController();
  TextEditingController _otp6 = TextEditingController();

  List<String> assetType = ['Select Asset', 'Land', 'Car', 'House', 'Store'];
  String? selectedAssetType = 'Select Asset';
  List<String> assetId = ['Select Id', 'Passport', 'Car', 'House', 'Store'];
  String? selectedAssetId = 'Select Id';

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       resizeToAvoidBottomInset: false,
       body: Stack(
         children: [
           Container(
             alignment: Alignment.topRight,
             child: Image.asset('images/login_stuff_31.png',
             height: 200,
             width: 150,),
           ),
           Container(
             alignment: Alignment.topRight,
             margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
             child: Text('3/3',
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold
             ),),
           ),
           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                           child: Image.asset('images/login_stuff_03.png',
                           height: 20,),
                         ),
                         Container(
                           margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                           child: Text('Register Customer 3',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18
                           ),),
                         )
                       ],
                     ),
                   ),
                   Expanded(
                       child: Container(
                         width: MediaQuery.of(context).size.width,
                         child: Card(
                           margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10.0))
                           ),
                           color: Colors.white,
                           shadowColor: Colors.black,
                           child: SingleChildScrollView(
                             child: Container(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                                     child: Column(
                                       children: [
                                         Container(
                                           width: double.infinity,
                                           height: 60,
                                           child: TextField(
                                             decoration: InputDecoration(
                                               border: OutlineInputBorder(
                                                 borderSide: BorderSide(color: Colors.grey,
                                                 width: 5),
                                                 borderRadius: BorderRadius.all(
                                                   Radius.circular(10.0)
                                                 )
                                               ),
                                               counterText: "",
                                               prefixIcon: Padding(
                                                 padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                                                 child: Image.asset('images/login_stuff_21.png',
                                                 height: 10,
                                                 width: 10,),
                                               ),
                                             hintText: 'Land Size'
                                             ),
                                           ),
                                         ),
                                         Container(
                                             width: double.infinity,
                                             height: 60,
                                           margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                             child: DropdownButtonFormField<String>(
                                               decoration: InputDecoration(
                                                 border: OutlineInputBorder(
                                                     borderSide: BorderSide(color: Colors.grey,
                                                     width: 5.0),
                                                     borderRadius: BorderRadius.all(
                                                         Radius.circular(10.0),
                                                     )
                                                 ),
                                               ),
                                               icon: Icon(Icons.keyboard_arrow_down),
                                               value: selectedAssetType,
                                               items: assetType.
                                               map((item) => DropdownMenuItem<String>(
                                                   value: item,
                                                   child: Text(item,)
                                               ))
                                                   .toList(),
                                               onChanged: (item) => setState(() => selectedAssetType = item),
                                             )
                                         ),
                                         Container(
                                           width: double.infinity,
                                             height: 60,
                                             margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                             child: DropdownButtonFormField<String>(
                                               decoration: InputDecoration(
                                                 border: OutlineInputBorder(
                                                     borderSide: BorderSide(color: Colors.grey,
                                                         width: 5.0),
                                                     borderRadius: BorderRadius.all(
                                                       Radius.circular(10.0),
                                                     )
                                                 ),
                                               ),
                                               icon: Icon(Icons.keyboard_arrow_down),
                                               value: selectedAssetId,
                                               items: assetId.
                                               map((item) => DropdownMenuItem<String>(
                                                   value: item,
                                                   child: Container(
                                                     child: Text(item,),
                                                   ),
                                               ))
                                                   .toList(),
                                               onChanged: (item) => setState(() => selectedAssetId = item),
                                             )
                                         ),
                                         Container(
                                           height: 110,
                                           margin: EdgeInsets.only(top: 10),
                                           decoration: BoxDecoration(
                                           ),
                                           child: Column(
                                             children: [
                                               Container(
                                                 width: MediaQuery.of(context).size.width,
                                                 child: Card(
                                                   shape: RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.only(
                                                           bottomRight: Radius.circular(10),
                                                           topRight: Radius.circular(10),
                                                       topLeft: Radius.circular(10),
                                                       bottomLeft: Radius.circular(10)),
                                                       side: BorderSide(color: Colors.grey)),
                                                   child: Column(
                                                     children: [
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10),
                                                         child: Image.asset('images/register_customer_05.png',
                                                         height: 50,),
                                                       ),
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                                         child: Text('Proof of Residence'),
                                                       )
                                                     ],
                                                   ),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                         Container(
                                           height: 110,
                                           margin: EdgeInsets.only(top: 10),
                                           decoration: BoxDecoration(
                                           ),
                                           child: Column(
                                             children: [
                                               Container(
                                                 width: MediaQuery.of(context).size.width,
                                                 child: Card(
                                                   shape: RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.only(
                                                           bottomRight: Radius.circular(10),
                                                           topRight: Radius.circular(10),
                                                       topLeft: Radius.circular(10),
                                                       bottomLeft: Radius.circular(10)),
                                                       side: BorderSide(color: Colors.grey)),
                                                   child: Column(
                                                     children: [
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10),
                                                         child: Image.asset('images/register_customer_05.png',
                                                         height: 50,),
                                                       ),
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                                         child: Text('Local Gov Doc'),
                                                       )
                                                     ],
                                                   ),
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                         Container(
                                           height: 110,
                                           margin: EdgeInsets.only(top: 10),
                                           decoration: BoxDecoration(
                                           ),
                                           child: Column(
                                             children: [
                                               Container(
                                                 width: MediaQuery.of(context).size.width,
                                                 child: Card(
                                                   shape: RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.only(
                                                           bottomRight: Radius.circular(10),
                                                           topRight: Radius.circular(10),
                                                       topLeft: Radius.circular(10),
                                                       bottomLeft: Radius.circular(10)),
                                                       side: BorderSide(color: Colors.grey)),
                                                   child: Column(
                                                     children: [
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10),
                                                         child: Image.asset('images/register_customer_05.png',
                                                         height: 50,),
                                                       ),
                                                       Container(
                                                         margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                                                         child: Text('Land Registration'),
                                                       )
                                                     ],
                                                   ),
                                                 ),
                                               )
                                             ],
                                           ),
                                         )
                                       ],
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           ),
                         ),
                       )),
                   Container(
                     alignment: Alignment.bottomCenter,
                     margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                     decoration: const BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(40.0)),
                         gradient: LinearGradient(colors: [
                           Color(0xff2CABBB),
                           Color(0xff0B527E),
                         ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
                     ),
                     child: ButtonTheme(
                       minWidth: 400,
                       height: 50,
                       child: MaterialButton(
                         onPressed: () {
                           _verifyDialog();
                         },
                         textColor: Colors.white,
                         child: const Padding(
                           padding: EdgeInsets.all(10.0),
                           child: const Text('Submit', style: const TextStyle(fontSize: 18,),),
                         ),
                       ),
                     ),
                   )

                 ],
               ),
             ),
           )
         ],
       ),
     ),
   );
  }

  void navigaterUser(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CustomerProfile(),));
  }

  void _verifyDialog(){
    showDialog(context: context, builder: (context){
      return Container(
        child: Dialog(
          child: SingleChildScrollView(
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(40.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset('images/login_stuff_28.png',
                    height: 20,),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Verification Code',
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text('Send to customer mobile no.',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    alignment: Alignment.center,
                    child: Text('Enter the 6 Digit OTP',
                    style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 16),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5, left: 10.0),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                              controller: _otp1,
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(1)
                                ]
                            ),
                          ),
                        )
,
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                                controller: _otp2,
                                decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(1)
                                ]
                            ),
                          ),
                        )
,
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                                controller: _otp3,
                                decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(1)
                                ]
                            ),
                          ),
                        )
,
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                                controller: _otp4,
                                decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(1)
                                ]
                            ),
                          ),
                        )
,
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                                controller: _otp5,
                                decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(1)
                                ]
                            ),
                          ),
                        )
,
                        Container(
                          margin: EdgeInsets.only(top: 10.0, right: 2.5),
                          width: 40,
                          height: 50,
                          child: Card(
                            color: Color(0xff17314C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5)),
                                side: BorderSide(width:2, color: Colors.lightBlueAccent)),
                            child: TextField(
                              controller: _otp6,
                             decoration: InputDecoration(
                               border: InputBorder.none
                             ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,
                              fontSize: 18),
                                onChanged: (value){
                                  if (value.isNotEmpty){
                                    FocusScope.of(context).nextFocus();
                                  }else if (value.isEmpty){
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                              inputFormatters: [
                                new LengthLimitingTextInputFormatter(1)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Text('Resend code after 00 sec',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Spacer(),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text('Resend code after 00 sec',
                              style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                gradient: LinearGradient(colors: [
                                  Color(0xff2CABBB),
                                  Color(0xff0B527E),
                                ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
                            ),
                            child: ButtonTheme(
                              minWidth: 400,
                              height: 50,
                              child: MaterialButton(
                                onPressed: () {
                                  navigaterUser();
                                  Fluttertoast.showToast(
                                      msg: 'Coming Soon',
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER);

                                },
                                textColor: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: const Text('Verify DID', style: const TextStyle(fontSize: 18,),),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

