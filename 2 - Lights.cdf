(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 13.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[     35598,        822]
NotebookOptionsPosition[     32299,        752]
NotebookOutlinePosition[     32693,        768]
CellTagsIndexPosition[     32650,        765]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["Let\[CloseCurlyQuote]s impress my baby girl with 10 strips of light.", \
"Text",
 CellChangeTimes->{{3.857593974626793*^9, 3.8575941061883707`*^9}, {
  3.8578205806956377`*^9, 3.857820611830709*^9}, {3.857822388077421*^9, 
  3.857822393208075*^9}},ExpressionUUID->"6fc254a7-7b54-4e51-b77c-\
c57b30c534fb"],

Cell[BoxData[
 RowBox[{"ClearAll", "[", "\"\<Global'*\>\"", "]"}]], "Input",
 CellLabel->"In[1]:=",ExpressionUUID->"4fb2f2c9-45b8-4a56-a67c-3198339ea299"],

Cell[CellGroupData[{

Cell["Given holiday lights of the box", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857822002864828*^9, 
  3.8578220042208*^9}, {3.857822074331509*^9, 3.8578220840897417`*^9}, {
  3.8578221354179173`*^9, 3.857822170562058*^9}, {3.85782237307766*^9, 
  3.85782237523531*^9}},ExpressionUUID->"ea17e1b3-22b9-4c4d-b541-\
0ca18a3bff72"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
  "initialstrip", " ", "=", " ", 
   "\"\<BRBRYRYYBYYRBBYRRRRBRYYYYYYYBBBYRRRRBBYRYYRRRRRBBRRRRYRBYYYYBRYBBRRBYR\
RRRRBBBBYBBRRRYRBBRRYYYRBYYRRBYBRBRBBBRYBBYRBYBBRRBYYYYBYRBRBYRYYBYBRRBRYRYYYB\
YYYBRYYRRBBBBYYBRYBBBBYYBYYYBRYBBBBBYBBBYYRRRYYRYYYYYRBYBBBBBYBYBBRBRYBRRBYBBY\
BYYYRYYYBRRRBBBYRBYRYRYR\>\""}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"strip", " ", "=", " ", 
  RowBox[{"StringSplit", "[", 
   RowBox[{"initialstrip", ",", "\"\<\>\""}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.857820677408676*^9, 3.8578206982933197`*^9}, {
   3.857821558263488*^9, 3.857821569073167*^9}, {3.857822031115902*^9, 
   3.857822031690126*^9}, 3.857822198696266*^9, {3.8579875920009727`*^9, 
   3.857987592509364*^9}},
 CellLabel->
  "In[101]:=",ExpressionUUID->"8887903c-b067-4782-ad73-48286f3b9a26"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"Y\"\>", ",", "\<\"B\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"R\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"B\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"B\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>", ",", "\<\"Y\"\>", ",", "\<\"R\"\>", 
   ",", "\<\"Y\"\>", ",", "\<\"R\"\>"}], "}"}]], "Output",
 CellChangeTimes->{3.85798759493255*^9, 3.8579876477792273`*^9, 
  3.857988311023769*^9, 3.8579898694258423`*^9, 3.857990058875249*^9, 
  3.857990399849271*^9, 3.857991435606892*^9, 3.8580076803251257`*^9},
 CellLabel->
  "Out[102]=",ExpressionUUID->"e2788b85-e2f7-4d53-bd8b-d47b3981c1e3"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Purple", "Chapter",
 CellChangeTimes->{{3.85793987803067*^9, 
  3.857939882575067*^9}},ExpressionUUID->"e90b1f2a-d877-42ac-bc46-\
184f64c6fb52"],

Cell["\<\
Its enough to have red and blue to create purple. The following function \
converts the light string to a numeric string for easier calculations.\
\>", "Text",
 CellChangeTimes->{{3.857940212948781*^9, 
  3.857940298715809*^9}},ExpressionUUID->"277b9749-43f5-4103-aa8b-\
14d63bfb0622"],

Cell[CellGroupData[{

Cell["Two folds", "Section",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857822002864828*^9, 
  3.8578220042208*^9}, {3.857939891042407*^9, 
  3.857939896778264*^9}},ExpressionUUID->"e6db79b1-d65b-473c-97d1-\
450280753167"],

Cell["\<\
Let\[CloseCurlyQuote]s create an algorithm to optimal bending positions to \
have maximum number of purple lights.\
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
  3.857940000976213*^9, 
  3.857940041945716*^9}},ExpressionUUID->"1cc31cf9-b77f-478d-b5d7-\
273715fe6ed8"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"twofolds", "[", "strip_", "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "f", ",", " ", "g", ",", "i", ",", "b1", ",", "b2", ",", " ", "m"}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", " ", "=", " ", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", "124"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"g", " ", "=", " ", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", "124"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"i", "=", "1"}], ",", 
        RowBox[{"i", "<", "125"}], ",", 
        RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", "\t", 
        RowBox[{
         RowBox[{"b1", "=", " ", 
          RowBox[{"strip", "[", 
           RowBox[{"[", 
            RowBox[{"1", ";;", 
             RowBox[{"2", "i"}]}], "]"}], "]"}]}], ";", "\[IndentingNewLine]",
          "\t", 
         RowBox[{"b2", " ", "=", " ", 
          RowBox[{"strip", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"251", "-", 
              RowBox[{"2", "i"}]}], ";;", "250"}], "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", "\t", 
         RowBox[{
          RowBox[{"f", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "=", 
          RowBox[{"Count", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"b1", "+", 
              RowBox[{"Reverse", "[", "b1", "]"}]}], "/.", 
             RowBox[{"Plus", "->", "List"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"\"\<B\>\"", ",", "\"\<R\>\""}], "}"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", "\t", 
         RowBox[{
          RowBox[{"g", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "=", 
          RowBox[{"Count", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"b2", "+", 
              RowBox[{"Reverse", "[", "b2", "]"}]}], "/.", 
             RowBox[{"Plus", "->", "List"}]}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"\"\<B\>\"", ",", "\"\<R\>\""}], "}"}]}], "]"}]}]}]}], 
       "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"m", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"i", "+", "j"}], "<=", "125"}], ",", 
           RowBox[{
            RowBox[{"f", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "+", 
            RowBox[{"g", "[", 
             RowBox[{"[", "j", "]"}], "]"}]}], ",", "0"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "124"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"j", ",", "124"}], "}"}]}], "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"Max", "[", "m", "]"}], "/", "2"}], ",", " ", 
        RowBox[{"Position", "[", 
         RowBox[{"m", ",", " ", 
          RowBox[{"Max", "[", "m", "]"}]}], "]"}]}], "}"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"AbsoluteTiming", "[", 
  RowBox[{"twofolds", "[", "strip", "]"}], "]"}]}], "Input",
 CellChangeTimes->{{3.8579400486874647`*^9, 3.857940140756016*^9}, 
   3.857981024395885*^9, {3.8579832722260847`*^9, 3.8579833193424263`*^9}, {
   3.857983358317327*^9, 3.8579835206434*^9}, {3.857984037402648*^9, 
   3.857984056439619*^9}, {3.857986966164225*^9, 3.857987009392666*^9}, {
   3.8579870424333677`*^9, 3.857987077070009*^9}, {3.857987171298353*^9, 
   3.857987189856935*^9}, {3.857987426961192*^9, 3.8579874341342077`*^9}, {
   3.857987473377351*^9, 3.857987474665372*^9}, {3.8579875507511463`*^9, 
   3.857987569111533*^9}, {3.857988189298892*^9, 3.857988189458218*^9}, {
   3.8579886610647297`*^9, 3.857988661464395*^9}, {3.857990387693008*^9, 
   3.857990388230351*^9}, {3.85799145220453*^9, 3.85799148392107*^9}},
 CellLabel->"In[6]:=",ExpressionUUID->"54915581-e981-4d10-9b75-e26875ad00a2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.035758`", ",", 
   RowBox[{"{", 
    RowBox[{"41", ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"61", ",", "61"}], "}"}], "}"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.8579874761220293`*^9, {3.857987573568179*^9, 3.8579876028178673`*^9}, 
   3.857987664305942*^9, 3.857988192840248*^9, 3.857988314252602*^9, 
   3.8579886631475163`*^9, 3.8579898778968067`*^9, 3.857990063644919*^9, 
   3.857990404169887*^9, {3.857991459398115*^9, 3.85799148585913*^9}},
 CellLabel->"Out[7]=",ExpressionUUID->"be5139fa-2e59-43b3-87df-9f433ba10180"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Sorting of the smaller strips", "Section",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857822002864828*^9, 
  3.8578220042208*^9}, {3.857939891042407*^9, 3.857939896778264*^9}, {
  3.857988237510417*^9, 
  3.8579882532123938`*^9}},ExpressionUUID->"6610146e-0bc7-4717-983f-\
491827d0b051"],

Cell["\<\
Let\[CloseCurlyQuote]s shuffle the strips many times and find the maximum \
possible number of purple lights in each iteration.\
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
  3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
  3.8579882851799517`*^9}, {3.857988388684326*^9, 
  3.857988428587297*^9}},ExpressionUUID->"0c9734d9-789a-47c7-9952-\
646d110ff977"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"purple", "[", 
    RowBox[{"strip_", ",", "n_"}], "]"}], ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "strips", ",", "maxpurple", ",", " ", "forder", ",", " ", "order", ",", 
       "folds", ",", "epoch", ",", " ", "i", ",", "j"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"strips", " ", "=", " ", 
       RowBox[{"Partition", "[", 
        RowBox[{"strip", ",", "25"}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"maxpurple", "=", "0"}], ";", " ", "\[IndentingNewLine]", 
      RowBox[{"For", " ", "[", 
       RowBox[{
        RowBox[{"i", "=", "1"}], ",", 
        RowBox[{"i", "<=", 
         RowBox[{"2", "^", "n"}]}], ",", 
        RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", "\t", 
        RowBox[{
         RowBox[{"order", "=", 
          RowBox[{"RandomSample", "[", 
           RowBox[{"Range", "[", "10", "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", "\t", 
         RowBox[{"epoch", " ", "=", " ", 
          RowBox[{"twofolds", "[", 
           RowBox[{"Flatten", "[", 
            RowBox[{"Part", "[", 
             RowBox[{"strips", ",", " ", "order"}], "]"}], "]"}], "]"}]}], 
         ";", "\[IndentingNewLine]", "\t", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"epoch", "[", 
             RowBox[{"[", "1", "]"}], "]"}], ">", "maxpurple"}], ",", 
           "\[IndentingNewLine]", "\t", 
           RowBox[{
            RowBox[{"maxpurple", "=", 
             RowBox[{"epoch", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], ";", " ", 
            RowBox[{"folds", "=", 
             RowBox[{"epoch", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}], ";", " ", 
            RowBox[{"forder", "=", "order"}]}]}], "]"}]}]}], 
       "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"maxpurple", ",", " ", "folds", ",", " ", "forder"}], " ", 
       "}"}]}]}], "\[IndentingNewLine]", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"AbsoluteTiming", "[", 
  RowBox[{"purple", "[", 
   RowBox[{"strip", ",", "2"}], "]"}], "]"}]}], "Input",
 CellChangeTimes->{{3.8579883713878927`*^9, 3.85798838577066*^9}, {
   3.857988435186391*^9, 3.857988451552038*^9}, {3.857988509914175*^9, 
   3.857988514154388*^9}, {3.857988637146434*^9, 3.857988638225471*^9}, {
   3.8579886815217237`*^9, 3.8579889291133966`*^9}, {3.857989177019422*^9, 
   3.857989208420504*^9}, {3.857989260513598*^9, 3.8579892678139687`*^9}, {
   3.857989394873741*^9, 3.857989519704858*^9}, {3.857989560656006*^9, 
   3.857989758528689*^9}, {3.857990017630381*^9, 3.857990027320793*^9}, 
   3.8579900815221653`*^9, {3.8579904131704407`*^9, 3.857990419688548*^9}, 
   3.857990572632338*^9, {3.857990606932152*^9, 3.857990632007207*^9}, {
   3.857991390474543*^9, 3.8579914171445436`*^9}, {3.85799147999244*^9, 
   3.857991533064673*^9}, {3.858007153818191*^9, 
   3.858007158398652*^9}},ExpressionUUID->"89b403d9-68d5-46eb-b5a4-\
8d4d4efff55e"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.115543`", ",", 
   RowBox[{"{", 
    RowBox[{"38", ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"8", ",", "111"}], "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "7", ",", "5", ",", "6", ",", "1", ",", "3", ",", "4", ",", "9", ",", 
       "8", ",", "10", ",", "2"}], "}"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.8579915151164722`*^9, 3.857991535126575*^9}},
 CellLabel->"Out[13]=",ExpressionUUID->"bdb6a846-7dd0-48e3-a561-65cdab24d36e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"AbsoluteTiming", "[", 
  RowBox[{"purple", "[", 
   RowBox[{"strip", ",", "10"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.857991109886948*^9, 3.857991120266766*^9}, {
  3.857991579090457*^9, 3.857991579384018*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"9881ea60-c218-4751-879b-5834ef99a764"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"28.918291`", ",", 
   RowBox[{"{", 
    RowBox[{"44", ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"29", ",", "91"}], "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "3", ",", "5", ",", "9", ",", "7", ",", "1", ",", "8", ",", "6", ",", 
       "4", ",", "10", ",", "2"}], "}"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.8579905883081837`*^9, 3.8579916096759853`*^9},
 CellLabel->"Out[14]=",ExpressionUUID->"fb45d57b-145d-450a-99f2-38825ececa28"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"AbsoluteTiming", "[", 
  RowBox[{"purple", "[", 
   RowBox[{"strip", ",", "15"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.857991601416812*^9, 3.857991601518875*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"429413df-5050-456f-be58-615a556b8d05"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1025.631918`", ",", 
   RowBox[{"{", 
    RowBox[{"48", ",", 
     RowBox[{"{", 
      RowBox[{"{", 
       RowBox[{"36", ",", "86"}], "}"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "5", ",", "8", ",", "1", ",", "2", ",", "6", ",", "9", ",", "4", ",", 
       "3", ",", "10", ",", "7"}], "}"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.857992651463462*^9},
 CellLabel->"Out[15]=",ExpressionUUID->"d39cebc5-7fc6-46cb-9394-ff9ffe58c1d7"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Solution", "Section",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857822002864828*^9, 
  3.8578220042208*^9}, {3.857939891042407*^9, 3.857939896778264*^9}, {
  3.857995636182588*^9, 3.857995636637074*^9}, {3.857995828309733*^9, 
  3.8579958292012873`*^9}},ExpressionUUID->"2670edab-5436-4b74-8a69-\
7d050c42a809"],

Cell["\<\
48 is the maximum number of purple lights formed in this search  with two \
folds at 36-37, and 164-165 positions for the following order of the light \
strips.\
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
  3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
  3.8579882851799517`*^9}, {3.857988388684326*^9, 3.857988428587297*^9}, {
  3.8579956524129*^9, 3.8579956871995068`*^9}, {3.8579957301513443`*^9, 
  3.857995754068578*^9}, {3.857995805325883*^9, 
  3.857995805964888*^9}},ExpressionUUID->"688f4694-1081-4134-8abd-\
948b5b9bd2c8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StringJoin", "[", 
  RowBox[{"Part", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "\"\<A\>\"", ",", "\"\<B\>\"", ",", "\"\<C\>\"", ",", "\"\<D\>\"", ",", 
      "\"\<E\>\"", ",", "\"\<F\>\"", ",", "\"\<G\>\"", ",", "\"\<H\>\"", ",", 
      "\"\<I\>\"", ",", "\"\<J\>\""}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
     "5", ",", "8", ",", "1", ",", "2", ",", "6", ",", "9", ",", "4", ",", 
      "3", ",", "10", ",", "7"}], "}"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.8579956407629642`*^9, 3.857995642313489*^9}, {
  3.8579957721509542`*^9, 3.85799579419585*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"119e21e9-10f5-46c5-a4a7-1a9cae852562"],

Cell[BoxData["\<\"EHABFIDCJG\"\>"], "Output",
 CellChangeTimes->{3.857995796219658*^9},
 CellLabel->"Out[16]=",ExpressionUUID->"367d7340-4751-448c-82b1-4a27b7bc3979"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Rainbow", "Chapter",
 CellChangeTimes->{{3.85793987803067*^9, 3.857939882575067*^9}, {
  3.857995842357136*^9, 
  3.857995845321059*^9}},ExpressionUUID->"5500547c-a44c-416e-bb55-\
48c9d83f1640"],

Cell[CellGroupData[{

Cell["Rainbow motifs", "Section",
 CellChangeTimes->{{3.85793987803067*^9, 3.857939882575067*^9}, {
  3.857995842357136*^9, 3.857995845321059*^9}, {3.857996253534038*^9, 
  3.857996255323938*^9}, {3.857996311240472*^9, 3.857996313935149*^9}, {
  3.857996454109103*^9, 
  3.8579964570612793`*^9}},ExpressionUUID->"cae19563-d244-46e0-9b81-\
6662c194b35c"],

