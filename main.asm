.386
.model flat, stdcall

option casemap :none
    include \masm32\include\masm32rt.inc
    include \masm32\macros\macros.asm
    includelib \masm32\lib\kernel32.lib
    includelib \masm32\lib\masm32.lib

.data
    B DB "==============================================================================================",10, 0 ; line only
    E DB 9,9,9,9,9,"Prospectus",10,0
    L DB 9,9,9,9,9,32,32,32,"for",10,0
    C1 DB 9,9,9,9,32,32,"CCJE, BS in Criminology",10,10, 0 ;SYNTAX ERROR IF ONLY C
    I DB 9,32,"Title",9,"Unit",9,"Description",9,9,9,9,32,32,32,32,32,"Prerequisites/Co-requisites",10,10,0
    N DB 9,32, "1ST YEAR/1ST SEMESTER",10,10,0

    ;1st year/1st semester subjects,units,prereq
    A DB 9,32, "GE 3",9,"3",9,"THE CONTEMPORARY WORLD", 10,10,0
    M DB 9,32, "GE 1" ,9, "3" ,9, "UNDERSTANDING THE SELF",10,10,0
    I1 DB 9,32, "GE 6" ,9, "3" ,9, "RIZAL'S LIFE AND WORKS",10,10,0
    C2 DB 9,32, "DEFTAC",10,32,32,9,32,32,"111" ,9, "2" ,9, "FUNDAMENTALS OF MARTIAL ARTS",10,10,0
    H DB 9,32, "GE 4" ,9, "3" ,9, "MATHEMATICS IN THE MODERN WORLD",10,10,0
    A1 DB 9,32, "CRI", 10,32, 9,32,"111" ,9, "3" ,9, "INTRODUCTION TO CRIMINOLOGY", 10,10,0
    E1 DB 9,32, "GE 2" ,9, "6" ,9, "PURPOSIVE COMMUNICATION",10,9,9,9,"W/ INTERACTIVE LEARNING", 10,10,0
    L1 DB 9,32, "ROTC",10,32, 9,32,"101" ,9, "3" ,9, "MILITARY SCIENCE 11-12", 10,10,0

    J DB 10,10,32,"Enter year level and semester",9,"*Example 11 for first year/first semester, 32 for third year/second semester* 23/33 for summer",10,0
    O DB 9,32,"Total",0 ; USED FOR TOTAL UNITS

    ; FIRST YEAR/SECOND SEM
    H1 DB 10,9,32, "1ST YEAR/2ND SEMESTER",10,10,0
    N1 DB 9,32,"UGE 1",9,"6",9,"READING COMPREHENSION",9,9,9,9,32,32,32,"GE 2", 10,10,0
    A3 DB 9,32,"GEFIL",10,9,32,32,32,"1",9,"3",9,"PANITIKANG FILIPINO", 10,10,0
    N3 DB 9,32,"GE 5",9,"3",9,"SCIENCE, TECHNOLOGY AND SOCIETY",10,10,0
    G DB 9,32, "CRI",10,9,32,"121",9,"3",9,"INTRODUCTION TO PHIL CRIMINAL JUSTICE SYSTEM",9,32,32,32,"CRI 111",10,10,0
    E3 DB 9,32,"ROTC",10,9,32,"102",9,"3",9,"MILITARY SCIENCE 21-22",9,9,9,9,32,32,32,"ROTC 101",10,10,0
    L3 DB 9,32,"GE 9",9,"3",9,"ETHICS (DISCIPLINAL)",10,10,0
    O1 DB 9,32,"DEFTAC",10,9,32,32,"112",9,"2",9,"ARNIS AND DISARMING TECHNIQUE",9,9,9,32,32,32,"DEFTAC 111",10,10,0
    B3 DB 9,32, "GE 8",9,"3",9,"READINGS IN PHILIPPINE HISTORY",10,10,0

    ; SECOND YEAR/FIRST SEM
    E4 DB 9,32, "2ND YEAR/1ST SEMESTER",10,10,0
    L4 DB 9,32, "CRI",9,"3",9,"INTRODUCTION TO INDUSTRIAL SECURITY CONCEPTS",10,9,32,"215",10,10,0
    C4 DB 9,32, "DEFTAC",9,"2",9,"FIRST AID AND WATER SAFETY",9,9,9,32,32,32,"DEFTAC 112",10,9,32,32,"113",10,10,0
    I3 DB 9,32, "CRI",9,"4",9,"LAW ENFORCEMENT ORGANIZATION AND ADMINISTRATION",10,9,32,"213",10,10,0
    N4 DB 9,32, "CRI",9,"3",9,"COMPARATIVE MODELS IN POLICING",9,9,9,32,32,32,"CRI 213",10,9,32,"214",10,10,0
    A4 DB 9,32, "CRI",9,"4",9,"FUNDAMENTALS OF INVESTIGATION AND INTELLIGENCE",10,9,32,"222",10,10,0
    M1 DB 9,32, "CRI",9,"3",9,"THEORIES OF CRIME CAUSATION",9,9,9,32,32,32,"CRI 121",10,9,32,"211",10,10,0
    I4 DB 9,32, "CHEM",9,"3",9,"GENERAL CHEMISTRY 1",10,9,32,"205",10,10,0
    C5 DB 9,32, "CRI",9,"3",9,"VICTIMOLOGY",9,9,9,9,9,32,32,32,"CRI 121",10,9,32,"212",10,10,0

    ; SECOND YEAR/SECOND SEM
    H2 DB 9,32,"2ND YEAR/2ND SEMESTER",10,10,0
    A5 DB 9,32,"CRI",9,"3",9,"TRAFFIC MGT AND ACCIDENT INVESTIGATION",9,9,9,32,32,32,"CRI 222",10,9,32,"224",10,10,0
    E5 DB 9,32,"DEFTAC",9,"2",9,"FUNDAMENTALS OF MARKMANSHIP",9,9,9,9,32,32,32,"DEFTAC 113",10,9,32,32,"114",10,10,0
    L5 DB 9,32,"CRI",9,"3",9,"SPECIALIZED CRIME INVESTIGATION 1 W/ LEGAL MED",9,9,32,32,32,"CRI 222",10,9,32,"223",10,10,0
    J1 DB 9,32,"CRI",9,"3",9,"FORENSIC PHOTOGRAPHY",9,9,9,9,9,32,32,32,"CRI 221/L",10,9,32,"227",10,10,0
    O2 DB 9,32,"CRI",9,"3",9,"ENVIRONMENTAL LAW AND PROTECTION & INVESTIGATION",9,32,32,32,"CRI 222",10,9,32,"228",10,10,0
    H3 DB 9,32,"CRI",9,"3",9,"COMPARATIVE CRIMINAL JUSTICE SYSTEM",9,9,9,32,32,32,"CRI 121",10,9,32,"226",10,10,0
    N5 DB 9,32,"CRI",9,"3",9,"PERSONAL IDENTIFICATION TECHNIQUES",10,9,32,"221",10,10,0
    A6 DB 9,32,"CRI",9,"3",9,"PROFESSIONAL CONDUCT AND ETHICAL STANDARDS",9,9,32,32,32,"CRI 213",10,9,32,"225",10,10,0
    N6 DB 9,32,"CRI",9,"3",9,"TECHNICAL ENGLISH 1(LEGAL FORMS)",9,9,9,32,32,32,"CRI 222",10,9,32,"316",10,10,0


    ; SECOND YEAR/SUMMER
    G1 DB 9,32,"2ND YEAR/SUMMER",10,10,0
    E6 DB 9,32,"CRI",9,"3",9,"HUMAN RIGHTS EDUCATION",9,9,9,9,9,32,32,32,"CRI 225",10,9,32,"312",10,10,0
    L6 DB 9,32,"CRI",9,"3",9,"TECHNICAL ENGLISH 2 (TECHNICAL REPORT WRITING)",9,9,32,32,32,"CRI 316",10,9,32,"326",10,10,0
    O3 DB 9,32,"GE 7",9,"3",9,"ART APPRECIATION",10,10,0

    ; THIRD YEAR/FIRST SEMESTER

    B4 DB 9,32,"3RD YEAR/1ST SEMESTER",10,10,0
    E7 DB 9,32,"CRI",9,"3",9,"NATIONALISM AND PATRIONISM",9,9,9,9,32,32,32,"CRI 225",10,9,32,"319",10,10,0
    L7 DB 9,32,"CRI",9,"3",9,"VICE AND DRUG EDUCATION AND CONTROL",9,9,9,32,32,32,"CRI 222",10,9,32,"325",10,10,0
    C6 DB 9,32,"CRI",9,"5",9,"FORENSIC CHEMISTRY AND TOXICOLOGY",9,9,9,32,32,32,"CRI 227/L",10,9,32,"311",10,10,0
    I5 DB 9,32,"CRI",9,"3",9,"SPECIALIZED CRIME INVESTIGATION 2 W/SIMUL OF",9,9,32,32,32,"CRI 223",10,9,32,"315",10,10,0
    N7 DB 9,32,"CRI",9,"3",9,"CRIMINAL LAW (BOOK 1)",10,9,32,"314",10,10,0
    A7 DB 9,32,"CRI",9,"3",9,"QUESTIONED DOCUMENTS EXAMINATION",9,9,9,32,32,32,"CRI 311/L",10,9,32,"318",10,10,0
    M2 DB 9,32,"CRI",9,"3",9,"INSTITUTIONAL CORRECTIONS",9,9,9,9,32,32,32,"CRI 226",10,9,32,"313",10,10,0
    I6 DB 9,32,"CRI",9,"3",9,"HUMAN BEHAVIOUR AND JUVENILE DELINQUENCY",9,9,32,32,32,"CRI 111",10,9,32,"317",10,10,0



    ; THIRD YEAR/SECOND SEMESTER
    C7 DB 9,32,"3RD YEAR/2ND SEMESTER",10,10,0
    H4 DB 9,32,"CRI",9,"3",9,"METHODS OF RESEARCH",9,9,9,9,9,32,32,32,"CRI 326",10,9,32,"300",10,10,0
    A8 DB 9,32,"CRI",9,"3",9,"LIE DETECTION TECHNIQUES",9,9,9,9,32,32,32,"CRI 318/L",10,9,32,"328",10,10,0
    E8 DB 9,32,"CRI",9,"4",9,"CRIMINAL LAW (BOOK 2)",9,9,9,9,9,32,32,32,"CRI 314",10,9,32,"323",10,10,0
    A9 DB 9,32,"GE 15",9,"3",9,"ENVIRONMENTAL SCIENCE",10,10,0
    L8 DB 9,32,"CRI",9,"3",9,"LAW ENFORCEMENT OPERATION & PLNG W/ CRIME MAP",9,9,32,32,32,"CRI 222",10,9,32,"321",10,10,0
    J2 DB 9,32,"CRI",9,"3",9,"LEADERSHIP MGT DECISION MAKING, MGT AND",9,9,9,32,32,32,"CRI 315",10,9,32,"330",10,10,0
    O4 DB 9,32,"CRI",9,"3",9,"INTERNATIONAL TERRORISM",9,9,9,9,9,32,32,32,"CRI 315",10,9,32,"331",10,10,0
    H5 DB 9,32,"CRI",9,"3",9,"DISPUTE RESOLUTION AND CRISES/INCIDENTS MGT",10,9,32,"322",10,10,0
    N8 DB 9,32,"CRI",9,"3",9,"FIRE PROTECTION AND ARSON INVESTIGATION",9,9,9,32,32,32,"CRI 315",10,9,32,"324",10,10,0

    ; THIRD YEAR/SUMMER
    A10 DB 9,32,"3RD YEAR/SUMMER",10,10,0
    N9 DB 9,32,"CRI",9,"3",9,"CRIMINOLOGICAL RESEARCH",9,9,9,9,9,32,32,32,"CRI 300",10,9,32,"301",10,10,0
    G2 DB 9,32,"GE 20",9,"3",9,"READING VISUAL ARTS",10,10,0
    E9 DB 9,32,"GE 11",9,"3",9,"THE ENTREPRENEURIAL MIND",10,10,0

    ; 4TH YEAR/1ST SEM
    L9 DB 9,32,"4TH YEAR/1ST SEM",10,10,0
    O5 DB 9,32,"CRI",9,"3",9,"NON-INSTITUTIONAL CORRECTIONS",9,9,9,9,32,32,32,"CRI 313",10,9,32,"412",10,10,0
    B5 DB 9,32,"CRI",9,"3",9,"INTRODUCTION TO CYBERCRIME",9,9,9,9,32,32,32,"CRI 222",10,9,32,"327",10,10,0
    E10 DB 9,32,"CRI",9,"6",9,"PRACTICUM (OJT 1)",9,9,9,9,9,32,32,32,"4TH YEAR STANDING",10,9,32,"411",10,10,0
    L10 DB 9,32,"CRI",9,"3",9,"THERAPEUTIC MODALITIES",10,9,32,"416",10,10,0
    C8 DB 9,32,"DEFTAC",9,"2",9,"DEFENSIVE DRIVING",9,9,9,9,9,32,32,32,"DEFTAC 114",10,9,32,32,32,"5",10,10,0
    I7 DB 9,32,"CRI",9,"3",9,"CRIMINAL PROCEDURE AND COURT TESTIMONY",9,9,9,32,32,32,"CRI 415",10,9,32,"417",10,10,0
    N10 DB 9,32,"CRI",9,"3",9,"EVIDENCE",9,9,9,9,9,9,32,32,32,"CRI 323",10,9,32,"415",10,10,0
    A11 DB 9,32,"CRI",9,"3",9,"FORENSIC BALLISTICS",9,9,9,9,9,32,32,32,"CRI 328/L",10,9,32,"414",10,10,0

    ;4TH YEAR/2ND SEMESTER
    M3 DB 9,32,"4TH YEAR/2ND SEMESTER",10,10,0
    I8 DB 9,32,"CAED",9,"3",9,"CAREER AND PERSONALITY DEVELOPMENT",9,9,9,32,32,32,"4TH YEAR STANDING",10,9,32,"500C",10,10,0
    C9 DB 9,32,"CRI",9,"2",9,"LAW ENFORCEMENT ADMINISTRATION",9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"504",10,10,0
    H6 DB 9,32,"CRI",9,"2",9,"CORRECTION ADMINISTRATION",9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"501",10,10,0
    A12 DB 9,32,"CRI",9,"2",9,"CRIME DETECTION & INVESTIGATION",9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"505",10,10,0
    E11 DB 9,32,"CRI",9,"2",9,"SOCIOLOGY OF CRIMES AND ETHICS",9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"502",10,10,0
    L11 DB 9,32,"CRI",9,"2",9,"CRIMINALISTICS",9,9,9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"506",10,10,0
    J3 DB 9,32,"CRI",9,"2",9,"CRIMINAL JURISPRUDENCE",9,9,9,9,9,32,32,32,"ALL MAJOR SUBJECTS",10,9,32,"503",10,10,0

    ;RETRY AND EXIT CONDITION
    O6 DB 9,32,"ENTER Y/y TO RETRY PICKING SUBJECTS || ENTER ANY TO EXIT THE PROGRAM: ", 0
