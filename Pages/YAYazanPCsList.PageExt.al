pageextension 10000502 "YA Yazan PCs List" extends "Business Manager Role Center"
{
    actions
    {
        addlast(Sections)
        {
            group("Yazan PCs Extensions")
            {
                group("Yazan PCs")
                {
                    action("YA PCs List")
                    {
                        RunObject = page "YA PCs List";
                        ApplicationArea = All;
                    }
                }
                group("Yazan PCs Manufacture")
                {
                    action("YA PCs Manufacture List")
                    {
                        RunObject = page "YA PCs Manufacture List";
                        ApplicationArea = All;
                    }

                }

            }
        }
    }
}