unit Umain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, shellapi, winapi.windows, fmx.platform.win,
  System.rtti,      System.typinfo,
//  FHIR.R4.Client, FHIR.R4.Resources, Fhir.R4.Utilities, FHIR.R4.Base, FHIR.R4.Types,
  FHIR.Base.Objects, System.ImageList, FMX.ImgList, FMX.Controls, FMX.Types, FMX.Menus, FMX.Dialogs, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Edit,
  FMX.DateTimeCtrls, FMX.ListBox, FMX.Controls.Presentation, FMX.Layouts, FMX.TreeView, FMX.TabControl
, FMX.forms    ,FHIR.Support.DateTime  , FHIR.Support.Collections
,FHIR.R4.Resources, FHIR.R4.Types , Fhir.R4.Utilities
//  ,
//  fmx.Types, fmx.Controls, fmx.Forms, fmx.Graphics, fmx.Dialogs, fmx.ListBox,
//  fmx.Layouts, fmx.TreeView, fmx.Controls.Presentation, fmx.StdCtrls,
//  fmx.TabControl, fmx.ScrollBox, fmx.Memo, fmx.Edit, fmx.DateTimeCtrls,
//  fmx.Menus, System.ImageList, fmx.ImgList, FMX.Objects
  ;


type

  TFHIRTreeViewItem = class(TTreeViewItem)
  private
    fFhirObject: tFHIRObject;
  public
    property FhirObject: tFHIRObject read fFhirObject write fFhirObject;
  end;


  TFHIRButton = class(TButton)
  private
    fFhirObject: tFHIRObject;
    fobjectType:string;
  public
    property parentFhirObject: tFHIRObject read fFhirObject write fFhirObject;
    property objectType: string read fobjectType write fobjectType;
  end;


  TFHIREdit = class(TEdit)
  private
    fFhirProperty: tFHIRObject;
  public
    property FhirProperty: tFHIRObject read fFhirProperty write fFhirProperty;
  end;





  TForm1 = class(TForm)
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
    btnPause: TCornerButton;
    Memo8: TMemo;
    Label31: TLabel;
    ComboBox3: TComboBox;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    CheckBox1: TCheckBox;
    UpdateExampleScenario: TButton;
    ImageList1: TImageList;
    UpdateProcess: TButton;
    UpdateActor: TButton;
    UpdateInstance: TButton;
    UpdateAlternative: TButton;
    UpdateOption: TButton;
    UpdateOperation: TButton;
    PopupMenu1: TPopupMenu;
    DeleteItem: TMenuItem;
    DeleteActor: TButton;
    MoveDown: TButton;
    MoveUp: TButton;
    DeleteInstance: TButton;
    DeleteProcess: TButton;
    DeleteStep: TButton;
    btnAlternative: TCornerButton;
    DeleteAlternative: TButton;
    DeleteOption: TButton;
    DeleteOperation: TButton;
    ImageList2: TImageList;
    ImageList3: TImageList;
    NewExampleScenario: TButton;
    chkPause: TCheckBox;
    btnUpdateStep: TButton;
    StyleBook1: TStyleBook;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure DoInfoClick(Sender: TObject);
    procedure DoApplyStyleLookup(Sender: TObject);
