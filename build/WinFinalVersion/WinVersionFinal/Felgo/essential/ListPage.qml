import QtQuick 6
import Felgo 4

AppPage {

  property alias listView: list

  property var model

  property alias delegate: list.delegate

  property alias section: list.section

  property bool compactSections

  property alias emptyText: list.emptyText

  property alias emptyView: list.emptyView

  property PullToRefreshHandler pullToRefreshHandler

  signal itemSelected(int index, var item)

  property alias showSearch: list.showSearch

  signal search(var term)

  signal clickedBackground

  AppListView {
    id: list
    model: parent.model
    delegate: SimpleRow { }
    section.delegate: SimpleSection {
      style.compactStyle: compactSections
    }
  }
}
