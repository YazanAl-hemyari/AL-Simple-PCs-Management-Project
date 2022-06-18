pageextension 1000501 YASocialMedia extends "Customer Card"
{
    layout
    {
        addLast(General)
        {
            field("YA Facebook"; rec."YA Facebook")
            {
                Caption = 'Facebook';
                ToolTip = 'Facebook URl';
                ApplicationArea = All;
            }
            field("YA Instagram"; rec."YA Instagram")
            {
                Caption = 'Instagram';
                ToolTip = 'Instagram URl';
                ApplicationArea = All;
            }
            field("YA Twitter"; rec."YA Twitter")
            {
                Caption = 'Twitter';
                ToolTip = 'Twitter URl';
                ApplicationArea = All;
            }
            field("YA Skype"; rec."YA Skype")
            {
                Caption = 'Skype';
                ToolTip = 'Skype URl';
                ApplicationArea = All;
            }
            field("YA Pref. Channel"; rec."YA Pref. Channel")
            {
                Caption = 'Prefered Channel';
                ToolTip = 'Prefered Channel';
                ApplicationArea = All;
            }

        }
    }
    actions
    {
        addlast("&Customer")
        {
            action("YA Call via Skype")
            {
                ToolTip = 'Call via Skype';
                Caption = 'Call via Skype';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                Image = Calls;

                RunObject = page "Customer List";

            }
        }
    }
}