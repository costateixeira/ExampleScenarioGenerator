unit Umain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, shellapi, winapi.windows, fmx.platform.win,
  System.rtti,
  FHIRClient, FHIRResources, FhirUtilities, FHIRBase, FHIRTypes,
  fmx.Types, fmx.Controls, fmx.Forms, fmx.Graphics, fmx.Dialogs, fmx.ListBox,
  fmx.Layouts, fmx.TreeView, fmx.Controls.Presentation, fmx.StdCtrls,
  fmx.TabControl, fmx.ScrollBox, fmx.Memo, fmx.Edit, fmx.DateTimeCtrls,
  fmx.Menus, System.ImageList, fmx.ImgList;

type

  TFHIRTreeViewItem = class(TTreeViewItem)
  private
    fFhirObject: tFHIRObject;
  public
    property FhirObject: tFHIRObject read fFhirObject write fFhirObject;
  end;

  TForm1 = class(TForm)
    FormStyles: TStyleBook;
    Button1: TButton;
    TabControl1: TTabControl;
    TreeView1: TTreeView;
    TabItem1: TTabItem;
    FramedScrollBox1: TFramedScrollBox;
    TabControl2: TTabControl;
    Intro: TTabItem;
    TabItem2: TTabItem;
    ScrollBox2: TScrollBox;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DateEdit1: TDateEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label12: TLabel;
    Edit8: TEdit;
    Label13: TLabel;
    Memo3: TMemo;
    Label9: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Edit5: TEdit;
    btnActor: TCornerButton;
    btnResource: TCornerButton;
    btnProcess: TCornerButton;
    ActorTab: TTabItem;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Instance_tab: TTabItem;
    btnContainedInstance: TCornerButton;
    btnVersion: TCornerButton;
    Edit9: TEdit;
    Label14: TLabel;
    Edit10: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Memo4: TMemo;
    Process_tab: TTabItem;
    Edit4: TEdit;
    Label5: TLabel;
    ScrollBox1: TScrollBox;
    Label6: TLabel;
    Memo2: TMemo;
    Step_tab: TTabItem;
    btnOperation: TCornerButton;
    btnProcess2: TCornerButton;
    Alternative_tab: TTabItem;
    Label18: TLabel;
    Edit12: TEdit;
    btnOption: TCornerButton;
    Option_tab: TTabItem;
    Memo5: TMemo;
    Label19: TLabel;
    Label20: TLabel;
    Edit13: TEdit;
    btnStep2: TCornerButton;
    CheckBox2: TCheckBox;
    Operation_tab: TTabItem;
    Label21: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Edit16: TEdit;
    ComboBox4: TComboBox;
    Label24: TLabel;
    ComboBox5: TComboBox;
    Label25: TLabel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label26: TLabel;
    ComboBox6: TComboBox;
    Label27: TLabel;
    ComboBox7: TComboBox;
    btnSave: TButton;
    Open: TButton;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    btnRender: TCornerButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Edit1: TEdit;
    Label28: TLabel;
    Edit18: TEdit;
    Edit17: TEdit;
    Memo6: TMemo;
    Label29: TLabel;
    btnStep: TCornerButton;
    Label30: TLabel;
    Memo7: TMemo;
    CornerButton2: TCornerButton;
    Memo8: TMemo;
    Label31: TLabel;
    ComboBox3: TComboBox;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    ImageList1: TImageList;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    PopupMenu1: TPopupMenu;
    MenuItem7: TMenuItem;
    Button11: TButton;
    Button10: TButton;
    Button13: TButton;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    btnAlternative: TCornerButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    procedure DoInfoClick(Sender: TObject);
    procedure DoApplyStyleLookup(Sender: TObject);
    function createElement(el_type_, name: string): tFHIRObject;
    function addTVItem(TreeView: TTreeView; parent: TFHIRTreeViewItem; itemType, text: string; obj: tFHIRObject): TFHIRTreeViewItem;
    procedure TreeView1Change(Sender: TObject);
    procedure btnActorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnResourceClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure showTab(obj: tFHIRObject);
    procedure btnRenderClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    Procedure ReloadTreeview(sel_item: TTreeViewItem);
    procedure btnProcessClick(Sender: TObject);
    procedure btnVersionClick(Sender: TObject);
    procedure btnAlternativeClick(Sender: TObject);
    procedure btnStepClick(Sender: TObject);
    procedure btnProcess2Click(Sender: TObject);
    function SaveAs: integer;
    procedure btnOperationClick(Sender: TObject);
    procedure TabControl2Change(Sender: TObject);
    procedure Edit16Exit(Sender: TObject);
    procedure Edit15Exit(Sender: TObject);
    procedure Edit14Exit(Sender: TObject);
    procedure Memo8Exit(Sender: TObject);
    procedure ComboBox4Exit(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit12Exit(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  exsc: TFHIRExampleScenario;
  filename: string;
  internal: boolean;

implementation

{$I fhir.inc}
{$R *.fmx}

function TForm1.addTVItem(TreeView: TTreeView; parent: TFHIRTreeViewItem; itemType, text: string; obj: tFHIRObject): TFHIRTreeViewItem;
var
  new_item, current_item, Item: TFHIRTreeViewItem;
var
  i: integer;
  objtype:string;
begin

  Item := TFHIRTreeViewItem.Create(TreeView);

  objtype:=obj.fhirType;
  if (parent = nil) then
    TreeView.AddObject(Item)
  else if parent.Count = 0 then
    parent.AddObject(Item)
  else
    parent.AddObject(Item);

  Item.StylesData['info'] := TValue.From<TNotifyEvent>(DoInfoClick);
  Item.OnApplyStyleLookup := DoApplyStyleLookup;
  Item.StylesData['attrType'] := itemType;
  Item.StylesData['sortOrder'] := 1;
  TreeView.Selected := Item;
  Item.Height := 20;
  result := Item;
  Item.text := text;
  Item.PopupMenu := PopupMenu1;
  Item.FhirObject := obj;
  // if parent <> nil then item.parentItem:=parent;

  TreeView.EndUpdate;
  TreeView.repaint;

  // if TreeView.Selected <> nil then TreeView.Selected.Expand;

  if obj is tfhirexamplescenarioinstance then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenarioinstance(obj).versionList.Count - 1 do
    begin
      new_item := addTVItem(TreeView1, current_item, 'version', tfhirexamplescenarioinstance(obj).versionList[i].versionId, tfhirexamplescenarioinstance(obj).versionList[i]);
    end;
  end;

  if obj is tfhirexamplescenarioProcess then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenarioProcess(obj).stepList.Count - 1 do
    begin
      new_item := addTVItem(TreeView1, current_item, 'step', 'Step', tfhirexamplescenarioProcess(obj).stepList[i]);
    end;
  end;

  if obj is tfhirexamplescenarioProcessStep then
  begin
    // ok so this is wrong      - need to split between top process and lower procs

    current_item := Item;
    if tfhirexamplescenarioProcessStep(obj).processList.Count <> 0 then
      for i := 0 to tfhirexamplescenarioProcessStep(obj).processList.Count - 1 do
      begin
        new_item := addTVItem(TreeView1, current_item, 'process', tfhirexamplescenarioProcessStep(obj).processList[i].title, tfhirexamplescenarioProcessStep(obj).processList[i]);
      end;

    if tfhirexamplescenarioProcessStep(obj).pause then
    begin
      new_item := addTVItem(TreeView1, current_item, 'pause', '(pause)', tfhirexamplescenarioProcessStep(obj).pauseElement);
    end;
    if tfhirexamplescenarioProcessStep(obj).operation <> nil then
    begin
      new_item := addTVItem(TreeView1, current_item, 'operation', tfhirexamplescenarioProcessStep(obj).operation.name, tfhirexamplescenarioProcessStep(obj).operation);
    end;

    if tfhirexamplescenarioProcessStep(obj).alternative <> nil then
    begin
      new_item := addTVItem(TreeView1, current_item, 'alternative', tfhirexamplescenarioProcessStep(obj).alternative.name, tfhirexamplescenarioProcessStep(obj).alternative);
    end;
  end;

  if obj is tfhirexamplescenarioProcessStepAlternative then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenarioProcessStepAlternative(obj).optionList.Count - 1 do
    begin
      new_item := addTVItem(TreeView1, current_item, 'option', 'Option', tfhirexamplescenarioProcessStepAlternative(obj).optionList[i]);
    end;
  end;

end;

procedure TForm1.btnActorClick(Sender: TObject);
var
  Actor: tfhirexamplescenarioActor;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  Actor := tfhirexamplescenarioActor(createElement('actor', 'Actor ' + inttostr(exsc.actorList.Count + 1)));
  Actor.type_ := ExamplescenarioActorTypePerson;
  Actor.name := 'Actor ' + inttostr(exsc.actorList.Count + 1);
  Actor.actorId := 'A' + inttostr(exsc.actorList.Count + 1);
  exsc.actorList.AddItem(Actor);
  ReloadTreeview(TreeView1.Selected); // (new_item);
  // TreeView1.Selected := treeview1.selected.ParentItem;

end;

procedure TForm1.btnAlternativeClick(Sender: TObject);
var
  alternative: tfhirexamplescenarioProcessStepAlternative;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  alternative := tfhirexamplescenarioProcessStepAlternative(createElement('alternative', 'Alternative'));
  alternative.name := 'Alternative';
  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).alternative:= alternative;
  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

procedure TForm1.btnOperationClick(Sender: TObject);
var
  operation: tfhirexamplescenarioProcessStepOperation;
  Item, new_item: TFHIRTreeViewItem;
  idx, targetpos, i: integer;

begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  operation := tfhirexamplescenarioProcessStepOperation(createElement('operation', 'Operation'));
  operation.name := 'Operation';
  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(Item).FhirObject).operation := operation;
  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

