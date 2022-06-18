table 1000100 "YA PCs"
{
    DataClassification = ToBeClassified;
    TableType = Normal;
    Caption = 'Customers';
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Customer No.';
            FieldClass = Normal;
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
            OptionMembers = Workstation,"PC (Personal Computer)","Mini Computer","Main Frame",;
            OptionCaption = 'Workstation,PC (Personal Computer),Mini Computer,Main Frame,';
        }
        field(4; "Manufacturer No."; Code[20])
        {
            Caption = 'Manufacturer No.';
            DataClassification = CustomerContent;
            TableRelation = "YA PCs Manufacture";
        }
        field(5; Transmission; Option)
        {
            Caption = 'Transmission';
            DataClassification = CustomerContent;
            OptionMembers = MAN,AUT;
            OptionCaption = 'MAN,AUT';
        }
        field(6; CPU; Option)
        {
            Caption = 'CPU';
            DataClassification = CustomerContent;
            OptionMembers = "Core i3","Core i4","Core i5","Core i7","Core i9";
            OptionCaption = '"Core i3","Core i4","Core i5","Core i7","Core i9"';
        }
        field(7; "PCs Manuf. Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            FieldClass = FlowField;
            CalcFormula = lookup("YA PCs Manufacture"."Country/Region Code" where("No." = field("Manufacturer No.")));
            Editable = false;

        }
        field(8; "Vender No."; Code[20])
        {
            Caption = 'Vender No.';
            DataClassification = CustomerContent;
            TableRelation = Vendor where("Partner Type" = const(Company), Blocked = const(" "));
        }
        field(9; Picture; MediaSet)
        {
            Caption = 'Pictures';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(SK1; "Manufacturer No.")
        {

        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Type, CPU, Transmission) { }
        fieldgroup(Brick; "No.", Description, Type, CPU, Transmission, Picture) { }
    }
}