//    function createElement(el_type_, name: string): tFHIRObject;
    function addTVItem(TreeView: TTreeView; parent: TFHIRTreeViewItem; itemType, text: string; obj: tFHIRObject): TFHIRTreeViewItem;
    procedure TreeView1Change(Sender: TObject);
    procedure btnActorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnResourceClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure showTab(obj: tFHIRObject);
    procedure btnRenderClick(Sender: TObject);
    procedure UpdateExampleScenarioClick(Sender: TObject);
    procedure UpdateProcessClick(Sender: TObject);
    procedure UpdateActorClick(Sender: TObject);
    procedure UpdateInstanceClick(Sender: TObject);
    procedure UpdateAlternativeClick(Sender: TObject);
    procedure UpdateOptionClick(Sender: TObject);
    procedure UpdateOperationClick(Sender: TObject);
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
    procedure DeleteItemClick(Sender: TObject);
    procedure DeleteActorClick(Sender: TObject);
    procedure NewExampleScenarioClick(Sender: TObject);
    procedure MoveDownClick(Sender: TObject);
    procedure MoveUpClick(Sender: TObject);
    procedure btnUpdateStepClick(Sender: TObject);
    procedure chkPauseExit(Sender: TObject);
    procedure btnOptionClick(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
{$R *.Windows.fmx MSWINDOWS}

///////////////////////////////////////////////////////////////////////////////
// 1. 1 recursive procedure to add a FHIRObject to a treeview
// each part must know what to recurse - e.g. if it is an exampleScenario it must check the actors, resources, and processes
// so we could scan this from the structureDefinition
///////////////////////////////////////////////////////////////////////////////

function TForm1.addTVItem(TreeView: TTreeView; parent: TFHIRTreeViewItem; itemType, text: string; obj: tFHIRObject): TFHIRTreeViewItem;
var
  current_item, Item: TFHIRTreeViewItem;
  i: integer;
  objtype:string;
begin
  Item := TFHIRTreeViewItem.Create(TreeView);
  objtype:=obj.fhirType;
  if (parent = nil) then
    TreeView.AddObject(Item)
  else
    parent.AddObject(Item);

  Item.ImageIndex:=-1;

  if itemType = 'examplescenario' then Item.ImageIndex:=9;
  if itemType = 'actor' then Item.ImageIndex:=1;
  if itemType = 'instance' then  Item.ImageIndex:=2;
  if itemType = 'process' then  Item.ImageIndex:=3;
  if itemType = 'version' then  Item.ImageIndex:=4;
  if itemType = 'step' then  Item.ImageIndex:=5;
  if itemType = 'operation' then  Item.ImageIndex:=6;
  if itemType = 'alternative' then  Item.ImageIndex:=7;
  if itemType = 'option' then  Item.ImageIndex:=8;

  Item.StylesData['info'] := TValue.From<TNotifyEvent>(DoInfoClick);
  Item.OnApplyStyleLookup := DoApplyStyleLookup;
  Item.StylesData['attrType'] := itemType;
  Item.StylesData['sortOrder'] := 1;
  TreeView.Selected := Item;
  Item.Height := 20;
  Item.text := text;
  Item.PopupMenu := PopupMenu1;
  Item.FhirObject := obj;

// do this for the object - any object type:
  if obj is tfhirexamplescenarioinstance then
  begin
    current_item := Item;

// do this for each object in that object type:
    for i := 0 to tfhirexamplescenarioinstance(obj).versionList.Count - 1 do
    begin
      addTVItem(TreeView1, current_item, 'version', tfhirexamplescenarioinstance(obj).versionList[i].versionId, tfhirexamplescenarioinstance(obj).versionList[i]);
    end;
// until here
  end;

  if obj is tfhirexamplescenarioProcess then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenarioProcess(obj).stepList.Count - 1 do
    begin
      addTVItem(TreeView1, current_item, 'step', 'Step', tfhirexamplescenarioProcess(obj).stepList[i]);
    end;
  end;

  if obj is tfhirexamplescenarioProcessStep then
  begin
    current_item := Item;
    if tfhirexamplescenarioProcessStep(obj).processList.Count <> 0 then
      for i := 0 to tfhirexamplescenarioProcessStep(obj).processList.Count - 1 do
      begin
        addTVItem(TreeView1, current_item, 'process', tfhirexamplescenarioProcessStep(obj).processList[i].title, tfhirexamplescenarioProcessStep(obj).processList[i]);
      end;

    if tfhirexamplescenarioProcessStep(obj).pauseElement <> nil then
    begin
//      addTVItem(TreeView1, current_item, 'pause', '(pause)', tfhirexamplescenarioProcessStep(obj).pauseElement);
    end;
    if tfhirexamplescenarioProcessStep(obj).operation <> nil then
    begin
      addTVItem(TreeView1, current_item, 'operation', tfhirexamplescenarioProcessStep(obj).operation.name, tfhirexamplescenarioProcessStep(obj).operation);
    end;

    if tfhirexamplescenarioProcessStep(obj).alternative <> nil then
    begin
      addTVItem(TreeView1, current_item, 'alternative', tfhirexamplescenarioProcessStep(obj).alternative.name, tfhirexamplescenarioProcessStep(obj).alternative);
    end;
  end;

  if obj is tfhirexamplescenarioProcessStepAlternative then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenarioProcessStepAlternative(obj).optionList.Count - 1 do
    begin
      addTVItem(TreeView1, current_item, 'option', 'Option', tfhirexamplescenarioProcessStepAlternative(obj).optionList[i]);
    end;
  end;


  if obj is tfhirexamplescenario then
  begin
    current_item := Item;
    for i := 0 to tfhirexamplescenario(obj).actorList.Count - 1 do
      addTVItem(TreeView1, current_item, 'actor', tfhirexamplescenario(obj).actorList[i].name, tfhirexamplescenario(obj).actorList[i]);

    for i := 0 to tfhirexamplescenario(obj).instanceList.Count - 1 do
      addTVItem(TreeView1, current_item, 'instance', tfhirexamplescenario(obj).instanceList[i].name, tfhirexamplescenario(obj).instanceList[i]);

    for i := 0 to tfhirexamplescenario(obj).processList.count - 1 do
      if tfhirexamplescenario(obj).ProcessList[i] <> nil then
        addTVItem(TreeView1, current_item, 'process', tfhirexamplescenario(obj).ProcessList[i].title, tfhirexamplescenario(obj).ProcessList[i]);
  end;

  TreeView.EndUpdate;
  TreeView.repaint;
  result := Item;

end;

///////////////////////////////////////////////////////////////////////////////
// 2. N buttons to create a new FHIRObject
///////////////////////////////////////////////////////////////////////////////
// Actually, each panel has a button for each type of child it supports


//2.1 Actor
procedure TForm1.btnActorClick(Sender: TObject);
var
  Actor: tfhirexamplescenarioActor;
  objclass: System.tclass;

  RttiContext: TRttiContext;
  RttiType: TRttiInstanceType;
  Foo: TObject;

  ctx: TRttiContext;
  objType: TRttiType;
  Prop: TRttiProperty;

begin
  Actor := tfhirexamplescenarioActor.Create;
  Actor.type_ := ExamplescenarioActorTypePerson;
  Actor.name := 'Actor ' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).actorList.Count + 1);
  Actor.actorId := 'A' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).actorList.Count + 1);

  ctx := TRttiContext.Create;
  objType := ctx.GetType(actor.ClassInfo);
  form1.caption:=objtype.ToString;

  tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).actorList.AddItem(Actor);
  ReloadTreeview(TreeView1.Selected);

