import 'package:flutter/material.dart';
import '../../model/offers.dart';
import '../../ui/common/offers_summary.dart';
import '../../ui/common/separator.dart';
import '../../ui/text_style.dart';

class DetailPage extends StatefulWidget {
  final Offer offer;
  DetailPage(this.offer);
  _MyDetailPageState createState() {
    return _MyDetailPageState(this.offer);
  }
}

class _MyDetailPageState extends State<DetailPage>
    with TickerProviderStateMixin {
  final Offer offer;
  _MyDetailPageState(this.offer);

  AnimationController _controllerDescription;
  Animation _animationDescription;

  AnimationController _controllerOfferHead;
  AnimationController _controllerOfferBody;

  @override
  void initState() {
    // Head de l'offre
    _controllerOfferHead = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Body de l'offre
    _controllerOfferBody = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    //Description
    _controllerDescription = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animationDescription = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controllerDescription);

    super.initState();
  }

  @override
  dispose() {
    _controllerDescription.dispose();
    _controllerOfferHead.dispose();
    _controllerOfferBody.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    _controllerDescription.forward();
    _controllerOfferHead.forward();
    _controllerOfferBody.forward();

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(75, 75, 75, 1),
        child: Stack(
          children: <Widget>[
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getContent() {
    final _overviewTitle = "Offre".toUpperCase();
    return Container(
      child: ListView(
        children: <Widget>[
          SlideTransition(
            position:
                Tween<Offset>(begin: Offset(-1, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
              parent: _controllerOfferHead,
              curve: Curves.elasticInOut,
            )),
            child: OfferSummary(
              offer,
              horizontal: false,
            ),
          ),
          SlideTransition(
            position:
                Tween<Offset>(begin: Offset(2.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
              parent: _controllerOfferBody,
              curve: Curves.elasticInOut,
            )),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeTransition(
                    opacity: _animationDescription,
                    child: Text(
                      _overviewTitle,
                      style: Style.headerTextStyle,
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                            begin: Offset(2.0, 0.0), end: Offset(0.0, 0.0))
                        .animate(CurvedAnimation(
                      parent: _controllerOfferHead,
                      curve: Curves.elasticInOut,
                    )),
                    child: Separator(),
                  ),
                  FadeTransition(
                    opacity: _animationDescription,
                    child:
                        Text(offer.description, style: Style.commonTextStyle),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
          ),
        ],
      ),
    );
  }

  // Flèche revenir en arrière
  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(color: Colors.white),
    );
  }
}