Cell["\<\
Rainbow motifs are different sequences that can produce a rainbow when glued \
to each other.
{R,R,Y,Y,B,B} and {R,Y,Y,B,B,R}
{R,Y,Y,Y,B,B} and {R,R,Y,B,B,R}
{R,R,Y,B,B,B} and {R,Y,Y,Y,B,R}
{R,R,Y,Y,B,R} and {R,Y,Y,B,B,B}
{R,Y,Y,B,B,B} and {R,R,Y,Y,B,R}
{R,Y,Y,Y,B,R} and {R,R,Y,B,B,B}
{R,R,Y,B,B,R} and {R,Y,Y,Y,B,B}
{R,Y,Y,B,B,R} and {R,R,Y,Y,B,B}\
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
  3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
  3.8579882851799517`*^9}, {3.857988388684326*^9, 3.857988428587297*^9}, {
  3.8579956524129*^9, 3.8579956871995068`*^9}, {3.8579957301513443`*^9, 
  3.857995754068578*^9}, {3.857995805325883*^9, 3.857995805964888*^9}, {
  3.857995854394405*^9, 3.8579962716247797`*^9}, {3.8579964605402393`*^9, 
  3.8579964987443*^9}, {3.857997463469268*^9, 3.85799753343515*^9}, {
  3.8579975760578747`*^9, 
  3.85799773859059*^9}},ExpressionUUID->"5b80e028-85cb-419d-b945-\
599d18761e62"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{"{", 
   RowBox[{"\"\<RRYYBB\>\"", ",", " ", 
    RowBox[{"\"\<RRYYB\>\"", "~~", "_", "~~", "\"\<B\>\""}]}], 
   "}"}]}]], "Input",
 CellChangeTimes->{{3.858009178709125*^9, 3.8580091826857862`*^9}},
 CellLabel->
  "In[195]:=",ExpressionUUID->"4c02b624-4be9-48d1-800b-2a46e5ab04c8"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"RRYYBB\"\>", ",", 
   RowBox[{"\<\"RRYYB\"\>", "~~", "_", "~~", "\<\"B\"\>"}]}], "}"}]], "Output",\

 CellChangeTimes->{{3.858009179340886*^9, 3.8580091833240423`*^9}},
 CellLabel->
  "Out[195]=",ExpressionUUID->"6573b4e2-529f-4dca-b667-74142e089801"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"p1", "=", 
   RowBox[{"{", 
    RowBox[{"\"\<RRYYBB\>\"", ",", " ", 
     RowBox[{"\"\<RRYYB\>\"", "~~", "_", "~~", "\"\<B\>\""}], ",", " ", 
     RowBox[{"\"\<RRYY\>\"", "~~", "_", "~~", "\"\<BB\>\""}], ",", " ", 
     RowBox[{"\"\<RRY\>\"", "~~", "_", "~~", "\"\<YBB\>\""}], ",", " ", 
     RowBox[{"\"\<RR\>\"", "~~", "_", "~~", "\"\<YYBB\>\""}], ",", " ", 
     RowBox[{"\"\<R\>\"", "~~", "_", "~~", "\"\<RYYBB\>\""}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q1", "=", 
   RowBox[{"{", "\"\<RYYBBR\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p2", "=", 
   RowBox[{"{", "\"\<RYYYBB\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q2", "=", 
   RowBox[{"{", "\"\<RRYBBR\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p3", "=", 
   RowBox[{"{", "\"\<RRYBBB\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q3", "=", 
   RowBox[{"{", "\"\<RYYYBR\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p4", "=", 
   RowBox[{"{", "\"\<RRYYBR\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q4", "=", 
   RowBox[{"{", "\"\<RYYBBB\>\"", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p5", "=", 
   RowBox[{"{", "\"\<RYYBBB\>\"", "}"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q5", "=", 
   RowBox[{"{", "\"\<RRYYBR\>\"", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"p6", "=", 
   RowBox[{"{", "\"\<RYYYBR\>\"", "}"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q6", "=", 
   RowBox[{"{", "\"\<RRYBBB\>\"", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"p7", "=", 
   RowBox[{"{", "\"\<RRYBBR\>\"", "}"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q7", "=", 
   RowBox[{"{", "\"\<RYYYBB\>\"", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"p8", "=", 
   RowBox[{"{", "\"\<RYYBBR\>\"", "}"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q8", "=", 
   RowBox[{"{", "\"\<RRYYBB\>\"", "}"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.858009083545433*^9, 3.8580090953229713`*^9}, {
  3.858009129205694*^9, 3.858009170084928*^9}, {3.858009206306703*^9, 
  3.858009254927911*^9}, {3.858009324607139*^9, 3.85800936908997*^9}},
 CellLabel->
  "In[234]:=",ExpressionUUID->"a17a5623-2c89-4e35-ae57-85950dddacca"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StringCases", "[", 
  RowBox[{"initialstrip", ",", 
   RowBox[{"{", 
    RowBox[{
    "p1", ",", "p2", ",", "p3", ",", "p4", ",", "p5", ",", "p6", ",", "p7", 
     ",", "p8", ",", "q1", ",", "q2", ",", "q3", ",", "q4", ",", "q5", ",", 
     "q6", ",", "q7", ",", "q8"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.858007579467066*^9, 3.858007709030397*^9}, {
  3.858008053380571*^9, 3.858008056514703*^9}, {3.858008533593032*^9, 
  3.858008756005513*^9}, {3.858008787923671*^9, 3.858008975233511*^9}, {
  3.858009010145702*^9, 3.8580090769988737`*^9}, {3.8580091948855047`*^9, 
  3.858009198717314*^9}, {3.858009267105358*^9, 3.858009272165085*^9}, {
  3.858031117388153*^9, 3.858031156663597*^9}},
 CellLabel->
  "In[250]:=",ExpressionUUID->"d9cb6e37-6d18-420e-aee8-2df73f1d6a87"],

Cell[BoxData[
 RowBox[{"{", "\<\"RYYYBR\"\>", "}"}]], "Output",
 CellChangeTimes->{
  3.858007617029685*^9, {3.858007689307366*^9, 3.8580077110171423`*^9}, 
   3.858008057452207*^9, {3.8580085423444357`*^9, 3.85800858353141*^9}, {
   3.8580086338747807`*^9, 3.858008638167983*^9}, {3.858008925846464*^9, 
   3.858008948408032*^9}, 3.858009078005039*^9, 3.858009199613824*^9, 
   3.858009272651721*^9, 3.858009371935384*^9, {3.858031128677073*^9, 
   3.8580311695351133`*^9}},
 CellLabel->
  "Out[250]=",ExpressionUUID->"583a10b4-cf72-4392-898f-602a0cd71f56"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Realizable folds", "Section",
 CellChangeTimes->{{3.85793987803067*^9, 3.857939882575067*^9}, {
  3.857995842357136*^9, 3.857995845321059*^9}, {3.857996253534038*^9, 
  3.857996255323938*^9}, {3.857996311240472*^9, 
  3.857996313935149*^9}},ExpressionUUID->"15206e46-bee1-4d39-99d6-\
919a729b82d2"],

Cell["\<\
It seems that a string formed in any order of parable rainbow motifs is \
realizable. 
For example, the 2 pairs {{1,2},{3,4}} where 1(3) and 2(4) create rainbow \
when glued in parallel, in any order of 1, 2, 3, and 4 can be folded in a way \
to produce two rainbows. 
This can happen with a 180 degrees bend between 2nd and third element when \
the sequence belongs to the set \
{{1,3,4,2},{2,3,4,1},{1,4,3,2},{2,4,3,1},{3,1,2,4},{4,1,2,3},{4,2,1,3},{3,2,1,\
4}}, 
or with creating a loop with every two motifs when the sequence belongs to \
the set {{1,3,2,4},{2,3,1,4},{1,4,2,3},{2,4,1,3},{3,1,4,2},{4,2,3,1},{4,1,3,2}\
,{3,2,4,1}}, 
or with two bends when the sequence belongs to the set 
{{1,2,3,4},{1,2,4,3}, {2,1,3,4}, {2,1,4,3}, {4,3,2,1}, {3,4,2,1}, {3,4,1,2}, \
{4,3,1,2}}. 
More number of pairable motifs in a sequence can be folded in a combination \
of the previous example and use of the 3D space.\
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
  3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
  3.8579882851799517`*^9}, {3.857988388684326*^9, 3.857988428587297*^9}, {
  3.8579956524129*^9, 3.8579956871995068`*^9}, {3.8579957301513443`*^9, 
  3.857995754068578*^9}, {3.857995805325883*^9, 3.857995805964888*^9}, {
  3.857995854394405*^9, 3.8579962716247797`*^9}, {3.857996626956069*^9, 
  3.857996972486299*^9}, {3.8579970047881393`*^9, 3.85799702223472*^9}, {
  3.857997121528179*^9, 3.85799745845188*^9}, {3.85799780002186*^9, 
  3.857997804767763*^9}},ExpressionUUID->"d0e5830d-bbd7-4f50-8740-\
e2d0e65fd692"],

Cell["\<\
To create a motif any extra element of a sequence can be removed with looping \
bends for extra subset of elements to form a rainbow motif. \
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
   3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
   3.8579882851799517`*^9}, {3.857988388684326*^9, 3.857988428587297*^9}, {
   3.8579956524129*^9, 3.8579956871995068`*^9}, {3.8579957301513443`*^9, 
   3.857995754068578*^9}, {3.857995805325883*^9, 3.857995805964888*^9}, {
   3.857995854394405*^9, 3.857996357669138*^9}, 3.8579964318329372`*^9, {
   3.857996616964493*^9, 3.857996619798143*^9}, {3.857997461114214*^9, 
   3.857997461287396*^9}, {3.8579978212445097`*^9, 
   3.857997865050308*^9}},ExpressionUUID->"48a369c9-fb6e-4027-aba8-\
2f39740f3203"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Maximum pairs", "Section",
 CellChangeTimes->{{3.85793987803067*^9, 3.857939882575067*^9}, {
  3.857995842357136*^9, 3.857995845321059*^9}, {3.857996253534038*^9, 
  3.857996255323938*^9}, {3.857996311240472*^9, 3.857996313935149*^9}, {
  3.857997902398511*^9, 3.85799790949079*^9}, {3.857998005321844*^9, 
  3.857998007626561*^9}},ExpressionUUID->"203db026-cc14-4bc2-aa22-\
3137641bbae6"],

Cell["\<\
The idea is to create maximum number of pairable rainbow motifs in the 250 \
strip \
\>", "Text",
 CellChangeTimes->{{3.857939903649536*^9, 3.857939955256961*^9}, {
   3.857940000976213*^9, 3.857940041945716*^9}, {3.85798826426941*^9, 
   3.8579882851799517`*^9}, {3.857988388684326*^9, 3.857988428587297*^9}, {
   3.8579956524129*^9, 3.8579956871995068`*^9}, {3.8579957301513443`*^9, 
   3.857995754068578*^9}, {3.857995805325883*^9, 3.857995805964888*^9}, {
   3.857995854394405*^9, 3.857996357669138*^9}, 3.8579964318329372`*^9, {
   3.857996616964493*^9, 3.857996619798143*^9}, {3.857997461114214*^9, 
   3.857997461287396*^9}, {3.8579978212445097`*^9, 3.857997865050308*^9}, {
   3.857997916193694*^9, 
   3.857998003572192*^9}},ExpressionUUID->"15d5e5c0-3f0d-41e0-be82-\
89a1de54f4b6"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{808, 712},
WindowMargins->{{9, Automatic}, {0, Automatic}},
FrontEndVersion->"13.0 for Mac OS X x86 (64-bit) (February 4, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"227cf353-dca6-4a80-9671-2c834386da8f"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 311, 5, 35, "Text",ExpressionUUID->"6fc254a7-7b54-4e51-b77c-c57b30c534fb"],
Cell[1802, 40, 154, 2, 30, "Input",ExpressionUUID->"4fb2f2c9-45b8-4a56-a67c-3198339ea299"],
Cell[CellGroupData[{
Cell[1981, 46, 419, 6, 69, "Chapter",ExpressionUUID->"ea17e1b3-22b9-4c4d-b541-0ca18a3bff72"],
Cell[CellGroupData[{
Cell[2425, 56, 829, 16, 136, "Input",ExpressionUUID->"8887903c-b067-4782-ad73-48286f3b9a26"],
Cell[3257, 74, 5091, 69, 203, "Output",ExpressionUUID->"e2788b85-e2f7-4d53-bd8b-d47b3981c1e3"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[8397, 149, 150, 3, 69, "Chapter",ExpressionUUID->"e90b1f2a-d877-42ac-bc46-184f64c6fb52"],
Cell[8550, 154, 295, 6, 58, "Text",ExpressionUUID->"277b9749-43f5-4103-aa8b-14d63bfb0622"],
Cell[CellGroupData[{
Cell[8870, 164, 300, 5, 67, "Section",ExpressionUUID->"e6db79b1-d65b-473c-97d1-450280753167"],
Cell[9173, 171, 313, 7, 35, "Text",ExpressionUUID->"1cc31cf9-b77f-478d-b5d7-273715fe6ed8"],
Cell[CellGroupData[{
Cell[9511, 182, 4019, 97, 262, "Input",ExpressionUUID->"54915581-e981-4d10-9b75-e26875ad00a2"],
Cell[13533, 281, 602, 13, 34, "Output",ExpressionUUID->"be5139fa-2e59-43b3-87df-9f433ba10180"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[14184, 300, 371, 6, 67, "Section",ExpressionUUID->"6610146e-0bc7-4717-983f-491827d0b051"],
Cell[14558, 308, 422, 8, 35, "Text",ExpressionUUID->"0c9734d9-789a-47c7-9952-646d110ff977"],
Cell[CellGroupData[{
Cell[15005, 320, 3072, 68, 262, "Input",ExpressionUUID->"89b403d9-68d5-46eb-b5a4-8d4d4efff55e"],
Cell[18080, 390, 520, 13, 34, "Output",ExpressionUUID->"bdb6a846-7dd0-48e3-a561-65cdab24d36e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18637, 408, 323, 6, 30, "Input",ExpressionUUID->"9881ea60-c218-4751-879b-5834ef99a764"],
Cell[18963, 416, 521, 13, 34, "Output",ExpressionUUID->"fb45d57b-145d-450a-99f2-38825ececa28"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19521, 434, 274, 5, 30, "Input",ExpressionUUID->"429413df-5050-456f-be58-615a556b8d05"],
Cell[19798, 441, 497, 13, 34, "Output",ExpressionUUID->"d39cebc5-7fc6-46cb-9394-ff9ffe58c1d7"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[20344, 460, 396, 6, 67, "Section",ExpressionUUID->"2670edab-5436-4b74-8a69-7d050c42a809"],
Cell[20743, 468, 601, 11, 58, "Text",ExpressionUUID->"688f4694-1081-4134-8abd-948b5b9bd2c8"],
Cell[CellGroupData[{
Cell[21369, 483, 696, 15, 52, "Input",ExpressionUUID->"119e21e9-10f5-46c5-a4a7-1a9cae852562"],
Cell[22068, 500, 166, 2, 34, "Output",ExpressionUUID->"367d7340-4751-448c-82b1-4a27b7bc3979"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[22295, 509, 200, 4, 69, "Chapter",ExpressionUUID->"5500547c-a44c-416e-bb55-48c9d83f1640"],
Cell[CellGroupData[{
Cell[22520, 517, 353, 6, 67, "Section",ExpressionUUID->"cae19563-d244-46e0-9b81-6662c194b35c"],
Cell[22876, 525, 985, 21, 219, "Text",ExpressionUUID->"5b80e028-85cb-419d-b945-599d18761e62"],
Cell[CellGroupData[{
Cell[23886, 550, 326, 8, 30, "Input",ExpressionUUID->"4c02b624-4be9-48d1-800b-2a46e5ab04c8"],
Cell[24215, 560, 295, 7, 34, "Output",ExpressionUUID->"6573b4e2-529f-4dca-b667-74142e089801"]
}, Open  ]],
Cell[24525, 570, 2355, 64, 367, "Input",ExpressionUUID->"a17a5623-2c89-4e35-ae57-85950dddacca"],
Cell[CellGroupData[{
Cell[26905, 638, 810, 15, 30, "Input",ExpressionUUID->"d9cb6e37-6d18-420e-aee8-2df73f1d6a87"],
Cell[27718, 655, 558, 10, 34, "Output",ExpressionUUID->"583a10b4-cf72-4392-898f-602a0cd71f56"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[28325, 671, 304, 5, 67, "Section",ExpressionUUID->"15206e46-bee1-4d39-99d6-919a729b82d2"],
Cell[28632, 678, 1592, 28, 265, "Text",ExpressionUUID->"d0e5830d-bbd7-4f50-8740-e2d0e65fd692"],
Cell[30227, 708, 808, 13, 58, "Text",ExpressionUUID->"48a369c9-fb6e-4027-aba8-2f39740f3203"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31072, 726, 395, 6, 67, "Section",ExpressionUUID->"203db026-cc14-4bc2-aa22-3137641bbae6"],
Cell[31470, 734, 801, 14, 35, "Text",ExpressionUUID->"15d5e5c0-3f0d-41e0-be82-89a1de54f4b6"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature xv0cmO8NtH0r5A1uzCCCTkRY *)
