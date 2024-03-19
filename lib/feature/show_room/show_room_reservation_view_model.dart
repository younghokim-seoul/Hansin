import 'package:hansin/data/model/response/content_info_vo.dart';
import 'package:hansin/domain/repository/item_repository.dart';
import 'package:hansin/feature/show_room/show_room_calendar_ui_state.dart';
import 'package:hansin/feature/show_room/show_room_reservation_state.dart';
import 'package:hansin/utils/dev_log.dart';
import 'package:hansin/utils/reactive/arc_subject.dart';
import 'package:hansin/viewmodel_interface.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ShowRoomReservationViewModel implements ViewModelInterface {
  final showRoomReservationUiState = ArcSubject<ShowRoomReservationState>();
  final showRoomCalendarUiState = ArcSubject<ShowRoomCalendarUiState>(
      seed: ShowRoomCalendarUiState(
          isInitialize: false, isLoading: false, items: [], error: false));
  final isVisibleCalendar = false.sbj;

  final ItemRepository _itemRepository;

  ShowRoomReservationViewModel(this._itemRepository);

  void onLoadGuideData() async {
    Log.d(":::onLoadData =>");
    Map<String, String> param = {};
    param['contentName'] = ContentType.show.name;
    loadState(Loading());
    try {
      final response = await _itemRepository.getContentInfo(param);
      Log.d(":::response => $response");
      loadState(Success(entity: response));
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState(Error());
    }
  }

  void onLoadCalendarData() async {

    loadState((showRoomCalendarUiState.val as ShowRoomCalendarUiState).copyWith(isInitialize: true,isLoading: true,error: false));
    try {
      final response = await _itemRepository.getRestCalendar();
      loadState((showRoomCalendarUiState.val as ShowRoomCalendarUiState).copyWith(isLoading: false,error: false,items: response));
    } on Exception catch (e) {
      Log.e(":::e => $e");
      loadState((showRoomCalendarUiState.val as ShowRoomCalendarUiState).copyWith(error: true));
    }
  }



  void setToggleCalendar() {
    isVisibleCalendar.val = !isVisibleCalendar.val;
  }

  @override
  disposeAll() {}

  @override
  loadState(state) {
    if (state is ShowRoomReservationState) {
      showRoomReservationUiState.val = state;
    }

    if (state is ShowRoomCalendarUiState) {
      showRoomCalendarUiState.val = state;
    }
  }
}