procedure TForm1.btnProcess2Click(Sender: TObject);
var
  Process: tfhirexamplescenarioProcess;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;

begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);

  Process := tfhirexamplescenarioProcess(createElement('process', 'New Process'));
  Process.title := 'Process';
  // exsc.process := (Process);
  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).processList.AddItem(Process);

  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

procedure TForm1.btnProcessClick(Sender: TObject);
var
  Process: tfhirexamplescenarioProcess;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin
  if exsc.Process <> nil then
  begin
    Showmessage('Multiple Processes Not Implemented');
    exit;
  end;

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  Process := tfhirexamplescenarioProcess(createElement('process', 'New Process'));
  Process.title := 'Process';
  exsc.Process := (Process);
  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

function TForm1.createElement(el_type_, name: string): tFHIRObject;
var
  res: tFHIRObject;
begin

  if el_type_ = 'exampleScenario' then
  begin
    res := TFHIRExampleScenario.Create;
  end;

  if el_type_ = 'actor' then
  begin
    res := tfhirexamplescenarioActor.Create;
  end;

  if el_type_ = 'instance' then
  begin
    res := tfhirexamplescenarioinstance.Create;
  end;

  if el_type_ = 'process' then
  begin
    res := tfhirexamplescenarioProcess.Create;
  end;

  if el_type_ = 'step' then
  begin
    res := tfhirexamplescenarioProcessStep.Create;
  end;

  if el_type_ = 'version' then
  begin
    res := tfhirexamplescenarioInstanceVersion.Create;
  end;

  if el_type_ = 'alternative' then
  begin
    res := tfhirexamplescenarioProcessStepAlternative.Create;
  end;

  if el_type_ = 'option' then
  begin
    res := tfhirexamplescenarioProcessStepAlternativeOption.Create;
  end;

  if el_type_ = 'operation' then
  begin
    res := tfhirexamplescenarioProcessStepOperation.Create;
  end;

  result := res;

