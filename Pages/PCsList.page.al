page 1000103 "YA PCs List"
{
    Caption = 'PCs List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "YA PCs";
    CardPageId = 1000100;
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
                field("Description"; rec."Description")
                {
                    ToolTip = 'Description';
                    ApplicationArea = All;
                }
                field("Type"; rec."Type")
                {
                    ToolTip = 'Type';
                    ApplicationArea = All;
                }
                field("Manufacturer No."; rec."Manufacturer No.")
                {
                    ToolTip = 'Manufacturer No.';
                    ApplicationArea = All;
                }
                field("Transmission"; rec.Transmission)
                {
                    ToolTip = 'Transmission';
                    ApplicationArea = All;
                }
                field("CPU"; rec.CPU)
                {
                    ToolTip = 'CPU';
                    ApplicationArea = All;
                }

                field("PCs Manuf. Country/Region"; rec."PCs Manuf. Country/Region Code")
                {
                    ToolTip = 'PCs Manufacturer Country/Region';
                    ApplicationArea = All;
                }

                field("Vendor No."; rec."Vender No.")
                {
                    ToolTip = 'Transmission';
                    ApplicationArea = All;
                }


            }
        }
    }
}