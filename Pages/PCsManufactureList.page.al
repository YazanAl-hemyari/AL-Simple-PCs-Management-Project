page 1000106 "YA PCs Manufacture List"
{
    Caption = 'PCs Manufacturer List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "YA PCs Manufacture";
    CardPageId = "YA PCs Manufacture Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
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
    }

}