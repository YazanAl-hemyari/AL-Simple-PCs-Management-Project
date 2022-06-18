tableextension 1000103 YASocialMedia extends Customer
{
    fields
    {
        field(1000104; "YA Facebook"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(1000105; "YA Instagram"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(1000106; "YA Twitter"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(1000107; "YA Skype"; Text[50])
        {
            DataClassification = CustomerContent;
            ExtendedDatatype = URL;
        }
        field(1000108; "YA Pref. Channel"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Facebook,Instagram,Twitter,Skype;
            OptionCaption = 'Facebook,Instagram,Twitter,Skype';
        }


    }

}