end;


procedure TForm1.btnAlternativeClick(Sender: TObject);
var
  alternative: tfhirexamplescenarioProcessStepAlternative;
begin
  alternative := tfhirexamplescenarioProcessStepAlternative.Create;

  alternative.name := 'Alternative';
  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).alternative:= alternative;
  ReloadTreeview(TreeView1.Selected);

end;


procedure TForm1.btnOperationClick(Sender: TObject);
var
  operation: tfhirexamplescenarioProcessStepOperation;
  Item: TFHIRTreeViewItem;

begin
  operation := tfhirexamplescenarioProcessStepOperation.Create;
//Set properties for object
  operation.name := 'Operation';
//If only one
  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).operation := operation;
  ReloadTreeview(TreeView1.Selected);
end;

procedure TForm1.btnOptionClick(Sender: TObject);
var
  Option: tfhirexamplescenarioProcessStepAlternativeOption;
begin
  Option := tfhirexamplescenarioProcessStepAlternativeOption.Create;
//Set properties for object
  Option.description := 'Option ' + inttostr(tfhirexamplescenarioProcessStepAlternative(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).optionList.Count + 1);

  tfhirexamplescenarioProcessStepAlternative(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).OptionList.AddItem(Option);
  ReloadTreeview(TreeView1.Selected);

end;

//2.4 Sub-Process
procedure TForm1.btnProcess2Click(Sender: TObject);
var
  Process: tfhirexamplescenarioProcess;

