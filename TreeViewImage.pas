unit TreeViewImage;

interface
uses FMX.TreeView, FMX.Objects, FMX.Types, Classes;

type TTreeViewImageItem = class(TTreeViewItem)
  private
    FImage: TImage;
    FShowImage: Boolean;
    FImageStyleLookup: String;
    procedure SetShowImage(const Value: Boolean);
    procedure SetImageStyleLookup(const Value: String);
  protected
    procedure ApplyStyle;override;
    procedure FreeStyle;override;
  public
    constructor Create(AOwner: TComponent);override;
  published
    property ImageStyleLookup: String read FImageStyleLookup write SetImageStyleLookup;
    property ShowImage: Boolean read FShowImage write SetShowImage default True;
  end;

implementation

{ TTreeViewImageItem }

procedure TTreeViewImageItem.ApplyStyle;
var O: TFMXObject;
begin
  inherited;

  O := FindStyleResource('image');
  if O is TImage then
  begin
    FImage := TImage(O);
    FImage.Visible := ShowImage;
 //   FImage.Bitmap.StyleLookup := FImageStyleLookup;
  end;
end;

constructor TTreeViewImageItem.Create(AOwner: TComponent);
begin
  inherited;
  ShowImage := True;
end;

procedure TTreeViewImageItem.FreeStyle;
begin
  inherited;
  FImage := nil;
end;

procedure TTreeViewImageItem.SetImageStyleLookup(const Value: String);
var O: TFMXObject;
begin
  FImageStyleLookup := Value;
  if Assigned(FImage) then
 //   FImage.Bitmap.StyleLookup := Value;
end;

procedure TTreeViewImageItem.SetShowImage(const Value: Boolean);
begin
  FShowImage := Value;
  if Assigned(FImage) then
    FImage.Visible := Value;
end;

end.