end;

procedure TForm1.btnResourceClick(Sender: TObject);
var
  Instance: tfhirexamplescenarioinstance;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  Instance := tfhirexamplescenarioinstance(createElement('instance', 'Resource'));
  Instance.resourceType := ResourceTypesNull;
  Instance.name := 'Resource ' + inttostr(exsc.instanceList.Count + 1);
  Instance.resourceId := 'R' + inttostr(exsc.instanceList.Count + 1);
  // Instance.id := 'new';
  exsc.instanceList.AddItem(Instance);
  ReloadTreeview(TreeView1.Selected); // (new_item);
  // TreeView1.Selected := Item;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  MenuItem7Click(Self)
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  es: TFHIRExampleScenario;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin

  // Item := TFHIRTreeViewItem(TreeView1.Selected);
  es := TFHIRExampleScenario(createElement('exampleScenario', 'ExampleScenario'));
  es.name := 'Example Scenario';
  exsc := es;
  ReloadTreeview(nil); // (new_item);
  // TreeView1.Selected := nil;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
  idx: integer;
begin
  TreeView1.Selected.Index := TreeView1.Selected.Index - 1;
  idx := exsc.actorList.IndexOf(tfhirexamplescenarioActor(TFHIRTreeViewItem(TreeView1.Selected).FhirObject));
  if idx > 1 then
    exsc.actorList.Exchange(idx, idx - 1);
  ReloadTreeview(TreeView1.Selected); // (new_item);