begin
  Process := tfhirexamplescenarioProcess.Create;

  Process.title := 'Process';

  tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).processList.AddItem(Process);
  ReloadTreeview(TreeView1.Selected);

end;

//2.5 Main process
procedure TForm1.btnProcessClick(Sender: TObject);
var
  Process: tfhirexamplescenarioProcess;
begin
  Process := tfhirexamplescenarioProcess.Create;
  Process.title := 'Process';
  tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).processList.AddItem(Process);
  ReloadTreeview(TreeView1.Selected);

end;

procedure TForm1.btnResourceClick(Sender: TObject);
var
  Instance: tfhirexamplescenarioinstance;
begin
  Instance := tFHIRExampleScenarioInstance.Create;

  Instance.resourceType := ResourceTypesNull;
  Instance.name := 'Resource ' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).instanceList.Count + 1);
  Instance.resourceId := 'R' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).instanceList.Count + 1);

//  exsc.instanceList.AddItem(Instance);
  tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).instanceList.AddItem(Instance);

  ReloadTreeview(TreeView1.Selected);
end;


procedure TForm1.NewExampleScenarioClick(Sender: TObject);
var
  ExampleScenario: TFHIRExampleScenario;
begin
  ExampleScenario := TFHIRExampleScenario.create;
  ExampleScenario.name := 'Example Scenario';
  exsc := ExampleScenario;
  ReloadTreeview(TreeView1.Selected);

  showTab(TFHIRTreeViewItem(TreeView1.Selected).fFhirObject);

//  showTab(exsc);



end;


procedure TForm1.btnStepClick(Sender: TObject);
var
  Step: tfhirexamplescenarioProcessStep;
begin

//  Item := TFHIRTreeViewItem(TreeView1.Selected);
  Step := tfhirexamplescenarioProcessStep.Create;
  tfhirexamplescenarioProcess(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).stepList.AddItem(Step);
  ReloadTreeview(TreeView1.Selected);

end;

procedure TForm1.btnVersionClick(Sender: TObject);
var
  version: tfhirexamplescenarioInstanceVersion;
begin
  version := tfhirexamplescenarioInstanceVersion.Create;

  tfhirexamplescenarioinstance(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).versionList.AddItem(version);

  ReloadTreeview(TreeView1.Selected);
  // TreeView1.Selected := Item;

end;



procedure TForm1.Button1Click(Sender: TObject);
begin

//form1.caption:=button1.ClassType.ClassName;

form1.caption:=TRttiContext.Create.GetType(button1.ClassType.ClassParent).ToString;

//form1.caption:=TTypeInfo(Typeinfo(TRttiContext.Create.GetType(button1.ClassType.))^).Name
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  actor: tfhirexamplescenarioActor;
  ctx: TRttiContext;
  objType: TRttiType;
  ltype:TRttiType;

begin

//  form1.caption:=TFHIRTreeViewItem(TreeView1.Selected).FhirObject.fhirType;
// if property, we have FHIRObject.?????
{
//  form1.caption:=TRttiContext.Create.GetType(button1.ClassType.ClassParent).ToString;
  Actor := tfhirexamplescenarioActor.Create;
//  Set properties for object
  Actor.type_ := ExamplescenarioActorTypePerson;
  Actor.name := 'Actor ' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).actorList.Count + 1);
  Actor.actorId := 'A' + inttostr(tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).actorList.Count + 1);

//  (tfhirexamplescenarioActor as TObject).
//  objclass:=TRttiContext.Create.GetType(TObject(tfhirexamplescenarioActor).ClassType.ClassParent);
//  form1.caption:=objclass.ClassName;

  ctx := TRttiContext.Create;
  objType := ctx.GetType(actor.ClassInfo);
  objType := ctx.FindType('FHIR.R4.Resources.ExamplescenarioActor');
  form1.caption:=objtype.ToString;
}


end;

procedure TForm1.Button3Click(Sender: TObject);
var obj:TFHIRObject;
     clsType: TFslObjectClass;
begin

//  obj:=TFHirObject(TFHIRTreeViewItem(TreeView1.Selected).FhirObject.ClassType.Create);
//  form1.Caption:=obj.ClassName;

