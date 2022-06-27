#!/bin/bash

Keywords=(\
	"App"\
	"ConnectLM"\
	"DBWorker"\
	"DisplaySender"\
	"Display"\
	"HouseKeeping"\
	"LUA"\
	"MainTask"\
	"ManetUDPRecv"\
	"Manet SManet Socket"\
	"RemoteIO"\
	"RemoteVideo"\
	"Root"\
	"RT"\
	"SecureProtocolManet"\
	"SecureTCP"\
	"ShowMetaDataScan"\
	"SystemMonitor"\
	"WatchdogTask"\
	"WebServer"\
	)
IsolateKeywords()
{
	for i in "${!Keywords[@]}"
	do
		sed 's/\"${Keywords[$i]}  \"  /\"${Keywords[$i]}\"/g' 
		echo "${Keywords[$i]}"
	done
}
cat log | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp/LC_App_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM/LC_ConnectLM_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker/LC_DBWorker_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender/LC_DisplaySender_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay/LC_Display_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping/LC_HouseKeeping_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA/LC_LUA_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask/LC_MainTask_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv/LC_ManetUDPRecv_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket/LC_Manet/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO/LC_RemoteIO_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo/LC_RemoteVideo_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot/LC_Root_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT/LC_RT_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet/LC_SecureProtocolManet_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP/LC_SecureTCP_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan/LC_ShowMetaDataScan_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor/LC_SystemMonitor_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask/LC_WatchdogTask_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer/LC_WebServer_LC/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nContent/ Content/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nOnly\"/ Only"/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMessage::Send NetworkInterface/\'$'\t\tSystemMessage::Send NetworkInterface/g' | \
sed 's/LC_App_LC/\'$'\nApp/g' | \
sed 's/LC_ConnectLM_LC/\'$'\nConnectLM/g' | \
sed 's/LC_DBWorker_LC/\'$'\nDBWorker/g' | \
sed 's/LC_DisplaySender_LC/\'$'\nDisplaySender/g' | \
sed 's/LC_Display_LC/\'$'\nDisplay/g' | \
sed 's/LC_HouseKeeping_LC/\'$'\nHouseKeeping/g' | \
sed 's/LC_LUA_LC/\'$'\nLUA/g' | \
sed 's/LC_MainTask_LC/\'$'\nMainTask/g' | \
sed 's/LC_ManetUDPRecv_LC/\'$'\nManetUDPRecv/g' | \
sed 's/LC_Manet/\'$'\nManet Socket/g' | \
sed 's/LC_RemoteIO_LC/\'$'\nRemoteIO/g' | \
sed 's/LC_RemoteVideo_LC/\'$'\nRemoteVideo/g' | \
sed 's/LC_Root_LC/\'$'\nRoot/g' | \
sed 's/LC_RT_LC/\'$'\nRT/g' | \
sed 's/LC_SecureProtocolManet_LC/\'$'\nSecureProtocolManet/g' | \
sed 's/LC_SecureTCP_LC/\'$'\nSecureTCP/g' | \
sed 's/LC_ShowMetaDataScan_LC/\'$'\nShowMetaDataScan/g' | \
sed 's/LC_SystemMonitor_LC/\'$'\nSystemMonitor/g' | \
sed 's/LC_WatchdogTask_LC/\'$'\nWatchdogTask/g' | \
sed 's/LC_WebServer_LC/\'$'\nWebServer/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp  /\'$'\nApp /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nApp /\'$'\nApp\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM  /\'$'\nConnectLM /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nConnectLM /\'$'\nConnectLM\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker  /\'$'\nDBWorker /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDBWorker /\'$'\nDBWorker\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender  /\'$'\nDisplaySender /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplaySender /\'$'\nDisplaySender\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay  /\'$'\nDisplay /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nDisplay /\'$'\nDisplay\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping  /\'$'\nHouseKeeping /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nHouseKeeping /\'$'\nHouseKeeping\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA  /\'$'\nLUA /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nLUA /\'$'\nLUA\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask  /\'$'\nMainTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nMainTask /\'$'\nMainTask\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv  /\'$'\nManetUDPRecv /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManetUDPRecv /\'$'\nManetUDPRecv\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket  /\'$'\nManet Socket /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nManet Socket /\'$'\nManet Socket\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO  /\'$'\nRemoteIO /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteIO /\'$'\nRemoteIO\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo  /\'$'\nRemoteVideo /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRemoteVideo /\'$'\nRemoteVideo\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot  /\'$'\nRoot /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRoot /\'$'\nRoot\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT  /\'$'\nRT /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nRT /\'$'\nRT\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet  /\'$'\nSecureProtocolManet /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureProtocolManet /\'$'\nSecureProtocolManet\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP  /\'$'\nSecureTCP /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSecureTCP /\'$'\nSecureTCP\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan  /\'$'\nShowMetaDataScan /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nShowMetaDataScan /\'$'\nShowMetaDataScan\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor  /\'$'\nSystemMonitor /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nSystemMonitor /\'$'\nSystemMonitor\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask  /\'$'\nWatchdogTask /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWatchdogTask /\'$'\nWatchdogTask\t/g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer  /\'$'\nWebServer /g' | \
sed -e ':a' -e 'N' -e '$!ba' -e 's/\nWebServer /\'$'\nWebServer\t/g' | \
sed 's/ : /\'$'\t/' > \
FinalOutput
echo "-------------------------------------------"



