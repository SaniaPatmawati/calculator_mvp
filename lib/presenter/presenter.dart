import 'package:latihan_mpv/model/model.dart';
import 'package:latihan_mpv/view/view.dart';


class AppPresenter{
  set view(AppView value){}
  void buttonClick(){}
}
class BasicAppPresenter implements AppPresenter{
  AppModel _model;
  AppView _view;

  BasicAppPresenter(){
    this._model=AppModel();
  }

  @override
  void set view(AppView value) {
    _view=value;
    this._view.refreshData(this._model);
  }

  @override
  void buttonClick() {
    // menjumlahkan nilai yg di input\
    int v1=int.parse(this._model.controller1.text);
    int v2=int.parse(this._model.controller2.text);
    this._model.resut=v1+v2;
    this._view.refreshData(this._model);
  }
}