end;

procedure TForm1.chkPauseExit(Sender: TObject);
begin
 btnUpdateStepClick(Self);
end;

///////////////////////////////////////////////////////////////////////////////
// 3. for each delete button
///////////////////////////////////////////////////////////////////////////////

procedure TForm1.DeleteActorClick(Sender: TObject);
begin
  DeleteItemClick(Self)
end;


///////////////////////////////////////////////////////////////////////////////
// 4. Move Up
///////////////////////////////////////////////////////////////////////////////

procedure TForm1.MoveUpClick(Sender: TObject);
var
  idx: integer;
begin
{ find how this can be generic code}

  idx := exsc.actorList.IndexOf(tfhirexamplescenarioActor(TFHIRTreeViewItem(TreeView1.Selected).FhirObject));
  if idx > 0 then begin
  exsc.actorList.Exchange(idx, idx - 1);
  TreeView1.Selected.Index := TreeView1.Selected.Index - 1;
  end;
  ReloadTreeview(TreeView1.Selected);
end;


///////////////////////////////////////////////////////////////////////////////
// 5. Move Down
///////////////////////////////////////////////////////////////////////////////

procedure TForm1.MoveDownClick(Sender: TObject);
var
  idx: integer;
begin
{ find how this can be generic code}

  idx := exsc.actorList.IndexOf(tfhirexamplescenarioActor(TFHIRTreeViewItem(TreeView1.Selected).FhirObject));
  if idx < exsc.actorList.Count - 1 then begin
  exsc.actorList.Exchange(idx, idx + 1);
  TreeView1.Selected.Index := TreeView1.Selected.Index + 1;
  end;
  ReloadTreeview(TreeView1.Selected);

end;



///////////////////////////////////////////////////////////////////////////////
// 6. N procedures to update each container into the resource
///////////////////////////////////////////////////////////////////////////////

//6.1
procedure TForm1.UpdateExampleScenarioClick(Sender: TObject);
var
  obj: TFHIRExampleScenario;

begin
  obj := tfhirexamplescenario(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.name := Edit5.text;
  (obj).title := Edit1.text;
  (obj).status := TfHIRPublicationStatusEnum(ComboBox2.ItemIndex);
  obj.experimental := CheckBox1.IsChecked;
  obj.id := Edit6.text;
  obj.date := TDateTimeEx.makeLocal(DateEdit1.DateTime);
  obj.version := Edit8.text;
  obj.publisher := Edit7.text;
  obj.purpose := Memo3.text;

end;

//6.2
procedure TForm1.UpdateProcessClick(Sender: TObject);
var
  obj: tfhirexamplescenarioProcess;

begin

  obj := tfhirexamplescenarioProcess(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.title := Edit4.text;
  obj.description := Memo2.text;
  obj.preConditions := Memo6.text;
  obj.postConditions := Memo7.text;

end;

//6.3
procedure TForm1.UpdateActorClick(Sender: TObject);
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

//6.4
procedure TForm1.UpdateInstanceClick(Sender: TObject);
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

//6.5
procedure TForm1.UpdateAlternativeClick(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepAlternative;

begin
  obj := tfhirexamplescenarioProcessStepAlternative(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  obj.name := Edit12.text;
end;

//6.6
procedure TForm1.UpdateOptionClick(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepAlternativeOption;

begin
  obj := tfhirexamplescenarioProcessStepAlternativeOption(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).description := Memo5.text;

end;

//6.7
procedure TForm1.UpdateOperationClick(Sender: TObject);
//var
//  obj: tfhirexamplescenarioProcessStepOperation;

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

///////////////////////////////////////////////////////////////////////////////
// 7. N procedures upon exit each control, to update the entire object
///////////////////////////////////////////////////////////////////////////////


//7.1 ExampleScenario.status
procedure TForm1.ComboBox2Exit(Sender: TObject);
begin
  UpdateExampleScenarioClick(Self);
end;

//7.2 Operation.initiator
procedure TForm1.ComboBox4Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).initiator := ComboBox4.Items[ComboBox4.ItemIndex];

end;

//7.3 Operation.receiver
procedure TForm1.ComboBox5Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).receiver := ComboBox5.Items[ComboBox5.ItemIndex];

end;

//7.4 Operation.request
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

//7.4 Operation.response
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

procedure TForm1.ComboBox8Change(Sender: TObject);
begin

end;

//8. Button for saving
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

procedure TForm1.btnUpdateStepClick(Sender: TObject);

var
  obj: tfhirexamplescenarioProcessStep;

begin
  obj := tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;

if chkPause.ischecked then
obj.pauseElement:=TFHIRBoolean.Create(true)
else
obj.deleteProperty('pause', nil);

  ReloadTreeview(TreeView1.Selected);





  end;

//9. Button for saveAs
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

// 10 Render result
procedure TForm1.btnRenderClick(Sender: TObject);
var
  str: string;
  SEInfo: TShellExecuteInfo;
  ExitCode: DWORD;
  ExecuteFile, ParamString, StartInString: string;

begin

  str := getCurrentDir;

  SetCurrentDir('..\Render\simplerender');
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

//7.5 Alternative.name

procedure TForm1.Edit12Exit(Sender: TObject);
begin
  UpdateAlternativeClick(Self);
end;


procedure TForm1.DoInfoClick(Sender: TObject);
begin
begin end
end;

procedure TForm1.DoApplyStyleLookup(Sender: TObject);
begin
begin end
end;

//7.6 Option.name

procedure TForm1.Edit13Exit(Sender: TObject);
begin
  UpdateOptionClick(Self);
end;

//7.7 Operation.name
procedure TForm1.Edit14Exit(Sender: TObject);

var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).name := Edit14.text;

end;

//7.8 Operation.number
procedure TForm1.Edit15Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).number := Edit15.text;

end;

//7.8 Operation.type
procedure TForm1.Edit16Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin

  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).type_ := Edit16.text;
