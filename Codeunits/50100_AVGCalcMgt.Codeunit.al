codeunit 50100 "Average Calculation Management"
{
    trigger OnRun()
    begin

    end;

    procedure CalcSemesterAvg(StudentCIN_P: Integer; Semester_P: Enum Semester)
    var
        Student_L: Record Student;
        Notes_L: Record Notes;
        AVG_L: Decimal;
        Counter_L: Integer;
        Subject_L: Record Subject;
        SuccessMsg_L: Label 'The semester average is inserted with success.';
        ErrorMsg_L: Label 'Something went wrong.';
    begin
        Counter_L := 0;
        AVG_L := 0;
        if Student_L.Get(StudentCIN_P) then begin
            Notes_L.Reset();
            Notes_L.SetRange("Student CIN", Student_L.CIN);
            Notes_L.SetRange(Semester, Semester_P);
            if Notes_L.FindSet() then begin
                // Counter_L := Notes_L.Count;
                repeat
                    if Subject_L.Get(Notes_L."Subject Code") then
                        Counter_L += Subject_L.Coeff;
                    AVG_L += Notes_L.Note * Subject_L.Coeff;
                until Notes_L.Next() = 0;
                AVG_L := AVG_L / Counter_L;
            end;
            if Semester_P = Semester_P::S1 then
                Student_L."First Semester Average" := AVG_L
            else
                Student_L."Second Semester Average" := AVG_L;

            if Student_L.Modify() then
                Message(SuccessMsg_L)
            else
                Message(ErrorMsg_L);
        end;

    end;

    procedure CalcOverallYearAvg(StudentCIN_P: Integer)
    var
        Student_L: Record Student;
        ErrorMsg_L: Label 'Please verify the averages calculations';
    begin
        if Student_L.Get(StudentCIN_P) then begin
            if (Student_L."First Semester Average" = 0) OR (Student_L."Second Semester Average" = 0) then
                Error(ErrorMsg_L);

            Student_L."Overall Year Average" := (Student_L."First Semester Average" + Student_L."Second Semester Average") / 2;
            Student_L.Modify();

            if Student_L."Overall Year Average" >= 10 then
                Student_L."Overall Year Status" := Student_L."Overall Year Status"::Passed
            else
                Student_L."Overall Year Status" := Student_L."Overall Year Status"::"Not Passed";
            Student_L.Modify();

        end;
    end;


}