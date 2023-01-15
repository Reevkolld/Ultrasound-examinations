//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PatDataEditor.h"
#include "DBData.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm5 *Form5;
String pib;
String tel;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm5::Button1Click(TObject *Sender)
{
int j=0;
ComboBox3->Items->Clear();
DataModule2->ADOQuery1->First();
for(int i=0;i<DataModule2->ADOQuery1->RecordCount;i++)
{
	if(Edit1->Text==DataModule2->ADOQuery1->FieldByName("patient_pib")->AsString)
	{
	   ComboBox3->Items->Add(DataModule2->ADOQuery1->FieldByName("pat_tel")->AsString);
	   ComboBox3->ItemIndex=0;
	   ComboBox3->Visible=true;
	   Label10->Visible=true;
	   j++;
	   pib=DataModule2->ADOQuery1->FieldByName("patient_pib")->AsString;
	}
    DataModule2->ADOQuery1->Next();
}
if(j==0)ShowMessage("Пацієнта з таким ПІБ не знайдено");
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Button3Click(TObject *Sender)
{
Label9->Visible=true;
DBGrid1->Visible=true;
GroupBox3->Visible=true;
tel=ComboBox3->Text;
DataModule2->ADOQuery1->Active=false;
DataModule2->ADOQuery1->SQL->Clear();
DataModule2->ADOQuery1->SQL->Text="select * from patient where pat_tel like '"+ComboBox3->Text+"';";

DataModule2->ADOQuery1->Active=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Button2Click(TObject *Sender)
{
if(Edit2->Text=="" || Edit3->Text=="" || Edit4->Text=="")ShowMessage("Заповнені не всі поля.");
else
{
DataModule2->ADOQuery1->SQL->Clear();
DataModule2->ADOQuery1->SQL->Text="Update patient ";
DataModule2->ADOQuery1->SQL->Text=DataModule2->ADOQuery1->SQL->Text+"set patient_pib='"+Edit2->Text+"'";
DataModule2->ADOQuery1->SQL->Text=DataModule2->ADOQuery1->SQL->Text+" ,gender="+ComboBox1->ItemIndex+",pat_tel= '"+Edit3->Text+"',birth='"+FormatDateTime("yyyy/mm/dd",DateTimePicker1->Date)+"',adress='"+Edit4->Text+"' where pat_tel='"+ComboBox3->Text+"';";
DataModule2->ADOQuery1->ExecSQL();

DataModule2->ADOQuery1->Active=false;
DataModule2->ADOQuery1->SQL->Clear();
DataModule2->ADOQuery1->SQL->Text="select * from patient where pat_tel like '"+Edit3->Text+"';";

DataModule2->ADOQuery1->Active=true;
ShowMessage("Дані збережено.");
}

}
//---------------------------------------------------------------------------

void __fastcall TForm5::FormCreate(TObject *Sender)
{
DataModule2->ADOQuery1->Active=false;
DataModule2->ADOQuery1->SQL->Clear();
DataModule2->ADOQuery1->SQL->Text="select * from patient;";

DataModule2->ADOQuery1->Active=true;
}
//---------------------------------------------------------------------------