end;

//7.9 Actor.Name
procedure TForm1.Edit3Exit(Sender: TObject);
begin
  UpdateActorClick(Self);
end;

//7.10 Process Title
procedure TForm1.Edit4Exit(Sender: TObject);
begin
  UpdateProcessClick(Self);
end;

//7.11 Instance.Name
procedure TForm1.Edit9Exit(Sender: TObject);
begin
  UpdateInstanceClick(Self);
end;


//11 Start app and initialize
procedure TForm1.FormShow(Sender: TObject);
begin
  filename := '';

  if TreeView1.globalCount = 0 then
  begin
    if not Assigned(exsc) then
      NewExampleScenarioClick(Self);
  end;


//  TreeView1.Selected := nil;
//  ReloadTreeview(nil);


end;

//7.12 Operation.Description
procedure TForm1.Memo8Exit(Sender: TObject);
var
  obj: tfhirexamplescenarioProcessStepOperation;
begin
  obj := tfhirexamplescenarioProcessStepOperation(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
  if obj = nil then
    exit;
  (obj).description := Memo8.text;

end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
SaveAs;
end;

//12 Delete any item
procedure TForm1.DeleteItemClick(Sender: TObject);
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
    if TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject is TFHIRExampleScenario then
    begin
      TFHIRExampleScenario(TFHIRTreeViewItem(TreeView1.Selected.ParentItem).FhirObject).processList.DeleteByReference(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);
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

//13 Open
procedure TForm1.OpenClick(Sender: TObject);

begin
  OpenDialog1.InitialDir := getCurrentDir;
  if OpenDialog1.Execute then
  begin
    Form1.Caption := 'Example Scenario Creator - ' + extractfilename(OpenDialog1.filename);
    filename := OpenDialog1.filename;
    exsc := TFHIRExampleScenario(filetoResource(OpenDialog1.filename));
    ReloadTreeview(nil);
  end;

end;

//14 1 item to reload the top level treeview
Procedure TForm1.ReloadTreeview(sel_item: TTreeViewItem);
var
  current_item: TFHIRTreeViewItem;
  i: integer;
  Actor: tfhirexamplescenarioActor;
  Instance: tfhirexamplescenarioinstance;
  sel_index: integer;
  sel_text: string;

begin
  sel_index := -1;
  sel_text := '';

  if sel_item <> nil then sel_index := sel_item.GlobalIndex;

  TreeView1.Clear;
// addTVItem is recursive so we just need to start populating the top level
  current_item := addTVItem(TreeView1, nil, 'examplescenario', 'Example Scenario', exsc);

  if sel_index <> -1 then TreeView1.Selected := TreeView1.ItemByGlobalIndex(sel_index);

  showTab(TFHIRTreeViewItem(TreeView1.Selected).FhirObject);

end;

procedure TForm1.TabControl2Change(Sender: TObject);
begin

  if TreeView1.Selected = nil then
    exit;
  if internal then
    exit;

  internal := true;
  if UpdateExampleScenario.enabled then
    UpdateExampleScenarioClick(Self);
  UpdateProcessClick(Self);
  UpdateActorClick(Self);
  UpdateInstanceClick(Self);
  UpdateAlternativeClick(Self);
  UpdateOptionClick(Self);
  btnUpdateStepClick(Self);
  // button9click(self);
  internal := false;

end;

procedure TForm1.TreeView1Change(Sender: TObject);
var
  obj: tFHIRObject;
begin

  if TreeView1.Selected <> nil then
    obj := TFHIRTreeViewItem(TreeView1.Selected).FhirObject;
  showTab(obj);
end;

procedure TForm1.showTab(obj: tFHIRObject);
var
  i: integer;

begin
  internal := false;
  internal := true;

  for i := 0 to TabControl2.TabCount - 1 do
    TabControl2.Tabs[i].Visible := false;

  TabControl2.tabindex := 0;

  if obj is TFHIRExampleScenario then
  begin
    TabControl2.tabindex := 1;
    UpdateExampleScenario.enabled := true;
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
    UpdateActor.enabled := true;
    Edit3.text := tfhirexamplescenarioActor(obj).name;
    ComboBox1.ItemIndex := integer(tfhirexamplescenarioActor(obj).type_);
    Edit2.text := tfhirexamplescenarioActor(obj).actorId;
    Memo1.text := tfhirexamplescenarioActor(obj).description;
  end;
  if obj is tfhirexamplescenarioinstance then
  begin
    TabControl2.tabindex := 3;
    UpdateInstance.enabled := true;
    Edit10.text := tfhirexamplescenarioinstance(obj).resourceId;
    ComboBox3.ItemIndex := integer(tfhirexamplescenarioinstance(obj).resourceType);
    Edit9.text := tfhirexamplescenarioinstance(obj).name;
    Memo4.text := tfhirexamplescenarioinstance(obj).description;

  end;
  if obj is tfhirexamplescenarioProcess then
  begin
    TabControl2.tabindex := 4;
    UpdateProcess.enabled := true;
    Edit4.text := tfhirexamplescenarioProcess(obj).title;
    Memo2.text := tfhirexamplescenarioProcess(obj).description;
    Memo6.text := tfhirexamplescenarioProcess(obj).preConditions;
    Memo7.text := tfhirexamplescenarioProcess(obj).postConditions;
  end;
  if obj is tfhirexamplescenarioProcessStep then
  begin
    TabControl2.tabindex := 5;
    if tfhirexamplescenarioProcessStep(TFHIRTreeViewItem(TreeView1.Selected).FhirObject).pause then
    chkPause.ischecked:= true else chkPause.ischecked:= false;
  end;
  if obj is tfhirexamplescenarioProcessStepAlternative then
  begin
    TabControl2.tabindex := 6;
    UpdateAlternative.enabled := true;
    Edit12.text := tfhirexamplescenarioProcessStepAlternative(obj).name;
  end;
  if obj is tfhirexamplescenarioProcessStepAlternativeOption then
  begin
    TabControl2.tabindex := 7;
    UpdateOption.enabled := true;
    Memo5.text := tfhirexamplescenarioProcessStepAlternativeOption(obj).description;
  end;
  if obj is tfhirexamplescenarioProcessStepOperation then
  begin
    TabControl2.tabindex := 8;
    UpdateOperation.enabled := true;
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
