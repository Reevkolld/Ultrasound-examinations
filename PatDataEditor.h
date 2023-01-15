//---------------------------------------------------------------------------

#ifndef PatDataEditorH
#define PatDataEditorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm5 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TEdit *Edit1;
	TButton *Button1;
	TDBGrid *DBGrid1;
	TGroupBox *GroupBox3;
	TLabel *Label2;
	TEdit *Edit2;
	TLabel *Label3;
	TComboBox *ComboBox1;
	TLabel *Label4;
	TEdit *Edit3;
	TLabel *Label5;
	TEdit *Edit4;
	TLabel *Label6;
	TLabel *Label7;
	TDateTimePicker *DateTimePicker1;
	TButton *Button2;
	TLabel *Label9;
	TLabel *Label10;
	TComboBox *ComboBox3;
	TButton *Button3;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm5(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm5 *Form5;
//---------------------------------------------------------------------------
#endif
