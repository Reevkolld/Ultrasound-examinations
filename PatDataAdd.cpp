//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PatDataAdd.h"
#include "DBData.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm3::Button2Click(TObject *Sender)
{
Edit1->Clear();
Edit2->Clear();
Edit3->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TForm3::FormCreate(TObject *Sender)
{
DBGrid1->Columns->Items[0]->Title->Caption="ПІБ Пацієнта";
DBGrid1->Columns->Items[1]->Title->Caption="Стать";
DBGrid1->Columns->Items[2]->Title->Caption="Телефон";
DBGrid1->Columns->Items[3]->Title->Caption="Дата народження";
DBGrid1->Columns->Items[4]->Title->Caption="Адреса";
DataModule2->ADOQuery1->Active=false;
DataModule2->ADOQuery1->SQL->Clear();
DataModule2->ADOQuery1->SQL->Text="select * from patient;";

DataModule2->ADOQuery1->Active=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button1Click(TObject *Sender)
{
if(Edit1->Text==""|| Edit2->Text==""||Edit3->Text=="")ShowMessage("Заповнені не усі поля.");
else
{
int count = DBGrid1->DataSource->DataSet->RecordCount;
count++;
DataModule2->ADOQuery1->Insert();
DataModule2->ADOQuery1->FieldByName("patient_id")->AsInteger=count++;
DataModule2->ADOQuery1->FieldByName("patient_pib")->AsString=Edit1->Text;
if(ComboBox1->ItemIndex==0)DataModule2->ADOQuery1->FieldByName("gender")->AsInteger=0;
else DataModule2->ADOQuery1->FieldByName("gender")->AsInteger=1;
DataModule2->ADOQuery1->FieldByName("pat_tel")->AsString=Edit2->Text;
DataModule2->ADOQuery1->FieldByName("adress")->AsString=Edit3->Text;
DataModule2->ADOQuery1->FieldByName("birth")->AsDateTime=FormatDateTime("dd/mm/yyyy",DateTimePicker1->Date);
DataModule2->ADOQuery1->Post();
ShowMessage("Пацієнта додано успішно.");
}
}
//---------------------------------------------------------------------------