end;

procedure TForm1.Button13Click(Sender: TObject);
var
  idx: integer;

begin

  TreeView1.Selected.Index := TreeView1.Selected.Index + 1;

  idx := exsc.actorList.IndexOf(tfhirexamplescenarioActor(TFHIRTreeViewItem(TreeView1.Selected).FhirObject));
  if idx < exsc.actorList.Count - 1 then
    exsc.actorList.Exchange(idx, idx + 1);
  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  obj: TFHIRExampleScenario;

begin
  obj := exsc;
  if obj = nil then
    exit;
  (obj).name := Edit5.text;
  (obj).title := Edit1.text;
  (obj).status := TfHIRPublicationStatusEnum(ComboBox2.ItemIndex);
  obj.experimental := CheckBox1.IsChecked;
  obj.id := Edit6.text;
  obj.date.makeLocal(DateEdit1.DateTime);
  obj.version := Edit8.text;
  obj.publisher := Edit7.text;
  obj.purpose := Memo3.text;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  obj: tfhirexamplescenarioProcess;

begin
  if obj = nil then
    exit;

  obj := exsc.Process;
  if obj = nil then
    exit;
  obj.title := Edit4.text;
  obj.description := Memo2.text;
  obj.preConditions := Memo6.text;
  obj.postConditions := Memo7.text;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  obj: tfhirexamplescenarioActor;

