page 1000105 "YA PCs Manufacture Card"
{
    Caption = 'PCs Manufacturer Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "YA PCs Manufacture";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("Phone No."; rec."Phone No.")
                {
                    ToolTip = 'Phone No.';
                    ApplicationArea = All;
                }
                field("No. of PCs"; rec."No. of PCs")
                {
                    ToolTip = 'No. of PCs';
                    ApplicationArea = All;
                }

            }
        }
        area(FactBoxes)
        {
            part("Car Factbox"; "YA PCs Listpart")
            {
                ApplicationArea = All;
                SubPageLink = "Manufacturer No." = field("No.");
            }
        }
    }
}