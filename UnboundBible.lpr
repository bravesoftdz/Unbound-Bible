program unboundbible;

uses
  {$ifdef unix}{$ifdef UseCThreads} cthreads, {$endif}{$endif}
  {$ifdef darwin} printer4lazarus, {$endif}
  Interfaces, Graphics, Forms, richmemopackage, UnitShelf,
  UnitMain, UnitLang, UnitAbout, UnitSearch, UnitTool, UnitCompare,
  UnitCopy, UnitTrans, UnitStream;

{$R *.res}

begin
  Application.Title := {$ifdef windows} 'Unbound Bible'; {$else} 'unboundbible'; {$endif}
  Application.Initialize;
  Application.CreateForm(TMainForm,      MainForm);
  Application.CreateForm(TAboutBox,      AboutBox);
  Application.CreateForm(TSearchForm,    SearchForm);
  Application.CreateForm(TCompareForm,   CompareForm);
  Application.CreateForm(TFormCopy,      FormCopy);
  Application.CreateForm(TFormTranslate, FormTranslate);
  MainForm.TranslateAll;
  Application.Run;
end.