.data?
    B2 DD ? ;GET YEAR/SEM input
    E2 DD ? ; Array for how many subjects to take// Used to put how many elements the array will be
    L2 DD ? ; Array for subjects to take
    C3 DD ? ; TOTAL SUM OF UNITS
    I2 DD ? ; USED AS A COUNTER
    N2 DD ?  ; USED ONLY TO CALL MACROS
    A13 DD ? ; for name
.code

start:
    invoke ClearScreen
    print offset B
    print offset E
    print offset L
    print offset C1
    print offset I
    print offset N

    ;1st/1st 1st sem/1st term
    print offset A
    print offset M
    print offset I1
    print offset C2
    print offset H
    print offset A1
    print offset E1
    print offset L1

    ;1st/2nd
    print offset B
    print offset I
    print offset H1
    print offset N1
    print offset A3
    print offset N3
    print offset G
    print offset E3
    print offset L3
    print offset O1
    print offset B3

    ;2nd/1st
    print offset B
    print offset I
    print offset E4
    print offset L4
    print offset C4
    print offset I3
    print offset N4
    print offset A4
    print offset M1
    print offset I4
    print offset C5

    ;2ND/2ND
    print offset B
    print offset I
    print offset H2
    print offset A5
    print offset E5
    print offset L5
    print offset J1
    print offset O2
    print offset H3
    print offset N5
    print offset A6
    print offset N6


    ;2ND/SUMMER
    print offset B
    print offset I
    print offset G1
    print offset E6
    print offset L6
    print offset O3

    ;3RD YEAR / 1ST SEM
    print offset B
    print offset I
    print offset B4
    print offset E7
    print offset L7
    print offset C6
    print offset I5
    print offset N7
    print offset A7
    print offset M2
    print offset I6

    ;3RD YEAR/2ND YEAR
    print offset B
    print offset I
    print offset C7
    print offset H4
    print offset A8
    print offset E8
    print offset A9
    print offset L8
    print offset J2
    print offset O4
    print offset H5
    print offset N8

    ;3RD YEAR/SUMMER
    print offset B
    print offset I
    print offset A10
    print offset N9
    print offset G2
    print offset E9

    ;4TH YEAR/1ST SEMESTER
    print offset B
    print offset I
    print offset L9
    print offset O5
    print offset B5
    print offset E10
    print offset L10
    print offset C8
    print offset I7
    print offset N10
    print offset A11

    ;4TH YEAR/2ND SEMESTER
    print offset B
    print offset I
    print offset M3
    print offset I8
    print offset C9
    print offset H6
    print offset A12
    print offset E11
    print offset L11
    print offset J3
    ;Input
    print offset B
    mov A13, input("Enter name: ")
    print offset J
    mov B2, sval(input(32,": "))
    .IF B2 == 11 ; FIRST YEAR/FIRST SEMESTER
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 8 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 8 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 8
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset A
            print offset M
            print offset I1
            print offset C2
            print offset H
            print offset A1
            print offset E1
            print offset L1
            ADD C3, 26
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset A
            print offset M
            print offset I1
            print offset C2
            print offset H
            print offset A1
            print offset E1
            print offset L1
            print offset B

            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"GE3") == 0
                    print offset A
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE1") == 0
                    print offset M
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE6") == 0
                    print offset I1
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"DEFTAC111") == 0
                    print offset C2
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE4") == 0
                    print offset H
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI111") == 0
                    print offset A1
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE2") == 0
                    print offset E1
                    add C3, 6
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"ROTC101") == 0
                    print offset L1
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 12
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 8 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 8 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 8
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset H1
            print offset N1
            print offset A3
            print offset N3
            print offset G
            print offset E3
            print offset L3
            print offset O1
            print offset B3
            ADD C3, 26
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset H1
            print offset N1
            print offset A3
            print offset N3
            print offset G
            print offset E3
            print offset L3
            print offset O1
            print offset B3
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"UGE1") == 0
                    print OFFSET N1
                    add C3, 6
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GEFIL1") == 0
                    print OFFSET A3
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE5") == 0
                    print OFFSET N3
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI121") == 0
                    print OFFSET G
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"ROTC102") == 0
                    print OFFSET E3
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE9") == 0
                    print OFFSET L3
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"DEFTAC112") == 0
                    print OFFSET O1
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE8") == 0
                    print OFFSET B3
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 21
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 8 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 8 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 8
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset L4
            print offset C4
            print offset I3
            print offset N4
            print offset A4
            print offset M1
            print offset I4
            print offset C5
            ADD C3, 25
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset E4
            print offset L4
            print offset C4
            print offset I3
            print offset N4
            print offset A4
            print offset M1
            print offset I4
            print offset C5
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI215") == 0
                    print OFFSET L4
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"DEFTAC113") == 0
                    print OFFSET C4
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI213") == 0
                    print OFFSET I3
                    add C3, 4
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI214") == 0
                    print OFFSET N4
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI222") == 0
                    print OFFSET A4
                    add C3, 4
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI211") == 0
                    print OFFSET M1
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CHEM205") == 0
                    print OFFSET I4
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI212") == 0
                    print OFFSET C5
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW

        .ENDIF
    .ELSEIF B2 == 22
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 9 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 9 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 9
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset A5
            print offset E5
            print offset L5
            print offset J1
            print offset O2
            print offset H3
            print offset N5
            print offset A6
            print offset N6
            add C3, 26
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset H2
            print offset A5
            print offset E5
            print offset L5
            print offset J1
            print offset O2
            print offset H3
            print offset N5
            print offset A6
            print offset N6
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10

            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI224") == 0
                    print OFFSET A5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"DEFTAC114") == 0
                    print OFFSET E5
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI223") == 0
                    print OFFSET L5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI227") == 0
                    print OFFSET J1
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI228") == 0
                    print OFFSET O2
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI226") == 0
                    print OFFSET H3
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI221") == 0
                    print OFFSET N5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI225") == 0
                    print OFFSET A6
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI316") == 0
                    print OFFSET N6
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 23
             mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 3 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 3 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 3
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset E6
            print offset L6
            print offset O3
            ADD C3, 15
        .ELSE 
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset G1
            print offset E6
            print offset L6
            print offset O3
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI312") == 0
                    print offset E6
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI326") == 0
                    print offset L6
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE7") == 0
                    print offset O3
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 31 ;3RD/1ST SEM
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 8 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 8 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 8
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset E7
            print offset L7
            print offset C6
            print offset I5
            print offset N7
            print offset A7
            print offset M2
            print offset I6
            ADD C3, 26
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen

            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset B4
            print offset E7
            print offset L7
            print offset C6
            print offset I5
            print offset N7
            print offset A7
            print offset M2
            print offset I6
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10

            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI319") == 0
                    print offset E7
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI325") == 0
                    print offset L7
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI311") == 0
                    print offset C6
                    add C3, 5
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI315") == 0
                    print offset I5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI314") == 0
                    print offset N7
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI318") == 0
                    print offset A7
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI313") == 0
                    print offset M2
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI317") == 0
                    print offset I6
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 32 ;3RD YEAR/2ND SEM
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 9 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 9 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 9
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset H4
            print offset A8
            print offset E8
            print offset A9
            print offset L8
            print offset J2
            print offset O4
            print offset H5
            print offset N8
            ADD C3, 28
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen

            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset C7
            print offset H4
            print offset A8
            print offset E8
            print offset A9
            print offset L8
            print offset J2
            print offset O4
            print offset H5
            print offset N8
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10

            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI300") == 0
                    print offset H4
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI328") == 0
                    print offset A8
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI323") == 0
                    print offset E8
                    add C3, 4
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE15") == 0
                    print offset A9
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI321") == 0
                    print offset L8
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI330") == 0
                    print offset J2
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI331") == 0
                    print offset O4
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI322") == 0
                    print offset H5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI324") == 0
                    print offset N8
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 33 ;3RD YEAR/SUMMER
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 3 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 3 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 3
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset N9
            print offset G2
            print offset E9
            add C3, 9
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset A10
            print offset N9
            print offset G2
            print offset E9
            print offset B

            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI301") == 0
                    print offset N9
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE20") == 0
                    print offset G2
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"GE11") == 0
                    print offset E9
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 41 ;4TH YEAR/1ST SEMESTER
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 8 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 8 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 8
            invoke ClearScreen
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset O5
            print offset B5
            print offset E10
            print offset L10
            print offset C8
            print offset I7
            print offset N10
            print offset A11
            add C3, 25
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen

            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset L9
            print offset O5
            print offset B5
            print offset E10
            print offset L10
            print offset C8
            print offset I7
            print offset N10
            print offset A11
            print offset B
            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10

            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CRI412") == 0
                    print offset O5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI327") == 0
                    print offset B5
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI411") == 0
                    print offset E10
                    add C3, 6
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI416") == 0
                    print offset L10
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"DEFTAC5") == 0
                    print offset C8
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI417") == 0
                    print offset I7
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI415") == 0
                    print offset N10
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI414") == 0
                    print offset A11
                    add C3, 3
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ELSEIF B2 == 42 ;4TH YEAR/2ND SEMESTER
        mov E2, sval(input(32,"Enter how many subjects you will take: ")) ; Get input then convert to decimal
        .IF E2 > 7 ; WILL ONLY TRIGGER IF INPUT IS HIGHER THAN 8
                print "You can only have maximum of 7 subjects in this semester, please try again",13,10
                inkey
                jmp start
        .ELSEIF E2 == 7
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset I8
            print offset C9
            print offset H6
            print offset A12
            print offset E11
            print offset L11
            print offset J3
            add C3, 25
        .ELSE
            mov L2, arralloc$(E2) ;Initiate array with the size of H1
            invoke ClearScreen

            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            print offset M3
            print offset I8
            print offset C9
            print offset H6
            print offset A12
            print offset E11
            print offset L11
            print offset J3
            print offset B

            print "Enter Title - Example: GE3 GE1 DEFTAC111", 13,10
            .WHILE E2 > 0 ; LOOP TO GET SUBJECTS CHOSEN BY THE STUDENT
                mov N2, arrset$(L2, E2, input("Enter subject: "))
                sub E2, 1
            .ENDW
            invoke ClearScreen
            mov E2, arrcnt$(L2) ; GET LENGTH OF SUBJECT ARRAY
            mov C3, 0; INITIALIZE TO ZERO
            print offset B
            print offset I
            print "                                                                     Name: "
            print A13,13,10
            .WHILE E2 > 0 ; ADD TO UNITS
                .IF cmpi$(arrget$(L2,E2),"CAED500C") == 0
                    print offset I8
                    add C3, 3
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI504") == 0
                    print offset C9
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI501") == 0
                    print offset H6
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI505") == 0
                    print offset A12
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI502") == 0
                    print offset E11
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI506") == 0
                    print offset L11
                    add C3, 2
                .ENDIF
                .IF cmpi$(arrget$(L2,E2),"CRI503") == 0
                    print offset J3
                    add C3, 2
                .ENDIF
                sub E2,1
            .ENDW
        .ENDIF
    .ENDIF
    print offset B
    print offset O,9
    print ustr$(C3)," Units",13,10,10,10,10
    print offset O6
    mov N2, 0
    mov C3, 0 ; TO MAKE SURE THAT TOTAL UNITS IS EMPTY IF EVER USE WILL LOOP AGAIN
    mov N2, input()
    .IF cmpi$(N2,"Y") == 0
        jmp start
    .ELSE
        inkey
        exit
    .ENDIF
end start