import 'package:flutter/material.dart';
import '../../model/offers.dart';
import '../../ui/common/separator.dart';
import '../../ui/detail/detail_page.dart';
import '../../ui/text_style.dart';

class OfferSummary extends StatelessWidget {
  final Offer offer;
  final bool horizontal;

  OfferSummary(this.offer, {this.horizontal = true});

  OfferSummary.vertical(this.offer) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    
    // Image icone valise
    final offerThumbnail =  Container(
      margin:  EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child:  Hero(
        tag: "offer-hero-${offer.id}",
        child:  Image(
          image:  AssetImage(offer.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    // Dessous du separator
    Widget _offerValue({String value, String image}) {
      return  Container(
        child:  Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
           Image.asset(image, height: 12.0),
           Container(width: 8.0),
           Text(offer.salary, style: Style.smallTextStyle),
        ]),
      );
    }

    // Composants de la carte
    final offerCardContent =  Container(
      margin:  EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints:  BoxConstraints.expand(),
      child:  Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
           Container(height: 3.0),
           Text(offer.name, style: Style.titleTextStyle),
           Container(height: 7.0),
           Text(offer.location, style: Style.commonTextStyle),
           Separator(),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _offerValue(
                      value: offer.salary,
                      image: 'assets/img/ic_euro.png')),
            ],
          ),
        ],
      ),
    );

    // Design de la carte
    final offerCard =  Container(
      child: offerCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal ?  EdgeInsets.only(left: 46.0) :  EdgeInsets.only(top: 72.0),
      decoration:  BoxDecoration(
        // color:  Color(0xFF333366),
        color:  Color.fromRGBO(40, 40, 40, 1),
        shape: BoxShape.rectangle,
        borderRadius:  BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
           BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset:  Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    // Return l'ensemble de la carte + img + DetailPage avec transition qui ne marche pas très bien 
    return  GestureDetector(
      onTap: horizontal ? () => Navigator.of(context).push(
         PageRouteBuilder(
          pageBuilder: (_, __, ___) =>  DetailPage(offer),
          transitionsBuilder: (
            context, 
            animation, 
            secondaryAnimation,
            child
          ) =>  FadeTransition(
            opacity: animation, 
            child: child
          ),
        ),
      ) : null,
      child:  Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        child:  Stack(
          children: <Widget>[
            offerCard,
            offerThumbnail,
          ],
        ),
      )
    );
    
  }
}
