page 1000101 "YA PCs Card Part"
{
    Caption = 'PCs Picture';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "YA PCs";

    layout
    {
        area(Content)
        {
            group(Image)
            {
                field("Picture"; rec.Picture)
                {
                    ToolTip = 'Picture';
                    ApplicationArea = All;
                    ShowCaption = false;
                }

            }
        }
    }
}