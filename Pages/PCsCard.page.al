page 1000100 "YA PCs Card"
{

    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "YA PCs";
    Caption = 'PCs Card';
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
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
                    ToolTip = 'Car Manufacturer Country/Region';
                    ApplicationArea = All;
                }

                field("Vendor No."; rec."Vender No.")
                {
                    ToolTip = 'Transmission';
                    ApplicationArea = All;
                }


            }
        }
        area(FactBoxes)
        {
            part("Car Picture"; "YA PCs Card Part")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("No.");
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = All;
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action("Show Manufacturer PCs")
            {
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = AllLines;
                ToolTip = 'Show Manufacturer PCs';
                ApplicationArea = All;
                RunObject = Page "YA PCs List";
                RunPageLink = "Manufacturer No." = field("Manufacturer No.");
                RunPageMode = View;
            }
        }
    }
}