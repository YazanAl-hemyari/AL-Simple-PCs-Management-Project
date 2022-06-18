page 1000104 "YA PCs Listpart"
{
    Caption = 'PCs Factbox';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "YA PCs";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; rec."No.")
                {
                    ToolTip = 'No.';
                    ApplicationArea = All;

                }
                field("Description"; rec.Description)
                {
                    ToolTip = 'Description';
                    ApplicationArea = All;

                }
                field("Transmission"; rec.Transmission)
                {
                    ToolTip = 'Transmission';
                    ApplicationArea = All;

                }
                field("CPU"; rec.CPU)
                {
                    ToolTip = 'Transmission';
                    ApplicationArea = All;

                }
            }
        }
    }
}