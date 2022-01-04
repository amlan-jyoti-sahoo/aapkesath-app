import 'package:flutter/material.dart';

class NursingSupportCard extends StatelessWidget {
  const NursingSupportCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double deviceHeight = mediaQueryData.size.height;
    double devicewidth = mediaQueryData.size.width;

    return Container(
      alignment: Alignment.center,
      margin: new EdgeInsets.all(10),
      height: 190,
      width: devicewidth * 0.945,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(
              -15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: new EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqKGHnPvi78xuSPLgkxdLwk4sXIMPqZSZQpszcpvCw00tNrFv2PyHDwUwPLpY1CgS8vwk&usqp=CAU'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 110,
            child: Container(
              height: 110,
              width: 220,
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        'The Endo-Diabates Care',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 38,
                    left: 5,
                    child: Container(
                      height: 28,
                      alignment: Alignment.center,
                      child: Text(
                        '20+ Year Exp..',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 5,
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          child: Text(
                            '4.9',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow[700],
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.yellow[700],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          child: Text(
                            '(157)',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 15,
            child: Container(
              height: 50,
              width: 10,
              child: Icon(Icons.info_outline),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green[300],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: 10,
                    child: Text(
                      'The Endo-Diabates Care',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      softWrap: true,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: Text(
                      'Plot No,557, Saheed Nagar Rd, BBSR',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                      softWrap: true,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.orange[300],
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 185,
            left: 10,
            right: 10,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 40.0,
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