begin
  obj := tfhirexamplescenarioActor(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.name := Edit3.text;
  obj.type_ := TfHIRExampleScenarioActorTypeEnum(ComboBox1.ItemIndex);
  obj.actorId := Edit2.text;
  obj.description := Memo1.text;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  obj: tfhirexamplescenarioinstance;

begin
  obj := tfhirexamplescenarioinstance(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.resourceId := Edit10.text;
  obj.resourceType := TFHIRResourceTypesEnum(ComboBox3.ItemIndex);
  obj.name := Edit9.text;
  obj.description := Memo4.text;

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepAlternative;

begin
  obj := tfhirexamplescenarioProcessStepAlternative(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.name := Edit12.text;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepAlternativeOption;

begin
  obj := tfhirexamplescenarioProcessStepAlternativeOption(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).description := Memo5.text;

end;

procedure TForm1.Button9Click(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;

begin
  (*
    obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
    if obj = nil then Exit;

    (obj).name := Edit14.text;
    (obj).number := Edit15.text;
    (obj).type_ := Edit16.text;
    (obj).description := Memo8.text;

    (obj).initiator := ComboBox4.Items[ComboBox4.ItemIndex];
    (obj).receiver := ComboBox5.Items[ComboBox5.ItemIndex];

    obj.request.Free;
    if ComboBox6.ItemIndex <> 0 then
    begin
    if obj.request = nil then
    obj.request := TFhirExampleScenarioInstanceContainedInstance.Create;
    obj.request.resourceId := ComboBox6.Items[ComboBox6.ItemIndex];
    end;
  *)
end;

procedure TForm1.ComboBox2Exit(Sender: TObject);
begin
  Button3Click(Self);
end;

procedure TForm1.ComboBox4Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).initiator := ComboBox4.Items[ComboBox4.ItemIndex];

end;

procedure TForm1.ComboBox5Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).receiver := ComboBox5.Items[ComboBox5.ItemIndex];

end;

procedure TForm1.ComboBox6Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  if ComboBox6.ItemIndex <> 0 then
  begin
    if obj.request = nil then
      obj.request := TFhirExampleScenarioInstanceContainedInstance.Create;
    obj.request.resourceId := ComboBox6.Items[ComboBox6.ItemIndex];
  end;
  if ComboBox6.ItemIndex = 0 then
    if obj.request <> nil then
    begin
      obj.request.dropEmpty;
      obj.deleteProperty('request', obj.request);
    end;

end;

procedure TForm1.ComboBox7Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  if ComboBox7.ItemIndex <> 0 then
  begin
    if obj.response = nil then
      obj.response := TFhirExampleScenarioInstanceContainedInstance.Create;
    obj.response.resourceId := ComboBox7.Items[ComboBox7.ItemIndex];
  end;
  if ComboBox7.ItemIndex = 0 then
    if obj.response <> nil then
    begin
      obj.response.dropEmpty;
      obj.deleteProperty('response', obj.response);
    end;
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
  if filename = '' then
  begin
    if SaveAs = -1 then
    begin
      Showmessage('Not saved');
      exit;
    end;
  end;
  resourceToFile(exsc, filename, ffXml, OutputStylePretty);
  showTab(exsc);

end;

function TForm1.SaveAs: integer;
begin
  result := -1;
  if SaveDialog1.Execute then
  begin
    filename := SaveDialog1.filename;
    resourceToFile(exsc, filename, ffXml, OutputStylePretty);
    showTab(exsc);
    result := 0;
  end;

end;

procedure TForm1.btnStepClick(Sender: TObject);
var
  Step: tfhirexamplescenarioProcessStep;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin

  Item := TFHIRTreeViewItem(TreeView1.Selected);
  Step := tfhirexamplescenarioProcessStep(createElement('step', 'Step'));
  tfhirexamplescenarioProcess(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).stepList.AddItem(Step);
  ReloadTreeview(TreeView1.Selected); // (new_item);

end;

procedure TForm1.btnVersionClick(Sender: TObject);
var
  version: tfhirexamplescenarioInstanceVersion;
  Item, new_item: TFHIRTreeViewItem;
  targetpos, i: integer;
begin
  Item := TFHIRTreeViewItem(TreeView1.Selected);

  version := tfhirexamplescenarioInstanceVersion(createElement('version', 'version'));

  tfhirexamplescenarioinstance(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).versionList.AddItem(version);

  ReloadTreeview(TreeView1.Selected); // (new_item);
  // TreeView1.Selected := Item;

end;

procedure TForm1.btnRenderClick(Sender: TObject);
var
  str: string;
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;

begin

  str := getCurrentDir;

  SetCurrentDir('..\simplerender');
  resourceToFile(exsc, '.\current.xml', ffXml, OutputStylePretty);
  ExecuteFile := 'parse_all.bat';

  // a message when the Calc is terminated.
  begin
    // startinString:='..\pagecontent';
    FillChar(SEInfo, SizeOf(SEInfo), 0);
    SEInfo.cbSize := SizeOf(TShellExecuteInfo);
    with SEInfo do
    begin
      fMask := SEE_MASK_NOCLOSEPROCESS;
      Wnd := FmxHandleToHWND(Form1.Handle);
      lpFile := PChar(ExecuteFile);
      lpDirectory := PChar(StartInString);
      nShow := SW_SHOWNORMAL;
    end;
    if ShellExecuteEx(@SEInfo) then
    begin
      repeat
        Application.ProcessMessages;
        GetExitCodeProcess(SEInfo.hProcess, ExitCode);
      until (ExitCode <> STILL_ACTIVE) or Application.Terminated;
      // ShowMessage('Calculator terminated');
    end
    // else ShowMessage('Error starting Calc!');
      ;
    SetCurrentDir('.\output\pages');
    ShellExecute(0, 'open', '.\current.html', '', '', SW_SHOWNORMAL);

    SetCurrentDir(str);

  end;

end;

procedure TForm1.DoInfoClick(Sender: TObject);
var
  i: integer;
begin
end;

procedure TForm1.Edit12Exit(Sender: TObject);
begin
  Button7Click(Self);
end;

procedure TForm1.Edit13Exit(Sender: TObject);
begin
  Button8Click(Self);
end;

procedure TForm1.Edit14Exit(Sender: TObject);

var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).name := Edit14.text;

end;

procedure TForm1.Edit15Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).number := Edit15.text;

