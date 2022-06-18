table 1000101 "YA PCs Manufacture"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Manufacturer No.';
            DataClassification = CustomerContent;
        }
        field(2; "Description"; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code.';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(4; "No. of PCs"; Integer)
        {
            Caption = 'No. of PCs';
            FieldClass = FlowField;
            CalcFormula = count("YA PCs" where("Manufacturer No." = field("No.")));
            Editable = false;
        }
        field(5; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            DataClassification = CustomerContent;
            ExtendedDatatype = PhoneNo;
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(SK1; "Country/Region Code")
        {


        }
    }

}