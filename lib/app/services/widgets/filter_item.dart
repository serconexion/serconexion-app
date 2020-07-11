import 'package:flutter/material.dart';

class FilterItem extends StatefulWidget {
  final Function(String, dynamic) modifyFormState;
  final int indexField;

  FilterItem(this.modifyFormState, this.indexField);

  @override
  _FilterItemState createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  final List<String> titles = ['Edad', 'Sexo', 'Calificacion'];

  final List<TextEditingController> _textControllers = [
    TextEditingController(),
    TextEditingController()
  ];

  String sex = 'Masculino';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(bottom: 15),
      duration: Duration(milliseconds: 100),
      curve: Curves.easeIn,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  this.titles[widget.indexField],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    setState(() {
                      this.isExpanded = !this.isExpanded;

                      FocusScope.of(context).unfocus();
                    });
                  },
                  icon: Icon(
                    this.isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              duration: Duration(
                milliseconds: 100,
              ),
              height: this.isExpanded ? 60 : 0,
              alignment: Alignment.centerLeft,
              child: Builder(
                builder: (BuildContext ctx) {
                  switch (widget.indexField) {
                    case 1:
                      return this.dropdownSex();
                      break;
                    default:
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.white,
                              cursorWidth: 4,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: this.isExpanded
                                    ? Colors.white
                                    : Theme.of(context).accentColor,
                              ),
                              decoration: InputDecoration(
                                hintText: ('Mínima'),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 1, horizontal: 10),
                                border: this.isExpanded
                                    ? OutlineInputBorder()
                                    : InputBorder.none,
                                enabledBorder: this.isExpanded
                                    ? OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      )
                                    : InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              cursorColor: Colors.white,
                              cursorWidth: 4,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: this.isExpanded
                                    ? Colors.white
                                    : Theme.of(context).accentColor,
                              ),
                              decoration: InputDecoration(
                                hintText: ('Máxima'),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 1, horizontal: 10),
                                border: this.isExpanded
                                    ? OutlineInputBorder()
                                    : InputBorder.none,
                                enabledBorder: this.isExpanded
                                    ? OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        ),
                                      )
                                    : InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dropdownSex() {
    return DropdownButton<String>(
      underline: Container(),
      value: this.sex,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      dropdownColor: Theme.of(context).primaryColor,
      items: <String>['Masculino', 'Femenino']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      iconSize: 25,
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      onChanged: (value) {
        setState(() {
          this.sex = value;
        });
        widget.modifyFormState('sex', value);
      },
    );
  }
}