end;

procedure TForm1.Edit16Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin

  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).type_ := Edit16.text;
end;

procedure TForm1.Edit3Exit(Sender: TObject);
begin
  Button5Click(Self);
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
  Button4Click(Self);
end;

procedure TForm1.Edit9Exit(Sender: TObject);
begin
  Button6Click(Self);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  // if checkbox1.IsCheckedStored then IsChecked := not IsChecked;
  CheckBox1.Change;
  CheckBox1.IsChecked := not CheckBox1.IsChecked;
  CheckBox1.repaint;

  filename := '';

  if TreeView1.globalCount = 0 then
  begin
    if not Assigned(exsc) then
      Button11Click(Self);
    // exsc := TFHIRExampleScenario.Create;
    // addTVItem(TreeView1, nil, 'examplescenario', 'Example Scenario', exsc);
  end;

  TreeView1.Selected := nil;

  {
    button3.Enabled:=false;
    button4.Enabled:=false;
    button5.Enabled:=false;
    button6.Enabled:=false;
    button7.Enabled:=false;
    button8.Enabled:=false;
    button9.Enabled:=false;
  }
end;

procedure TForm1.Memo8Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).description := Memo8.text;

end;

procedure TForm1.MenuItem7Click(Sender: TObject);
var
  es: TFHIRExampleScenario;
var
  Actor: tfhirexamplescenarioActor;
var
  prt: TTreeViewItem;
  obj: tFHIRObject;

begin
  prt := TreeView1.Selected.ParentItem;
  obj := TFHIRTreeViewItem(TreeView1.Selected).FhirObject;

  if obj is tfhirexamplescenarioActor then
    TFHIRExampleScenario(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).actorList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);

  if obj is tfhirexamplescenarioinstance then
    TFHIRExampleScenario(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).instanceList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);

  if obj is tfhirexamplescenarioProcess then
  begin
    // still need to check if parent is examplescenario or step.
    if TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject is TFHIRExampleScenario then
    begin
      TFHIRExampleScenario(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).Process.dropEmpty;
      TFHIRExampleScenario(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).deleteProperty('process', nil);
    end
    else if TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject is tfhirexamplescenarioProcessStep then
    begin
      tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).processList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject)
    end;
  end;

  if obj is tfhirexamplescenarioProcessStep then
  begin
    tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).dropEmpty;
    if TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject is tfhirexamplescenarioProcess then
      tfhirexamplescenarioProcess(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).stepList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
    if TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject is tfhirexamplescenarioProcessStepAlternativeOption then
      tfhirexamplescenarioProcessStepAlternativeOption(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).stepList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  end;


  if obj is tfhirexamplescenarioProcessStepAlternative then
  begin
    tfhirexamplescenarioProcessStepAlternative(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).dropEmpty;
    TFHIRExampleScenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).deleteProperty('alternative', nil);
  end;

  if obj is tfhirexamplescenarioProcessStepAlternativeOption then
  begin
    tfhirexamplescenarioProcessStepAlternativeOption(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).dropEmpty;

  end;

  if obj is tfhirexamplescenarioProcessStepOperation then
  begin
    tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).dropEmpty;
    TFHIRExampleScenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).deleteProperty('operation', nil);
  end;













  ReloadTreeview(prt);

end;

procedure TForm1.OpenClick(Sender: TObject);
var
  temp_item: TFHIRTreeViewItem;
  i: integer;
begin
  OpenDialog1.InitialDir := getCurrentDir;
  if OpenDialog1.Execute then
  begin
    Form1.Caption := 'Example Scenario Creator - ' + extractfilename(OpenDialog1.filename);
    filename := OpenDialog1.filename;
    exsc := TFHIRExampleScenario(filetoResource(OpenDialog1.filename));
    ReloadTreeview(nil); // (new_item);
  end;

end;

