//+------------------------------------------------------------------+
//|                                               DT_select_line.mq4 |
//|                                                              Dex |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Dex"
#property link      ""

#include <DT_defaults.mqh>
#include <DT_icons.mqh>
#include <DT_functions.mqh>
#include <DT_comments.mqh>
//+------------------------------------------------------------------+
//| script program start function                                    |
//+------------------------------------------------------------------+
int start(){
  string sel_name = getSelectedLine(WindowTimeOnDropped(), WindowPriceOnDropped());
  
  if( sel_name != "" ){
    string status = "";
    if( StringSubstr(sel_name,13,2) != "s_" ){
      status = "all";
    }
    renameChannelLine(sel_name, status);
  }
  
  return(0);
}