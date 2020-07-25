import QtQuick 1.1
import com.victron.velib 1.0
import "utils.js" as Utils

MbPage {
	id: root

	property string bindPrefix
	property BatteryDetails details: BatteryDetails { bindPrefix: root.bindPrefix }

	model: VisualItemModel {

		MbItemRow {
			description: qsTr("Impedances Min|Max|Sum")
			values: [
				MbTextBlock { item { bind: service.path("/Impedances/Min"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Max"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Sum"); } width: 70; height: 25 }
			]
		}

		MbItemRow {
			description: qsTr("Cells 1|2|3")
			values: [
				MbTextBlock { item { bind: service.path("/Impedances/Cell1"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Cell2"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Cell3"); } width: 70; height: 25 }
			]
		}

		MbItemRow {
			description: qsTr("Cells 4|5|6")
			values: [
				MbTextBlock { item { bind: service.path("/Impedances/Cell4"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Cell5"); } width: 70; height: 25 },
				MbTextBlock { item { bind: service.path("/Impedances/Cell6"); } width: 70; height: 25 }
			]
		}

		MbItemRow {
			description: qsTr("Impedances Data Updated")
			values: [
				MbTextBlock { item { bind: service.path("/Impedances/UpdateTimestamp"); } width: 215; height: 25 }
			]
		}

	}
}