Procedure TForm1.ReloadTreeview(sel_item: TTreeViewItem);
var
  current_item, new_item: TFHIRTreeViewItem;
  i: integer;
  Actor: tfhirexamplescenarioActor;
  Instance: tfhirexamplescenarioinstance;
  sel_index: integer;
  sel_text: string;

begin

  // Todo: add a parameter which is the selected item at the end. this cannot be by reference, so it has to be a value that has to be extracted.
  // e.g.
  // lookup the name of a item. if there are more items with the same name, keep the (global) index.
  // at the end, rebuild the tree, and lookup the item that has the name. if the index is >1, then do a next lookup until n=index
  //

  sel_index := -1;
  sel_text := '';

  if sel_item <> nil then
  begin
    sel_index := sel_item.GlobalIndex;
    // sel_text:=treeview1.Selected.Text;
  end;

  TreeView1.Clear;
  current_item := addTVItem(TreeView1, nil, 'examplescenario', 'Example Scenario', exsc);

  for i := 0 to exsc.actorList.Count - 1 do
  begin
    Actor := exsc.actorList[i];
    new_item := addTVItem(TreeView1, current_item, 'actor', Actor.name, Actor);
  end;

  // temp_item := current_item;
  for i := 0 to exsc.instanceList.Count - 1 do
  begin
    Instance := exsc.instanceList[i];
    new_item := addTVItem(TreeView1, current_item, 'instance', Instance.name, Instance);
  end;
  // current_item := temp_item;

  // for i := 0 to exsc.processList.count - 1 do
  if exsc.Process <> nil then
  begin
    new_item := addTVItem(TreeView1, current_item, 'process', exsc.Process.title, exsc.Process);
    // current_item := new_item;
    // temp_item := current_item;
  end;

  if sel_index <> -1 then
  begin
    // for i := 0 to treeview1.GlobalCount do
    TreeView1.Selected := TreeView1.ItemByGlobalIndex(sel_index);
  end;

end;

procedure TForm1.TabControl2Change(Sender: TObject);
begin

  if TreeView1.Selected = nil then
    exit;
  if internal then
    exit;

  internal := true;
  if Button3.enabled then
    Button3Click(Self);
  Button4Click(Self);
  Button5Click(Self);
  Button6Click(Self);
  Button7Click(Self);
  Button8Click(Self);
  // button9click(self);
  internal := false;

end;

procedure TForm1.TreeView1Change(Sender: TObject);
var
  currentType: string;
var
  Actor: tfhirexamplescenarioActor;
  obj: tFHIRObject;
begin

  if TreeView1.Selected <> nil then
    obj := TFHIRTreeViewItem(TreeView1.Selected).FhirObject;
  showTab(obj);
end;

procedure TForm1.DoApplyStyleLookup(Sender: TObject);
var
  Item: TTreeViewItem;
begin
end;

procedure TForm1.showTab(obj: tFHIRObject);
var
  i: integer;
  str: string;

begin
  internal := false;
  // TabControl2Change(Self);
  internal := true;

  for i := 0 to TabControl2.TabCount - 1 do
    TabControl2.Tabs[i].Visible := false;

  TabControl2.tabindex := 0;

  if obj is TFHIRExampleScenario then
  begin
    TabControl2.tabindex := 1;
    Button3.enabled := true;
    Edit5.text := TFHIRExampleScenario(obj).name;
    Edit1.text := TFHIRExampleScenario(obj).title;
    ComboBox2.ItemIndex := integer(TFHIRExampleScenario(obj).status);
    if TFHIRExampleScenario(obj).experimental then
      CheckBox1.IsChecked := true
    else
      CheckBox1.IsChecked := false;
    Edit6.text := TFHIRExampleScenario(obj).id;
    DateEdit1.text := TFHIRExampleScenario(obj).date.toString;
    Edit8.text := TFHIRExampleScenario(obj).version;
    Edit7.text := TFHIRExampleScenario(obj).publisher;
    Memo3.text := TFHIRExampleScenario(obj).purpose;

  end;
  if obj is tfhirexamplescenarioActor then
  begin
    TabControl2.tabindex := 2;
    Button5.enabled := true;
    Edit3.text := tfhirexamplescenarioActor(obj).name;
    ComboBox1.ItemIndex := integer(tfhirexamplescenarioActor(obj).type_);
    Edit2.text := tfhirexamplescenarioActor(obj).actorId;
    Memo1.text := tfhirexamplescenarioActor(obj).description;
  end;
  if obj is tfhirexamplescenarioinstance then
  begin
    TabControl2.tabindex := 3;
    Button6.enabled := true;
    Edit10.text := tfhirexamplescenarioinstance(obj).resourceId;
    ComboBox3.ItemIndex := integer(tfhirexamplescenarioinstance(obj).resourceType);
    Edit9.text := tfhirexamplescenarioinstance(obj).name;
    Memo4.text := tfhirexamplescenarioinstance(obj).description;

  end;
  if obj is tfhirexamplescenarioProcess then
  begin
    TabControl2.tabindex := 4;
    Button4.enabled := true;
    Edit4.text := tfhirexamplescenarioProcess(obj).title;
    Memo2.text := tfhirexamplescenarioProcess(obj).description;
    Memo6.text := tfhirexamplescenarioProcess(obj).preConditions;
    Memo7.text := tfhirexamplescenarioProcess(obj).postConditions;
  end;
  if obj is tfhirexamplescenarioProcessStep then
  begin
    TabControl2.tabindex := 5;
  end;
  if obj is tfhirexamplescenarioProcessStepAlternative then
  begin
    TabControl2.tabindex := 6;
    Button7.enabled := true;
    Edit12.text := tfhirexamplescenarioProcessStepAlternative(obj).name;
  end;
  if obj is tfhirexamplescenarioProcessStepAlternativeOption then
  begin
    TabControl2.tabindex := 7;
    Button8.enabled := true;
    Memo5.text := tfhirexamplescenarioProcessStepAlternativeOption(obj).description;
  end;
  if obj is tfhirexamplescenarioProcessStepOperation then
  begin
    TabControl2.tabindex := 8;
    Button9.enabled := true;
    Edit14.text := tfhirexamplescenarioProcessStepOperation(obj).name;
    Edit15.text := tfhirexamplescenarioProcessStepOperation(obj).number;
    Edit16.text := tfhirexamplescenarioProcessStepOperation(obj).type_;
    Memo8.text := tfhirexamplescenarioProcessStepOperation(obj).description;

    ComboBox4.Items.Clear;
    ComboBox4.Items.add('(none)');
    ComboBox5.Items.add('(none)');
    ComboBox5.Items.Clear;

    for i := 0 to exsc.actorList.Count - 1 do
      ComboBox4.Items.add(exsc.actorList[i].actorId);
    for i := 0 to exsc.actorList.Count - 1 do
      ComboBox5.Items.add(exsc.actorList[i].actorId);
    ComboBox4.ItemIndex := ComboBox4.Items.IndexOf(tfhirexamplescenarioProcessStepOperation(obj).initiator);
    ComboBox5.ItemIndex := ComboBox5.Items.IndexOf(tfhirexamplescenarioProcessStepOperation(obj).receiver);

    ComboBox6.Items.Clear;
    ComboBox7.Items.Clear;
    ComboBox6.Items.add('(none)');
    ComboBox7.Items.add('(none)');
    for i := 0 to exsc.instanceList.Count - 1 do
      ComboBox6.Items.add(exsc.instanceList[i].resourceId);
    for i := 0 to exsc.instanceList.Count - 1 do
      ComboBox7.Items.add(exsc.instanceList[i].resourceId);

    ComboBox6.ItemIndex := 0;
    if tfhirexamplescenarioProcessStepOperation(obj).request <> nil then
      ComboBox6.ItemIndex := ComboBox6.Items.IndexOf(tfhirexamplescenarioProcessStepOperation(obj).request.resourceId);

    ComboBox7.ItemIndex := 0;
    if tfhirexamplescenarioProcessStepOperation(obj).response <> nil then
      ComboBox7.ItemIndex := ComboBox7.Items.IndexOf(tfhirexamplescenarioProcessStepOperation(obj).response.resourceId);

  end;

  TabControl2.ActiveTab.Visible := true;
  internal := false;
end;

end.
