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
NotebookDataLength[    131474,       3197]
NotebookOptionsPosition[    127654,       3117]
NotebookOutlinePosition[    128145,       3136]
CellTagsIndexPosition[    128102,       3133]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Farmer Brown", "Title",
 CellChangeTimes->{{3.8575939585219183`*^9, 3.857593961875915*^9}, {
  3.857594142690468*^9, 
  3.857594142829933*^9}},ExpressionUUID->"9e6c7130-7a3c-4697-8b8f-\
51d38d27f2ca"],

Cell["\<\
This is an attempt to use show a toy Brownian motion model is useful for \
decision making for the optimal feeding strategy of feeding a cow in a pen. \
\>", "Text",
 CellChangeTimes->{{3.857593974626793*^9, 
  3.8575941061883707`*^9}},ExpressionUUID->"b514350a-70d7-4e22-9fa2-\
df0196a91e40"],

Cell[BoxData[
 RowBox[{"ClearAll", "[", "\"\<Global'*\>\"", "]"}]], "Input",
 CellLabel->"In[74]:=",ExpressionUUID->"5ee35322-ba25-4911-903d-3692f28470d3"],

Cell[CellGroupData[{

Cell["Model inputs", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 
  3.857656656049149*^9}},ExpressionUUID->"ca91794f-3efb-4b12-baf0-\
bf074be2fc1e"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"grid", " ", "=", " ", 
    RowBox[{"{", 
     RowBox[{"7", ",", "8"}], "}"}]}], ";"}], " ", 
  RowBox[{"(*", 
   RowBox[{"grid", " ", "size", " ", "in", " ", 
    RowBox[{"m", "^", "2"}]}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{"p", ",", "q"}], "}"}], " ", "=", " ", 
    RowBox[{"{", 
     RowBox[{"0.2", ",", " ", "0.1"}], "}"}]}], " ", ";"}], 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"cow", "'"}], "s", " ", "intelligence", " ", 
     RowBox[{"q", "/", "p"}]}], ",", " ", 
    RowBox[{"this", " ", "is", " ", "a", " ", "foolish", " ", "cow"}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"start", " ", "=", " ", 
    RowBox[{"{", 
     RowBox[{"3", ",", "4"}], "}"}]}], ";"}], " ", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"cow", "'"}], "s", " ", "starting", " ", "point"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"maxst", " ", "=", " ", "10"}], ";"}], "  ", 
  RowBox[{"(*", 
   RowBox[{
   "maximum", " ", "simulation", " ", "time", " ", "in", " ", "hours"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"starv", " ", "=", " ", "2"}], ";"}], " ", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"cow", "'"}], "s", " ", "survival", " ", "after", " ", "last", 
    " ", "meal", " ", "in", " ", "hours"}], 
   "*)"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.857656686961018*^9, 3.857657053163159*^9}, {
   3.85765708863243*^9, 3.857657122523527*^9}, {3.857668348224531*^9, 
   3.857668375257162*^9}, {3.8576771023748503`*^9, 3.8576771041926527`*^9}, {
   3.857677234915124*^9, 3.85767723567316*^9}, {3.857677337380363*^9, 
   3.857677345052793*^9}, 3.857677698981492*^9, 3.85768005693189*^9, {
   3.8576806564650106`*^9, 3.857680658899062*^9}, {3.857680986167647*^9, 
   3.857681007393092*^9}},
 CellLabel->"In[75]:=",ExpressionUUID->"f9cc4c8c-a302-4031-a046-0bf0c3a25ae5"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Cow simulator", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 
  3.857594139860447*^9}},ExpressionUUID->"4f2c615b-fbe6-48a7-83b5-\
60c837b27a9e"],

Cell["\<\
Assuming that a cow occupies 1m squares of land in a perfect rectangular pen \
with integer metric sides. The cow moves randomly with more biased toward \
available grass areas depending on its intelligence. The cow moves every \
20min to a nearby 1m squares spot on the end to eat the grass on the floor or \
rest if there is no grass left. The cow dies after starving for certain \
amount of time. \
\>", "Text",
 CellChangeTimes->{{3.857594149843485*^9, 3.857594478713682*^9}, {
  3.8575945108121443`*^9, 
  3.8575945866597977`*^9}},ExpressionUUID->"d8b9adb3-d270-4f55-9e17-\
08a450923a86"],

Cell[CellGroupData[{

Cell["Function", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
  3.85765774021367*^9, 
  3.857657742510275*^9}},ExpressionUUID->"1f65395d-1ff1-4715-b5fd-\
834c013231f5"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"simulator", "[", 
    RowBox[{
    "grid_", ",", " ", "prob_", ",", " ", "start_", ",", " ", "maxst_", ",", 
     " ", "starv_"}], "]"}], ":=", " ", "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "map", ",", "direc", ",", "step", ",", "path", ",", " ", "alive", ",", 
       " ", "hunger"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"map", "=", 
       RowBox[{"ArrayPad", "[", 
        RowBox[{
         RowBox[{"ConstantArray", "[", 
          RowBox[{
           RowBox[{"prob", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ",", "grid"}], "]"}], ",", "1"}], 
        "]"}]}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"the", " ", 
        RowBox[{"pen", "'"}], "s", " ", "floor", " ", "is", " ", "covered", 
        " ", "with", " ", "grass"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"direc", " ", "=", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", 
           RowBox[{"-", "1"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"-", "1"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", 
           RowBox[{"-", "1"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}]}], "}"}]}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"king", " ", "style"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"step", " ", "=", " ", "1"}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"number", " ", "of", " ", "simulated", " ", "steps"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"path", " ", "=", " ", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"maxst", "*", "3"}], ",", "2"}], "}"}]}], "]"}]}], ";", 
      " ", 
      RowBox[{"(*", 
       RowBox[{"path", " ", "of", " ", "the", " ", "cow"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"path", "[", 
        RowBox[{"[", "step", "]"}], "]"}], " ", "=", " ", "start"}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{
       "initial", " ", "start", " ", "point", " ", "at", " ", "time", " ", 
        "0"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"map", "[", 
        RowBox[{"[", 
         RowBox[{
          RowBox[{
           RowBox[{"start", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "+", "1"}], ",", " ", 
          RowBox[{
           RowBox[{"start", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "+", "1"}]}], "]"}], "]"}], " ", 
       "=", " ", 
       RowBox[{"prob", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{
       "cow", " ", "eats", " ", "the", " ", "grass", " ", "of", " ", "the", 
        " ", "initial", " ", "position"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"alive", " ", "=", "True"}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"binary", " ", "variable", " ", "for", " ", "the", " ", 
        RowBox[{"cow", "'"}], "s", " ", "status"}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"hunger", " ", "=", " ", "0"}], ";", " ", 
      RowBox[{"(*", 
       RowBox[{"hunger", " ", "time"}], "*)"}], "\[IndentingNewLine]", 
      RowBox[{"While", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"alive", "==", "True"}], " ", "&&", " ", 
         RowBox[{"step", "<", 
          RowBox[{"maxst", "*", "3"}]}]}], ",", " ", 
        RowBox[{"(*", 
         RowBox[{
         "cow", " ", "moves", " ", "until", " ", "dealth", " ", "or", " ", 
          "end", " ", "of", " ", "simulation"}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Block", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
            "prior", ",", " ", "move", ",", " ", "posteriori", ",", "local", 
             ",", "choices"}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"prior", " ", "=", " ", 
             RowBox[{
              RowBox[{"path", "[", 
               RowBox[{"[", "step", "]"}], "]"}], "+", "1"}]}], ";", " ", 
            RowBox[{"(*", 
             RowBox[{"position", " ", "before", " ", "moving"}], " ", "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"local", " ", "=", " ", 
             RowBox[{"map", "[", 
              RowBox[{"[", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{"prior", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], "-", "1"}], ";;", 
                 RowBox[{
                  RowBox[{"prior", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], "+", "1"}]}], ",", " ", 
                RowBox[{
                 RowBox[{
                  RowBox[{"prior", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "-", "1"}], ";;", 
                 RowBox[{
                  RowBox[{"prior", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], "+", "1"}]}]}], "]"}], 
              "]"}]}], ";", " ", 
            RowBox[{"(*", 
             RowBox[{"nearby", " ", "spots"}], "*)"}], "\[IndentingNewLine]", 
            
            RowBox[{"choices", " ", "=", " ", 
             RowBox[{"Delete", "[", 
              RowBox[{
               RowBox[{"Flatten", "[", "local", "]"}], ",", " ", 
               RowBox[{"{", "5", "}"}]}], "]"}]}], ";", " ", 
            RowBox[{"(*", 
             RowBox[{"cow", " ", "has", " ", "to", " ", "move"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"move", " ", "=", " ", 
             RowBox[{"RandomChoice", "[", 
              RowBox[{"choices", "->", "direc"}], "]"}]}], ";", " ", 
            RowBox[{"(*", 
             RowBox[{"weighted", " ", "random", " ", "move"}], "*)"}], " ", 
            "\[IndentingNewLine]", 
            RowBox[{"posteriori", " ", "=", " ", 
             RowBox[{"prior", "+", "move"}]}], ";", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"MemberQ", "[", 
               RowBox[{"path", ",", 
                RowBox[{"posteriori", "-", "1"}]}], "]"}], ",", " ", 
              RowBox[{"(*", 
               RowBox[{"did", " ", "she", " ", "eat", " ", 
                RowBox[{"anything", "?"}]}], "*)"}], " ", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"hunger", "++"}], "1"}], ",", " ", 
              RowBox[{"(*", 
               RowBox[{
               "stays", " ", "hungry", " ", "if", " ", "moves", " ", "back", 
                " ", "to", " ", "path"}], "*)"}], "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{
                RowBox[{"map", "[", 
                 RowBox[{"[", 
                  RowBox[{
                   RowBox[{"posteriori", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                   RowBox[{"posteriori", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "]"}], " ", "=", 
                " ", 
                RowBox[{"prob", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ";", " ", 
               RowBox[{"hunger", "=", "0"}]}]}], "]"}], ";", " ", 
            RowBox[{"(*", 
             RowBox[{
             "if", " ", "yes", " ", "update", " ", "the", " ", "map"}], 
             "*)"}], "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"path", "[", 
              RowBox[{"[", 
               RowBox[{"step", "+", "1"}], "]"}], "]"}], "=", 
             RowBox[{"posteriori", "-", "1"}]}]}]}], "\[IndentingNewLine]", 
          "]"}], ";", " ", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"hunger", ">", 
            RowBox[{"starv", "*", "3"}]}], ",", " ", 
           RowBox[{"(*", 
            RowBox[{
            "cow", " ", "dies", " ", "at", " ", "the", " ", "starving", " ", 
             "time"}], "*)"}], "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"alive", "=", "False"}], ";", 
            RowBox[{"(*", 
             RowBox[{"kill", " ", "the", " ", "cow"}], "*)"}], 
            "\[IndentingNewLine]", 
            RowBox[{"path", " ", "=", " ", 
             RowBox[{"Delete", "[", 
              RowBox[{"path", ",", 
               RowBox[{"Gather", "[", 
                RowBox[{"Range", "[", 
                 RowBox[{"step", ",", 
                  RowBox[{"maxst", "*", "3"}]}], "]"}], "]"}]}], "]"}]}], ";",
             " ", 
            RowBox[{"(*", 
             RowBox[{
             "remove", " ", "addional", " ", "path", " ", "elements"}], 
             "*)"}], "\[IndentingNewLine]", 
            RowBox[{"Break", "[", "]"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"step", "++"}], "1"}]}], 
          RowBox[{"(*", 
           RowBox[{
           "if", " ", "no", " ", "continue", " ", "the", " ", "simulator"}], 
           "*)"}], "\[IndentingNewLine]", "]"}], ";"}]}], 
       "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"path", ",", " ", "alive"}], "}"}]}]}], "\[IndentingNewLine]", 
    "]"}]}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"{", 
   RowBox[{"path", ",", " ", "alive"}], "}"}], " ", "=", " ", 
  RowBox[{"simulator", "[", 
   RowBox[{"grid", ",", " ", 
    RowBox[{"{", 
     RowBox[{"p", ",", "q"}], "}"}], ",", " ", "start", ",", "maxst", ",", 
    "starv"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.85759483266346*^9, 3.857594851134801*^9}, 
   3.8576291525733757`*^9, {3.857629519577117*^9, 3.857629525756419*^9}, 
   3.857630257382978*^9, {3.857630859027563*^9, 3.857631011763832*^9}, {
   3.857631081635277*^9, 3.85763108475531*^9}, {3.8576313212957706`*^9, 
   3.857631401915783*^9}, {3.857634030827726*^9, 3.8576340311260653`*^9}, {
   3.857634437219243*^9, 3.857634441972972*^9}, {3.857634728971027*^9, 
   3.8576347372924128`*^9}, {3.857635024253738*^9, 3.857635043861137*^9}, {
   3.857636205771703*^9, 3.85763631071308*^9}, {3.857636902975922*^9, 
   3.8576369049946823`*^9}, {3.857637029036364*^9, 3.857637045003983*^9}, {
   3.857637751081663*^9, 3.8576377856130323`*^9}, {3.857637862703329*^9, 
   3.8576380589805193`*^9}, {3.857638089734497*^9, 3.857638091017088*^9}, {
   3.857638121942827*^9, 3.8576381535878983`*^9}, {3.857638191402411*^9, 
   3.857638193527996*^9}, {3.85763823551481*^9, 3.857638241842372*^9}, {
   3.857638782480793*^9, 3.857638826328496*^9}, {3.857638957224071*^9, 
   3.857639012888151*^9}, {3.857639104702352*^9, 3.857639116002427*^9}, {
   3.857639147287925*^9, 3.857639190703452*^9}, {3.857639268772264*^9, 
   3.857639295730641*^9}, {3.857639372362937*^9, 3.857639375017001*^9}, 
   3.857639434805175*^9, {3.857639527593741*^9, 3.857639588193203*^9}, {
   3.857639634731244*^9, 3.8576396374530993`*^9}, {3.857639711007737*^9, 
   3.8576397157593517`*^9}, {3.85763983744145*^9, 3.857639869202506*^9}, {
   3.857640177945561*^9, 3.857640183398719*^9}, {3.857640257374379*^9, 
   3.857640279733012*^9}, {3.857640321067204*^9, 3.85764032838632*^9}, 
   3.857640367491559*^9, {3.8576404287976217`*^9, 3.857640434226037*^9}, {
   3.8576406277459717`*^9, 3.8576406325827*^9}, {3.857643336600547*^9, 
   3.857643371670546*^9}, 3.857643602838166*^9, {3.857643636988142*^9, 
   3.857643696258659*^9}, {3.857643819838213*^9, 3.857643950795927*^9}, {
   3.8576440561122227`*^9, 3.857644202574655*^9}, {3.857644242013151*^9, 
   3.857644482486422*^9}, {3.857644622515911*^9, 3.857644624510091*^9}, {
   3.857644690052208*^9, 3.8576447521998177`*^9}, {3.8576447880582237`*^9, 
   3.857644814757124*^9}, {3.857645220512495*^9, 3.857645253249208*^9}, {
   3.857657579618492*^9, 3.857657612941505*^9}, {3.857658062305503*^9, 
   3.8576581104152603`*^9}, {3.857667523658656*^9, 3.8576678902614603`*^9}, {
   3.857667945972116*^9, 3.857667970499304*^9}, 3.8576680307291813`*^9, 
   3.857668160193253*^9, 3.8576683921060667`*^9, {3.857668432219659*^9, 
   3.857668465603499*^9}, {3.857668698593979*^9, 3.85766879862866*^9}, {
   3.8576688398028917`*^9, 3.85766885776965*^9}, 3.8576708983046017`*^9, {
   3.857671659965826*^9, 3.857671660175538*^9}, {3.857671809678308*^9, 
   3.857671830144803*^9}, {3.857671892347602*^9, 3.8576719220975313`*^9}, {
   3.85767204392976*^9, 3.857672081977062*^9}, {3.857672288987854*^9, 
   3.8576724456296997`*^9}, {3.85767250323387*^9, 3.8576725493220053`*^9}, {
   3.857672714179603*^9, 3.8576728251837463`*^9}, {3.857673256713934*^9, 
   3.8576733685162973`*^9}, {3.857673481652012*^9, 3.857673482483282*^9}, {
   3.8576736304303703`*^9, 3.857673646065228*^9}, {3.8576736882291517`*^9, 
   3.857673691830534*^9}, {3.857673984676347*^9, 3.857673990805599*^9}, {
   3.8576740767340097`*^9, 3.857674107998638*^9}, {3.8576758012932568`*^9, 
   3.857675843954862*^9}, {3.8576762119555473`*^9, 3.85767623638206*^9}, {
   3.857676326491373*^9, 3.8576765986934557`*^9}, {3.8576766582514544`*^9, 
   3.857676662607092*^9}, {3.8576771339711113`*^9, 3.8576771678509283`*^9}, {
   3.857677215209614*^9, 3.8576772225166073`*^9}, 3.857677265434215*^9, {
   3.8576773022978983`*^9, 3.8576773028629313`*^9}, {3.857677370285632*^9, 
   3.857677380946063*^9}, {3.8576778948777637`*^9, 3.857677908319852*^9}, {
   3.857678055728517*^9, 3.857678067769479*^9}, {3.857678110652925*^9, 
   3.857678123920662*^9}, {3.857678433839787*^9, 3.857678462669014*^9}, {
   3.857678625723899*^9, 3.8576788045959873`*^9}, {3.857678854561878*^9, 
   3.857678950462884*^9}, {3.857678995015194*^9, 3.8576790068070383`*^9}, 
   3.8576790508070707`*^9, {3.857679422297595*^9, 3.857679436276965*^9}, 
   3.857679476295842*^9, {3.8576795100675297`*^9, 3.857679583681775*^9}, {
   3.8576796266191998`*^9, 3.8576798270729733`*^9}, {3.8576799218744373`*^9, 
   3.8576799620152884`*^9}, {3.857680004279271*^9, 3.857680046937676*^9}, {
   3.857680143479825*^9, 3.857680157673971*^9}, 3.8576802993356113`*^9, {
   3.8576804250961723`*^9, 3.857680445033677*^9}},
 CellLabel->"In[80]:=",ExpressionUUID->"a797c6d7-f34b-44f3-ab27-0d296c83e6df"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"3", ",", "4"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"2", ",", "4"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "4"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "4"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"6", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"4", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"2", ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3", ",", "2"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"2", ",", "3"}], "}"}]}], "}"}], ",", "True"}], "}"}]], "Output",\

 CellChangeTimes->{{3.857676338333108*^9, 3.857676359424102*^9}, {
   3.857676413048141*^9, 3.85767651075777*^9}, {3.857676547749487*^9, 
   3.857676565630273*^9}, 3.857676600979681*^9, 3.857676670738655*^9, 
   3.8576767136725817`*^9, 3.857677112721422*^9, 3.8576771741555967`*^9, {
   3.85767720974205*^9, 3.857677269563847*^9}, 3.8576773049903812`*^9, 
   3.8576773562085447`*^9, 3.8576773869919786`*^9, 3.857677499439486*^9, 
   3.8576779341767273`*^9, {3.8576781447875643`*^9, 3.857678166086232*^9}, 
   3.8576783564825897`*^9, 3.857678430191424*^9, 3.857678622758252*^9, {
   3.857678687117936*^9, 3.857678752952004*^9}, 3.8576788142082357`*^9, 
   3.857678851751479*^9, 3.857678952068228*^9, 3.857679012398005*^9, 
   3.85767905316603*^9, 3.857679845594043*^9, {3.8576799407558737`*^9, 
   3.8576799635532713`*^9}, {3.857680005604411*^9, 3.8576800733303833`*^9}, 
   3.857680158450268*^9, 3.857680300831094*^9, {3.8576804300151157`*^9, 
   3.857680446640046*^9}, 3.857680493393635*^9, 3.857680663907567*^9, 
   3.858002616287519*^9},
 CellLabel->"Out[81]=",ExpressionUUID->"ee5b6a3c-d94c-43da-8dff-4d1901b92447"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Visualization", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.85764507709614*^9, 
  3.857645087305513*^9}},ExpressionUUID->"dfe1791f-10e5-4a82-a78e-\
5614b885e3ce"],

Cell["\<\
Let\[CloseCurlyQuote]s see how the path look like. Visualization require the \
grid size and the path obtained from the cow\[CloseCurlyQuote]s simulator.\
\>", "Text",
 CellChangeTimes->{{3.857594149843485*^9, 3.857594478713682*^9}, {
  3.8575945108121443`*^9, 3.8575945866597977`*^9}, {3.8576450933413353`*^9, 
  3.857645113162552*^9}, {3.8576572449167223`*^9, 
  3.8576572720954742`*^9}},ExpressionUUID->"e076fb28-ed99-4ec0-97b6-\
30d0555e985c"],

Cell[CellGroupData[{

Cell["Animator", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
  3.857657751373844*^9, 
  3.85765775368864*^9}},ExpressionUUID->"2f9958d0-9d86-4a38-8628-\
06b6eb18bcfc"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"draw", "[", 
   RowBox[{"grid_", ",", "step_"}], "]"}], ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"pathsubset", ",", "map"}], "}"}], ",", "\[IndentingNewLine]", 
    "\t", 
    RowBox[{
     RowBox[{"pathsubset", " ", "=", " ", 
      RowBox[{"path", "[", 
       RowBox[{"[", 
        RowBox[{"1", ";;", "step"}], "]"}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"map", " ", "=", " ", 
      RowBox[{"ConstantArray", "[", 
       RowBox[{"1", ",", "grid"}], "]"}]}], ";", "\[IndentingNewLine]", "\t", 
     
     RowBox[{"map", " ", "=", " ", 
      RowBox[{"ReplacePart", "[", 
       RowBox[{"map", ",", 
        RowBox[{"Thread", "[", 
         RowBox[{"pathsubset", "->", "2"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"map", "=", 
      RowBox[{"ArrayPad", "[", 
       RowBox[{"map", ",", "1"}], "]"}]}], ";", "\[IndentingNewLine]", "\t", 
     RowBox[{"MatrixPlot", "[", 
      RowBox[{"map", ",", " ", 
       RowBox[{"Frame", "->", "False"}], ",", 
       RowBox[{"ColorRules", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"0", "->", "Black"}], ",", " ", 
          RowBox[{"1", "->", " ", "Green"}], ",", " ", 
          RowBox[{"2", "->", " ", "Orange"}]}], "}"}]}]}], "]"}]}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"draw", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"7", ",", "8"}], "}"}], ",", " ", "a"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"a", ",", 
     RowBox[{"Range", "[", 
      RowBox[{
       RowBox[{"Dimensions", "[", "path", "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.857655301612817*^9, 3.857655321016251*^9}, {
  3.8576554414285927`*^9, 3.85765544989732*^9}, {3.8576555362267036`*^9, 
  3.857655554359271*^9}, {3.8576556312416153`*^9, 3.857655868162176*^9}, {
  3.857655998255458*^9, 3.857656026546929*^9}, {3.857656068873871*^9, 
  3.8576560768323383`*^9}, {3.8576572831836233`*^9, 3.8576572837043743`*^9}},
 CellLabel->"In[82]:=",ExpressionUUID->"372c0b9d-395e-4dde-8a3f-a0d2fdea4c8d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 18, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}}}, 
    Typeset`size$$ = {360., {160., 165.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`a$$ = 1}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> $CellContext`draw[{7, 8}, $CellContext`a$$], 
      "Specifications" :> {{$CellContext`a$$, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
         11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 
         28, 29, 30}, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{404., {197., 202.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.857657288762937*^9, 3.8576736270509043`*^9, 3.85767365760781*^9, 
   3.857673701666872*^9, 3.857676625517565*^9, {3.857676689221369*^9, 
   3.8576767139192667`*^9}, 3.8576773564718*^9, 3.8576773919918327`*^9, 
   3.857677499885655*^9, 3.857677934213944*^9, 3.857678172128187*^9, 
   3.85768049371054*^9, 3.8576806670049057`*^9, 3.858002616323183*^9},
 CellLabel->"Out[83]=",ExpressionUUID->"70247dee-39cc-494b-a407-ce52a7247372"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Statistics", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.85764507709614*^9, 3.857645087305513*^9}, {3.85765741201514*^9, 
  3.857657413534422*^9}},ExpressionUUID->"5d57c312-4431-4f40-bbde-\
c2b0984f872b"],

Cell["Let\[CloseCurlyQuote]s check the statistical properties of a nominal \
cow.", "Text",
 CellChangeTimes->{{3.857594149843485*^9, 3.857594478713682*^9}, {
  3.8575945108121443`*^9, 3.8575945866597977`*^9}, {3.8576450933413353`*^9, 
  3.857645113162552*^9}, {3.8576572449167223`*^9, 3.8576572720954742`*^9}, {
  3.857657419292252*^9, 
  3.857657528563921*^9}},ExpressionUUID->"6f6bd917-9cee-46ba-9383-\
f5f4bda3fcd5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"nsims", " ", "=", " ", "10000"}], ";", 
  RowBox[{"(*", 
   RowBox[{"number", " ", "of", " ", "simulated", " ", "cows"}], 
   "*)"}]}]], "Input",
 CellChangeTimes->{{3.8576577768664083`*^9, 3.857657791850761*^9}, {
  3.857666789792614*^9, 3.857666790035492*^9}, {3.858002543307234*^9, 
  3.858002543468169*^9}},
 CellLabel->"In[84]:=",ExpressionUUID->"a024241a-423c-498d-a5a5-2c5145ef1b21"],

Cell[CellGroupData[{

Cell["Computation", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
  3.857657806098311*^9, 3.857657807271512*^9}, {3.857664884980742*^9, 
  3.8576648862300673`*^9}},ExpressionUUID->"e7f08e78-cafd-4552-a169-\
827ad3457f93"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"stat", "[", 
   RowBox[{
   "n_", ",", "grid_", ",", " ", "prob_", ",", " ", "start_", ",", " ", 
    "maxst_", ",", " ", "starv_"}], "]"}], ":=", "\[IndentingNewLine]", "\t", 
  
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"i", ",", "path", ",", " ", "alive", ",", "area"}], "}"}], ",", 
    "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{"outcome", " ", "=", " ", 
      RowBox[{"ConstantArray", "[", 
       RowBox[{"0", ",", 
        RowBox[{"{", 
         RowBox[{"n", ",", "3"}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"area", " ", "=", " ", 
      RowBox[{
       RowBox[{"grid", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "*", 
       RowBox[{"grid", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", "\t", 
     
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"i", "=", "1"}], ",", 
       RowBox[{"i", "<=", "n"}], ",", "\[IndentingNewLine]", "\t", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{"path", ",", " ", "alive"}], "}"}], " ", "=", " ", 
         RowBox[{"simulator", "[", 
          RowBox[{"grid", ",", " ", 
           RowBox[{"{", 
            RowBox[{"p", ",", "q"}], "}"}], ",", " ", "start", ",", "maxst", 
           ",", "starv"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"outcome", "[", 
          RowBox[{"[", "i", "]"}], "]"}], "=", 
         RowBox[{"{", 
          RowBox[{"alive", ",", 
           RowBox[{
            RowBox[{
             RowBox[{"Dimensions", "[", "path", "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], "/", "3"}], ",", 
           RowBox[{"100", "*", " ", 
            RowBox[{
             RowBox[{"CountDistinct", "[", "path", "]"}], "/", "area"}]}]}], 
          "}"}]}], ";", "\[IndentingNewLine]", "\t", 
        RowBox[{"i", "++"}]}]}], "]"}], ";", " ", "\[IndentingNewLine]", "\t",
      "outcome"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"outcome", " ", "=", " ", 
  RowBox[{"stat", "[", 
   RowBox[{"nsims", ",", "grid", ",", " ", 
    RowBox[{"{", 
     RowBox[{"p", ",", "q"}], "}"}], ",", " ", "start", ",", "maxst", ",", 
    "starv"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.857657826977427*^9, 3.857657850040928*^9}, {
   3.8576578828304873`*^9, 3.857657925395496*^9}, {3.857658167268243*^9, 
   3.857658210032551*^9}, {3.857658360023644*^9, 3.8576584077460527`*^9}, {
   3.857658438324772*^9, 3.857658481046109*^9}, 3.857658532242978*^9, {
   3.857658598752091*^9, 3.857658624040435*^9}, {3.857658661286109*^9, 
   3.857658731084992*^9}, {3.857658773328603*^9, 3.857658841254774*^9}, {
   3.857658928082122*^9, 3.857658939038196*^9}, {3.857658987243535*^9, 
   3.857659048492084*^9}, {3.8576591101627417`*^9, 3.8576591498002243`*^9}, {
   3.857659219872971*^9, 3.857659229052937*^9}, {3.857659260550664*^9, 
   3.8576593018599043`*^9}, 3.857659363556155*^9, 3.857659416302237*^9, {
   3.857659512890498*^9, 3.857659517590008*^9}, {3.8576596051558933`*^9, 
   3.85765962051311*^9}, {3.8576665917162533`*^9, 3.857666592411639*^9}, {
   3.857666786725676*^9, 3.857666786963778*^9}, 3.857680686717265*^9},
 CellLabel->"In[85]:=",ExpressionUUID->"dae6e4ec-be8d-4ac2-9289-6719e6fd3bb9"],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["275", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["14", "3"], ",", 
             FractionBox["25", "2"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["425", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["325", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["22", "3"], ",", 
             FractionBox["225", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["16", "3"], ",", 
             FractionBox["100", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["225", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["425", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["150", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["200", "7"]}], "}"}], ",", 
           TemplateBox[{"9976"},
            "OutputSizeLimit`Skeleton"], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["20", "3"], ",", 
             FractionBox["275", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["13", "3"], ",", 
             FractionBox["75", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", "8", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["26", "3"], ",", 
             FractionBox["375", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", "9", ",", 
             FractionBox["200", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", "8", ",", "25"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["375", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["225", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["19", "3"], ",", 
             FractionBox["100", "7"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"False", ",", 
             FractionBox["28", "3"], ",", 
             FractionBox["325", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["425", "14"]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"True", ",", "10", ",", 
             FractionBox["325", "14"]}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          PaneBox[
           TagBox[
            TooltipBox[
             StyleBox[
              StyleBox[
               DynamicBox[ToBoxes[
                 FEPrivate`FrontEndResource[
                 "FEStrings", "sizeBriefExplanation"], StandardForm],
                ImageSizeCache->{59., {2., 8.}}],
               StripOnInput->False,
               DynamicUpdating->True,
               LineSpacing->{1, 2},
               LineIndent->0,
               LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLText",
              StripOnInput->False],
             StyleBox[
              DynamicBox[
               ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
                StandardForm]], DynamicUpdating -> True, LineIndent -> 0, 
              LinebreakAdjustments -> {1., 100, 0, 0, 0}, 
              LineSpacing -> {1, 2}, StripOnInput -> False]],
            Annotation[#, 
             Style[
              Dynamic[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
              DynamicUpdating -> True, LineIndent -> 0, 
              LinebreakAdjustments -> {1., 100, 0, 0, 0}, 
              LineSpacing -> {1, 2}], "Tooltip"]& ],
           Alignment->Center,
           BaselinePosition->Baseline,
           ImageSize->{Automatic, {25, Full}}], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{51., {0., 8.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 86, 30612218666992356569, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{56., {0., 8.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 86, 30612218666992356569, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{42., {0., 8.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 86, 30612218666992356569, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{77., {0., 8.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Advanced"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
     GridBoxDividers->{"Columns" -> {{False}}, "Rows" -> {{False}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    BaseStyle->"OutputSizeLimit",
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  If[30612218666992356569 === $SessionID, 
   Out[86], Message[
     MessageName[Syntax, "noinfoker"]]; Missing["NotAvailable"]; 
   Null]]], "Output",
 CellChangeTimes->{3.857680687510441*^9, 3.858002620963373*^9},
 CellLabel->"Out[86]=",ExpressionUUID->"399e09cb-ce51-476c-badd-61177c98a685"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Histograms", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
  3.857664877291905*^9, 
  3.857664879438715*^9}},ExpressionUUID->"2b14c533-6d48-4bbb-a8fa-\
3c0b14d14061"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"showsth", "[", "outcome_", "]"}], " ", ":=", 
   "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "p1", ",", "p2", ",", "p3"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"s", " ", "=", " ", 
       RowBox[{
        RowBox[{"Count", "[", 
         RowBox[{
          RowBox[{"outcome", "[", 
           RowBox[{"[", 
            RowBox[{"All", ",", "1"}], "]"}], "]"}], ",", "True"}], "]"}], 
        "/", 
        RowBox[{
         RowBox[{"Dimensions", "[", "outcome", "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", 
       RowBox[{"{", 
        RowBox[{"\"\<Survival Time (h) Mean\>\"", ",", " ", 
         RowBox[{"Mean", "[", 
          RowBox[{"outcome", "[", 
           RowBox[{"[", 
            RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}], ",", " ", 
         "\"\<SD\>\"", ",", " ", 
         RowBox[{"StandardDeviation", "[", 
          RowBox[{"outcome", "[", 
           RowBox[{"[", 
            RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}], "}"}], "]"}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"p1", " ", "=", " ", 
       RowBox[{"PieChart", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", ",", " ", 
           RowBox[{"1", "-", "s"}]}], "}"}], ",", " ", 
         RowBox[{"ChartLegends", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<Alive\>\"", ",", " ", "\"\<Dead\>\""}], "}"}]}], ",", 
         " ", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<Survival\>\""}]}], "]"}]}], ";",
       "\[IndentingNewLine]", 
      RowBox[{"p2", " ", "=", " ", 
       RowBox[{"Histogram", "[", 
        RowBox[{
         RowBox[{"outcome", "[", 
          RowBox[{"[", 
           RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", " ", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<Survival Time (h)\>\""}]}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"p3", " ", "=", " ", 
       RowBox[{"Histogram", "[", 
        RowBox[{
         RowBox[{"outcome", "[", 
          RowBox[{"[", 
           RowBox[{"All", ",", "3"}], "]"}], "]"}], ",", " ", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<% of Grass Eaten\>\""}]}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"GraphicsColumn", "[", 
       RowBox[{"{", 
        RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"showsth", "[", "outcome", "]"}]}], "Input",
 CellChangeTimes->{{3.857659379562496*^9, 3.8576593814562407`*^9}, {
   3.8576595511076317`*^9, 3.857659552869753*^9}, {3.857659632393729*^9, 
   3.857659633115465*^9}, {3.8576649054553843`*^9, 3.8576649059885817`*^9}, 
   3.8576653870013123`*^9, {3.8576654225672503`*^9, 3.8576654756337976`*^9}, {
   3.857666452108531*^9, 3.857666496170373*^9}, {3.857666546562529*^9, 
   3.857666606602702*^9}, {3.857666797100222*^9, 3.85766679760815*^9}, {
   3.857667050052299*^9, 3.857667159213704*^9}, {3.857667210619399*^9, 
   3.857667327932014*^9}, 3.857677408320072*^9, {3.85800255164704*^9, 
   3.85800260087271*^9}},
 CellLabel->"In[87]:=",ExpressionUUID->"06d27b64-ea35-47f5-9bc1-7a934949fbd9"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"Survival Time (h) Mean\"\>", ",", 
   FractionBox["262753", "30000"], ",", "\<\"SD\"\>", ",", 
   FractionBox[
    SqrtBox[
     FractionBox["3038170991", "1111"]], "900"]}], "}"}]], "Print",
 CellChangeTimes->{{3.858002601845531*^9, 3.8580026210400667`*^9}},
 CellLabel->
  "During evaluation of \
In[87]:=",ExpressionUUID->"42e00ba1-2caf-4756-b167-7db0835db898"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     TemplateBox[{
       GraphicsBox[{{}, {}, 
         DynamicModuleBox[{
          DynamicChart`click$53722$54059 = False, 
           DynamicChart`click$53726$54059 = False}, {{
            Directive[
             RGBColor[0.5, 0.5, 1.], 
             EdgeForm[
              Directive[
               GrayLevel[0], 
               Opacity[0.5]]]], {{{{{{}, {{
                   Directive[
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                   TagBox[
                    GeometricTransformationBox[
                    TagBox[
                    TagBox[
                    TooltipBox[
                    TagBox[
                    TagBox[
                    DynamicBox[{
                    FEPrivate`If[
                    CurrentValue["MouseOver"], 
                    EdgeForm[{
                    GrayLevel[0.5], 
                    AbsoluteThickness[2.5], 
                    Opacity[0.66]}], {}, {}], 
                    
                    DiskBox[{0, 0}, 1., {-0.6258052565950871, 
                    3.141592653589793}]}], "DelayedMouseEffectStyle"], 
                    StatusArea[#, 
                    Rational[1499, 2500]]& , TagBoxNote -> "1499/2500"], 
                    StyleBox[
                    FractionBox["1499", "2500"], {}, StripOnInput -> False]], 
                    Annotation[#, 
                    Style[
                    Rational[1499, 2500], {}], "Tooltip"]& ], 
                    
                    EventHandlerTag[{
                    "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$53722$54059, 
                    FEPrivate`Not[DynamicChart`click$53722$54059]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                    Dynamic[
                    FEPrivate`If[
                    DynamicChart`click$53722$54059, {{{1., 0.}, {0., 1.}}, {
                    0.061564323566718086`, 0.19028881749533377`}}, {{1, 0}, {
                    0, 1}}, {{1, 0}, {0, 1}}], 
                    TrackedSymbols :> {DynamicChart`click$53722$54059}]], 
                    "DelayedClickEffect"]}, {
                   Directive[
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.4992, 0.5552, 0.8309304]], 
                   TagBox[
                    GeometricTransformationBox[
                    TagBox[
                    TagBox[
                    TooltipBox[
                    TagBox[
                    TagBox[
                    DynamicBox[{
                    FEPrivate`If[
                    CurrentValue["MouseOver"], 
                    EdgeForm[{
                    GrayLevel[0.5], 
                    AbsoluteThickness[2.5], 
                    Opacity[0.66]}], {}, {}], 
                    
                    DiskBox[{0, 0}, 
                    1., {-3.141592653589793, -0.6258052565950871}]}], 
                    "DelayedMouseEffectStyle"], StatusArea[#, 
                    Rational[1001, 2500]]& , TagBoxNote -> "1001/2500"], 
                    StyleBox[
                    FractionBox["1001", "2500"], {}, StripOnInput -> False]], 
                    Annotation[#, 
                    Style[
                    Rational[1001, 2500], {}], "Tooltip"]& ], 
                    
                    EventHandlerTag[{
                    "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$53726$54059, 
                    FEPrivate`Not[DynamicChart`click$53726$54059]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                    Dynamic[
                    FEPrivate`If[
                    DynamicChart`click$53726$54059, {{{1., 0.}, {0., 
                    1.}}, {-0.061564323566718065`, -0.19028881749533377`}}, {{
                    1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                    TrackedSymbols :> {DynamicChart`click$53726$54059}]], 
                    "DelayedClickEffect"]}}}}}, {}}, {{}}}}, {{{{
               TagBox[
                GeometricTransformationBox[
                 TagBox[
                  TagBox[
                   TooltipBox[
                    TagBox[{{}, {}}, StatusArea[#, 
                    Rational[1499, 2500]]& , TagBoxNote -> "1499/2500"], 
                    StyleBox[
                    FractionBox["1499", "2500"], {}, StripOnInput -> False]], 
                   Annotation[#, 
                    Style[
                    Rational[1499, 2500], {}], "Tooltip"]& ], 
                  
                  EventHandlerTag[{
                   "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$53722$54059, 
                    FEPrivate`Not[DynamicChart`click$53722$54059]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                 Dynamic[
                  FEPrivate`If[
                  DynamicChart`click$53722$54059, {{{1., 0.}, {0., 1.}}, {
                    0.061564323566718086`, 0.19028881749533377`}}, {{1, 0}, {
                   0, 1}}, {{1, 0}, {0, 1}}], 
                  TrackedSymbols :> {DynamicChart`click$53722$54059}]], 
                "DelayedClickEffect"], 
               TagBox[
                GeometricTransformationBox[
                 TagBox[
                  TagBox[
                   TooltipBox[
                    TagBox[{{}, {}}, StatusArea[#, 
                    Rational[1001, 2500]]& , TagBoxNote -> "1001/2500"], 
                    StyleBox[
                    FractionBox["1001", "2500"], {}, StripOnInput -> False]], 
                   Annotation[#, 
                    Style[
                    Rational[1001, 2500], {}], "Tooltip"]& ], 
                  
                  EventHandlerTag[{
                   "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$53726$54059, 
                    FEPrivate`Not[DynamicChart`click$53726$54059]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                 Dynamic[
                  FEPrivate`If[
                  DynamicChart`click$53726$54059, {{{1., 0.}, {0., 
                    1.}}, {-0.061564323566718065`, -0.19028881749533377`}}, {{
                   1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                  TrackedSymbols :> {DynamicChart`click$53726$54059}]], 
                "DelayedClickEffect"]}, {}}}, {}}, {}, {}}, 
          DynamicModuleValues :> {}], {{{}, {}}}, {{{{}, {}, {}, {}}}, {}}}, {
        DisplayFunction -> Identity, ContentSelectable -> False, 
         GridLinesStyle -> Directive[
           GrayLevel[0.5, 0.4]], PlotLabel -> 
         FormBox["\"Survival\"", TraditionalForm], 
         PlotRange -> {{-1., 1.}, {-1., 1.}}, PlotRangePadding -> 
         Scaled[0.09166666666666669]}], 
       FormBox[
        FormBox[
         TemplateBox[{"\"Alive\"", "\"Dead\""}, "SwatchLegend", 
          DisplayFunction -> (FormBox[
            StyleBox[
             StyleBox[
              PaneBox[
               TagBox[
                GridBox[{{
                   TagBox[
                    GridBox[{{
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.4992, 0.5552, 0.8309304]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.3}}, "Rows" -> {{0.5}}}], "Grid"]}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                 False, GridBoxItemSize -> {
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                 GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
                "Grid"], Alignment -> Left, AppearanceElements -> None, 
               ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
               "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
             FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
             False], TraditionalForm]& ), 
          InterpretationFunction :> (RowBox[{"SwatchLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    
                    TemplateBox[<|
                    "color" -> RGBColor[0.982864, 0.7431472, 0.3262672]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}], ",", 
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    TemplateBox[<|
                    "color" -> RGBColor[0.4992, 0.5552, 0.8309304]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                 RowBox[{#, ",", #2}], "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{"{", 
                    RowBox[{"None", ",", "None"}], "}"}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm], TraditionalForm]},
      "Legended",
      DisplayFunction->(FormBox[
        GridBox[{{
           TagBox[
            ItemBox[
             PaneBox[
              TagBox[#, "SkipImageSizeLevel"], 
              Alignment -> {Center, Baseline}, BaselinePosition -> Baseline], 
             DefaultBaseStyle -> "Labeled"], "SkipImageSizeLevel"], 
           ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
         GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
         AutoDelete -> False, GridBoxItemSize -> Automatic, 
         BaselinePosition -> {1, 1}], TraditionalForm]& ),
      Editable->True,
      InterpretationFunction->(FormBox[
        RowBox[{"Legended", "(", 
          RowBox[{#, ",", 
            RowBox[{"Placed", "[", 
              RowBox[{#2, ",", "After"}], "]"}]}], ")"}], 
        TraditionalForm]& )], {220.5, -197.59611333627066}, {
     Center, Center}, {420., 376.}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.42], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.42], Thickness[Small]}], 
         RectangleBox[{2.6, 0}, {2.8, 6.},
          RoundingRadius->0], RectangleBox[{3., 0}, {3.2, 24.},
          RoundingRadius->0], RectangleBox[{3.2, 0}, {3.4, 51.},
          RoundingRadius->0], RectangleBox[{3.6, 0}, {3.8, 73.},
          RoundingRadius->0], RectangleBox[{4., 0}, {4.2, 71.},
          RoundingRadius->0], RectangleBox[{4.2, 0}, {4.4, 139.},
          RoundingRadius->0], RectangleBox[{4.6, 0}, {4.8, 146.},
          RoundingRadius->0], RectangleBox[{5., 0}, {5.2, 198.},
          RoundingRadius->0], RectangleBox[{5.2, 0}, {5.4, 204.},
          RoundingRadius->0], RectangleBox[{5.6, 0}, {5.8, 204.},
          RoundingRadius->0], RectangleBox[{6., 0}, {6.2, 219.},
          RoundingRadius->0], RectangleBox[{6.2, 0}, {6.4, 256.},
          RoundingRadius->0], RectangleBox[{6.6, 0}, {6.8, 246.},
          RoundingRadius->0], RectangleBox[{7., 0}, {7.2, 235.},
          RoundingRadius->0], RectangleBox[{7.2, 0}, {7.4, 285.},
          RoundingRadius->0], RectangleBox[{7.6, 0}, {7.8, 251.},
          RoundingRadius->0], RectangleBox[{8., 0}, {8.2, 314.},
          RoundingRadius->0], RectangleBox[{8.2, 0}, {8.4, 281.},
          RoundingRadius->0], RectangleBox[{8.6, 0}, {8.8, 260.},
          RoundingRadius->0], RectangleBox[{9., 0}, {9.2, 282.},
          RoundingRadius->0], RectangleBox[{9.2, 0}, {9.4, 259.},
          RoundingRadius->0], RectangleBox[{10., 0}, {10.2, 5996.},
          
          RoundingRadius->
           0]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{2.448, 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{24.732986389111304`, 1.5}, {12.874412825298435`, 14.5}},
      
      PlotLabel->FormBox["\"Survival Time (h)\"", TraditionalForm],
      PlotRange->{{2.6, 10.2}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -502.7106067342253}, 
     ImageScaled[{0.5, 0.5}], {420, 195.84453345082667}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.5459999999999999], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.5459999999999999], Thickness[Small]}], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{4., 0}, {6., 7.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{89.51034297199102, 
               98.88469971610178}, {-16.36530572187894, -15.27164553689039}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 7]& ,
            TagBoxNote->"7"],
           StyleBox["7", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[7, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{6., 0}, {8., 44.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{98.38469971610178, 
               107.75905646021255`}, {-19.503223842532748`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 44]& ,
            TagBoxNote->"44"],
           StyleBox["44", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[44, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{8., 0}, {10., 112.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{107.25905646021255`, 
               116.63341320432332`}, {-25.270208496707255`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 112]& ,
            TagBoxNote->"112"],
           StyleBox["112", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[112, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{10., 0}, {12., 220.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{116.13341320432332`, 
               125.50776994843409`}, {-34.42953706510207, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 220]& ,
            TagBoxNote->"220"],
           StyleBox["220", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[220, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{12., 0}, {14., 320.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{125.00776994843409`, 
               134.38212669254486`}, {-42.91039685065277, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 320]& ,
            TagBoxNote->"320"],
           StyleBox["320", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[320, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{14., 0}, {16., 421.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{133.88212669254486`, 
               143.25648343665563`}, {-51.47606523405909, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 421]& ,
            TagBoxNote->"421"],
           StyleBox["421", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[421, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{16., 0}, {18., 1253.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{142.75648343665563`, 
               152.1308401807664}, {-122.03681864984134`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1253]& ,
            TagBoxNote->"1253"],
           StyleBox["1253", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1253, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{18., 0}, {20., 741.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{151.6308401807664, 
               161.00519692487717`}, {-78.61481654782148, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 741]& ,
            TagBoxNote->"741"],
           StyleBox["741", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[741, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{20., 0}, {22., 990.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{160.50519692487717`, 
               169.87955366898794`}, {-99.73215741384286, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 990]& ,
            TagBoxNote->"990"],
           StyleBox["990", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[990, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{22., 0}, {24., 1077.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{169.37955366898794`, 
               178.75391041309868`}, {-107.11050542727202`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1077]& ,
            TagBoxNote->"1077"],
           StyleBox["1077", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1077, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{24., 0}, {26., 1141.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{178.25391041309868`, 
               187.62826715720948`}, {-112.53825569002447`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1141]& ,
            TagBoxNote->"1141"],
           StyleBox["1141", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1141, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{26., 0}, {28., 1086.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{187.12826715720948`, 
               
               196.50262390132022`}, {-107.87378280797157`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1086]& ,
            TagBoxNote->"1086"],
           StyleBox["1086", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1086, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{28., 0}, {30., 914.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{196.00262390132022`, 
               205.37698064543102`}, {-93.2867039768243, -15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 914]& ,
            TagBoxNote->"914"],
           StyleBox["914", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[914, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{30., 0}, {32., 701.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{204.87698064543102`, 
               214.25133738954176`}, {-75.22247263360117, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 701]& ,
            TagBoxNote->"701"],
           StyleBox["701", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[701, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{32., 0}, {34., 735.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{213.75133738954176`, 
               223.12569413365256`}, {-78.10596496068842, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 735]& ,
            TagBoxNote->"735"],
           StyleBox["735", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[735, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{34., 0}, {36., 145.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{222.62569413365256`, 
               232.0000508777633}, {-28.06889222593901, -15.27164553689039}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 145]& ,
            TagBoxNote->"145"],
           StyleBox["145", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[145, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{36., 0}, {38., 59.}, "RoundingRadius" -> 0]},
              ImageSizeCache->{{231.5000508777633, 
               240.8744076218741}, {-20.775352810365348`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 59]& ,
            TagBoxNote->"59"],
           StyleBox["59", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[59, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{38., 0}, {40., 24.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{240.3744076218741, 
               249.74876436598484`}, {-17.807051885422595`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 24]& ,
            TagBoxNote->"24"],
           StyleBox["24", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[24, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{40., 0}, {42., 8.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{249.24876436598484`, 
               258.62312111009567`}, {-16.45011431973444, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 8]& ,
            TagBoxNote->"8"],
           StyleBox["8", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[8, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{42., 0}, {44., 2.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{258.12312111009567`, 
               267.4974778542064}, {-15.941262732601388`, \
-15.27164553689039}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 2]& ,
            TagBoxNote->"2"],
           StyleBox["2", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[2, {}], 
           "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{3.2, 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{24.732986389111304`, 1.5}, {12.874412825298435`, 14.5}},
      
      PlotLabel->FormBox["\"% of Grass Eaten\"", TraditionalForm],
      PlotRange->{{4., 44.}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -717.7473668575933}, 
     ImageScaled[{0.5, 0.5}], {420, 195.84453345082667}]}, {}},
  ImageSize->{
    UpTo[360], 
    UpTo[700]},
  PlotRange->{{0, 441.}, {-825.2657469192774, 0}},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.857666608506508*^9, 3.857667070846855*^9, {3.857667278194378*^9, 
   3.857667329303616*^9}, {3.8576736308321857`*^9, 3.857673658105763*^9}, 
   3.85767370246122*^9, 3.857676715026403*^9, 3.857677358027418*^9, {
   3.857677402887043*^9, 3.857677405986123*^9}, 3.857677501648931*^9, 
   3.8576779347742777`*^9, 3.8576804949023457`*^9, 3.857680692464711*^9, {
   3.858002602392233*^9, 3.858002621772008*^9}},
 CellLabel->"Out[88]=",ExpressionUUID->"01951dfc-8e9a-4cd3-bc9b-b2496757487e"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Test", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.85764507709614*^9, 3.857645087305513*^9}, {3.85765741201514*^9, 
  3.857657413534422*^9}, {3.857666634493909*^9, 
  3.857666634929295*^9}},ExpressionUUID->"479ea2af-162f-43d8-9825-\
1c926e6be974"],

Cell["Let\[CloseCurlyQuote]s check if the results make sense.", "Text",
 CellChangeTimes->{{3.857594149843485*^9, 3.857594478713682*^9}, {
  3.8575945108121443`*^9, 3.8575945866597977`*^9}, {3.8576450933413353`*^9, 
  3.857645113162552*^9}, {3.8576572449167223`*^9, 3.8576572720954742`*^9}, {
  3.857657419292252*^9, 3.857657528563921*^9}, {3.8576666414065943`*^9, 
  3.8576666495681067`*^9}},ExpressionUUID->"e4aa0dcb-d9fa-44bd-8996-\
c9c749605c89"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"grid", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{"11", ",", " ", "11"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"start", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{"6", ",", "6"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"maxst", " ", "=", " ", "48"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"starv", " ", "=", " ", "24"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"nsims", " ", "=", " ", "100"}], ";"}]}], "Input",
 CellChangeTimes->{{3.8576667113870363`*^9, 3.8576667710211887`*^9}},
 CellLabel->"In[89]:=",ExpressionUUID->"f6ea3f76-1063-4af3-a68c-f37f15b7a2ef"],

Cell[CellGroupData[{

Cell["Case I", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
  3.857657806098311*^9, 3.857657807271512*^9}, {3.857664884980742*^9, 
  3.8576648862300673`*^9}, {3.8576666690398083`*^9, 
  3.85766667183037*^9}},ExpressionUUID->"a20b9c55-7649-4978-b6c1-\
81bd21085131"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"p", ",", "q"}], "}"}], " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"case1", " ", "=", " ", 
   RowBox[{"stat", "[", 
    RowBox[{"nsims", ",", "grid", ",", " ", 
     RowBox[{"{", 
      RowBox[{"p", ",", "q"}], "}"}], ",", " ", "start", ",", "maxst", ",", 
     "starv"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"showsth", "[", "case1", "]"}]}], "Input",
 CellChangeTimes->{{3.857657826977427*^9, 3.857657850040928*^9}, {
   3.8576578828304873`*^9, 3.857657925395496*^9}, {3.857658167268243*^9, 
   3.857658210032551*^9}, {3.857658360023644*^9, 3.8576584077460527`*^9}, {
   3.857658438324772*^9, 3.857658481046109*^9}, 3.857658532242978*^9, {
   3.857658598752091*^9, 3.857658624040435*^9}, {3.857658661286109*^9, 
   3.857658731084992*^9}, {3.857658773328603*^9, 3.857658841254774*^9}, {
   3.857658928082122*^9, 3.857658939038196*^9}, {3.857658987243535*^9, 
   3.857659048492084*^9}, {3.8576591101627417`*^9, 3.8576591498002243`*^9}, {
   3.857659219872971*^9, 3.857659229052937*^9}, {3.857659260550664*^9, 
   3.8576593018599043`*^9}, 3.857659363556155*^9, 3.857659416302237*^9, {
   3.857659512890498*^9, 3.857659517590008*^9}, {3.8576596051558933`*^9, 
   3.85765962051311*^9}, {3.8576665917162533`*^9, 3.857666592411639*^9}, {
   3.857666682428376*^9, 3.857666698977038*^9}, {3.857666804908482*^9, 
   3.857666852730266*^9}},
 CellLabel->"In[94]:=",ExpressionUUID->"c3080c5a-1092-4784-9012-d27132209b33"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"Survival Time (h) Mean\"\>", ",", "48", ",", "\<\"SD\"\>", ",",
    "0"}], "}"}]], "Print",
 CellChangeTimes->{3.858002622216654*^9},
 CellLabel->
  "During evaluation of \
In[94]:=",ExpressionUUID->"985a71e1-de78-4693-860c-4369cb00bdb5"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     TemplateBox[{
       GraphicsBox[{{}, {}, 
         DynamicModuleBox[{DynamicChart`click$54677$55131 = False}, {{
            Directive[
             RGBColor[0.5, 0.5, 1.], 
             EdgeForm[
              Directive[
               GrayLevel[0], 
               Opacity[0.5]]]], {{{{{{}, {{
                   Directive[
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                   TagBox[
                    GeometricTransformationBox[
                    TagBox[
                    TagBox[
                    TooltipBox[
                    TagBox[
                    TagBox[
                    DynamicBox[{
                    FEPrivate`If[
                    CurrentValue["MouseOver"], 
                    EdgeForm[{
                    GrayLevel[0.5], 
                    AbsoluteThickness[2.5], 
                    Opacity[0.66]}], {}, {}], 
                    
                    DiskBox[{0, 0}, 1., {-3.141592653589793, 
                    3.141592653589793}]}], "DelayedMouseEffectStyle"], 
                    StatusArea[#, 1]& , TagBoxNote -> "1"], 
                    StyleBox["1", {}, StripOnInput -> False]], Annotation[#, 
                    Style[1, {}], "Tooltip"]& ], 
                    
                    EventHandlerTag[{
                    "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$54677$55131, 
                    FEPrivate`Not[DynamicChart`click$54677$55131]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                    Dynamic[
                    FEPrivate`If[
                    DynamicChart`click$54677$55131, {{{1., 0.}, {0., 1.}}, {
                    0.2, 0.}}, {{1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                    TrackedSymbols :> {DynamicChart`click$54677$55131}]], 
                    "DelayedClickEffect"]}, {}}}}}, {}}, {{}}}}, {{{{
               TagBox[
                GeometricTransformationBox[
                 TagBox[
                  TagBox[
                   TooltipBox[
                    TagBox[{{}, {}}, StatusArea[#, 1]& , TagBoxNote -> "1"], 
                    StyleBox["1", {}, StripOnInput -> False]], Annotation[#, 
                    Style[1, {}], "Tooltip"]& ], 
                  
                  EventHandlerTag[{
                   "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$54677$55131, 
                    FEPrivate`Not[DynamicChart`click$54677$55131]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                 Dynamic[
                  FEPrivate`If[
                  DynamicChart`click$54677$55131, {{{1., 0.}, {0., 1.}}, {0.2,
                     0.}}, {{1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                  TrackedSymbols :> {DynamicChart`click$54677$55131}]], 
                "DelayedClickEffect"], {}}, {}}}, {}}, {}, {}}, 
          DynamicModuleValues :> {}], {{{}, {}}}, {{{{}, {}, {}, {}}}, {}}}, {
        DisplayFunction -> Identity, ContentSelectable -> False, 
         GridLinesStyle -> Directive[
           GrayLevel[0.5, 0.4]], PlotLabel -> 
         FormBox["\"Survival\"", TraditionalForm], 
         PlotRange -> {{-1., 1.}, {-1., 1.}}, PlotRangePadding -> 
         Scaled[0.09166666666666669]}], 
       FormBox[
        FormBox[
         TemplateBox[{"\"Alive\"", "\"Dead\""}, "SwatchLegend", 
          DisplayFunction -> (FormBox[
            StyleBox[
             StyleBox[
              PaneBox[
               TagBox[
                GridBox[{{
                   TagBox[
                    GridBox[{{
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.4992, 0.5552, 0.8309304]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.3}}, "Rows" -> {{0.5}}}], "Grid"]}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                 False, GridBoxItemSize -> {
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                 GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
                "Grid"], Alignment -> Left, AppearanceElements -> None, 
               ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
               "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
             FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
             False], TraditionalForm]& ), 
          InterpretationFunction :> (RowBox[{"SwatchLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    
                    TemplateBox[<|
                    "color" -> RGBColor[0.982864, 0.7431472, 0.3262672]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}], ",", 
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    
                    TemplateBox[<|
                    "color" -> RGBColor[0.4992, 0.5552, 0.8309304]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                 RowBox[{#, ",", #2}], "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{"{", 
                    RowBox[{"None", ",", "None"}], "}"}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm], TraditionalForm]},
      "Legended",
      DisplayFunction->(FormBox[
        GridBox[{{
           TagBox[
            ItemBox[
             PaneBox[
              TagBox[#, "SkipImageSizeLevel"], 
              Alignment -> {Center, Baseline}, BaselinePosition -> Baseline], 
             DefaultBaseStyle -> "Labeled"], "SkipImageSizeLevel"], 
           ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
         GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
         AutoDelete -> False, GridBoxItemSize -> Automatic, 
         BaselinePosition -> {1, 1}], TraditionalForm]& ),
      Editable->True,
      InterpretationFunction->(FormBox[
        RowBox[{"Legended", "(", 
          RowBox[{#, ",", 
            RowBox[{"Placed", "[", 
              RowBox[{#2, ",", "After"}], "]"}]}], ")"}], 
        TraditionalForm]& )], {220.5, -197.65391256023588}, {
     Center, Center}, {420., 376.}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.6789999999999999], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.6789999999999999], Thickness[Small]}], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{0., 0}, {50., 100.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{86.1829379202522, 
               265.8208797033831}, {-122.98368038038149`, \
-15.230135455477779`}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 100]& ,
            TagBoxNote->"100"],
           StyleBox["100", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[100, {}], "Tooltip"]& ]}, {}, {}}, {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{-1., 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{19.728983186549236`, 1.5}, {12.812559944118505`, 14.5}},
      
      PlotLabel->FormBox["\"Survival Time (h)\"", TraditionalForm],
      PlotRange->{{0., 50.}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -503.5137451924147}, 
     ImageScaled[{0.5, 0.5}], {420, 197.10401502341418}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.63], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.63], Thickness[Small]}], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{30., 0}, {35., 3.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{86.51856772430632, 
               109.32690299618416`}, {-26.028060189393557`, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 3]& ,
            TagBoxNote->"3"],
           StyleBox["3", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[3, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{35., 0}, {40., 9.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{108.82690299618416`, 
               131.635238268062}, {-48.1352977244232, -14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 9]& ,
            TagBoxNote->"9"],
           StyleBox["9", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[9, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{40., 0}, {45., 16.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{131.135238268062, 
               153.94357353993985`}, {-73.92707484862456, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 16]& ,
            TagBoxNote->"16"],
           StyleBox["16", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[16, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{45., 0}, {50., 26.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{153.44357353993985`, 
               176.25190881181769`}, {-110.77247074034068`, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 26]& ,
            TagBoxNote->"26"],
           StyleBox["26", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[26, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{50., 0}, {55., 29.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{175.75190881181769`, 
               198.5602440836955}, {-121.82608950785556`, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 29]& ,
            TagBoxNote->"29"],
           StyleBox["29", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[29, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{55., 0}, {60., 10.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{198.0602440836955, 
               220.86857935557336`}, {-51.81983731359486, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 10]& ,
            TagBoxNote->"10"],
           StyleBox["10", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[10, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{60., 0}, {65., 6.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{220.36857935557336`, 
               243.17691462745117`}, {-37.08167895690838, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 6]& ,
            TagBoxNote->"6"],
           StyleBox["6", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[6, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{65., 0}, {70., 1.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{242.67691462745117`, 
               265.48524989932906`}, {-18.658981011050287`, \
-14.47444142187868}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1]& ,
            TagBoxNote->"1"],
           StyleBox["1", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1, {}], 
           "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{29.2, 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{19.728983186549236`, 1.5}, {12.738336486702565`, 
       16.679198229457512`}},
      PlotLabel->FormBox["\"% of Grass Eaten\"", TraditionalForm],
      PlotRange->{{30., 70.}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -720.9780727223215}, 
     ImageScaled[{0.5, 0.5}], {420, 199.20898979545575}]}, {}},
  ImageSize->{
    UpTo[360], 
    UpTo[700]},
  PlotRange->{{0, 441.}, {-830.2364801802852, 0}},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.8576673519121447`*^9, {3.857673632049559*^9, 3.857673658969613*^9}, 
   3.857673704184647*^9, 3.857676715879636*^9, 3.857677358894977*^9, 
   3.8576774186953907`*^9, 3.857677505065312*^9, {3.857677621635276*^9, 
   3.857677626501773*^9}, 3.8576779354314127`*^9, 3.857680496246704*^9, 
   3.857680708799181*^9, 3.858002622891427*^9},
 CellLabel->"Out[96]=",ExpressionUUID->"e94e6bd0-5a67-437a-a875-7d51865bcbde"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Case II", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
   3.857657806098311*^9, 3.857657807271512*^9}, {3.857664884980742*^9, 
   3.8576648862300673`*^9}, {3.8576666690398083`*^9, 3.85766667183037*^9}, 
   3.8576667059516563`*^9, {3.857667357202159*^9, 
   3.8576673585269203`*^9}},ExpressionUUID->"96d33a12-f275-4f48-b724-\
22dbfe79454a"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"p", ",", "q"}], "}"}], " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"case2", " ", "=", " ", 
   RowBox[{"stat", "[", 
    RowBox[{"nsims", ",", "grid", ",", " ", 
     RowBox[{"{", 
      RowBox[{"p", ",", "q"}], "}"}], ",", " ", "start", ",", "maxst", ",", 
     "starv"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"showsth", "[", "case2", "]"}]}], "Input",
 CellChangeTimes->{{3.857666820262958*^9, 3.857666862383873*^9}, 
   3.857667364807809*^9},
 CellLabel->"In[97]:=",ExpressionUUID->"29f43886-adc0-4df1-a185-77a3e907b475"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"Survival Time (h) Mean\"\>", ",", "48", ",", "\<\"SD\"\>", ",",
    "0"}], "}"}]], "Print",
 CellChangeTimes->{3.858002623294915*^9},
 CellLabel->
  "During evaluation of \
In[97]:=",ExpressionUUID->"aecbb9fa-7b0e-4d00-8a63-05fef6d0c6cd"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     TemplateBox[{
       GraphicsBox[{{}, {}, 
         DynamicModuleBox[{DynamicChart`click$55364$55628 = False}, {{
            Directive[
             RGBColor[0.5, 0.5, 1.], 
             EdgeForm[
              Directive[
               GrayLevel[0], 
               Opacity[0.5]]]], {{{{{{}, {{
                   Directive[
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                   TagBox[
                    GeometricTransformationBox[
                    TagBox[
                    TagBox[
                    TooltipBox[
                    TagBox[
                    TagBox[
                    DynamicBox[{
                    FEPrivate`If[
                    CurrentValue["MouseOver"], 
                    EdgeForm[{
                    GrayLevel[0.5], 
                    AbsoluteThickness[2.5], 
                    Opacity[0.66]}], {}, {}], 
                    
                    DiskBox[{0, 0}, 1., {-3.141592653589793, 
                    3.141592653589793}]}], "DelayedMouseEffectStyle"], 
                    StatusArea[#, 1]& , TagBoxNote -> "1"], 
                    StyleBox["1", {}, StripOnInput -> False]], Annotation[#, 
                    Style[1, {}], "Tooltip"]& ], 
                    
                    EventHandlerTag[{
                    "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$55364$55628, 
                    FEPrivate`Not[DynamicChart`click$55364$55628]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                    Dynamic[
                    FEPrivate`If[
                    DynamicChart`click$55364$55628, {{{1., 0.}, {0., 1.}}, {
                    0.2, 0.}}, {{1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                    TrackedSymbols :> {DynamicChart`click$55364$55628}]], 
                    "DelayedClickEffect"]}, {}}}}}, {}}, {{}}}}, {{{{
               TagBox[
                GeometricTransformationBox[
                 TagBox[
                  TagBox[
                   TooltipBox[
                    TagBox[{{}, {}}, StatusArea[#, 1]& , TagBoxNote -> "1"], 
                    StyleBox["1", {}, StripOnInput -> False]], Annotation[#, 
                    Style[1, {}], "Tooltip"]& ], 
                  
                  EventHandlerTag[{
                   "MouseClicked" :> 
                    FEPrivate`Set[DynamicChart`click$55364$55628, 
                    FEPrivate`Not[DynamicChart`click$55364$55628]], 
                    PassEventsDown -> True, Method -> "Preemptive", 
                    PassEventsUp -> True}]], 
                 Dynamic[
                  FEPrivate`If[
                  DynamicChart`click$55364$55628, {{{1., 0.}, {0., 1.}}, {0.2,
                     0.}}, {{1, 0}, {0, 1}}, {{1, 0}, {0, 1}}], 
                  TrackedSymbols :> {DynamicChart`click$55364$55628}]], 
                "DelayedClickEffect"], {}}, {}}}, {}}, {}, {}}, 
          DynamicModuleValues :> {}], {{{}, {}}}, {{{{}, {}, {}, {}}}, {}}}, {
        DisplayFunction -> Identity, ContentSelectable -> False, 
         GridLinesStyle -> Directive[
           GrayLevel[0.5, 0.4]], PlotLabel -> 
         FormBox["\"Survival\"", TraditionalForm], 
         PlotRange -> {{-1., 1.}, {-1., 1.}}, PlotRangePadding -> 
         Scaled[0.09166666666666669]}], 
       FormBox[
        FormBox[
         TemplateBox[{"\"Alive\"", "\"Dead\""}, "SwatchLegend", 
          DisplayFunction -> (FormBox[
            StyleBox[
             StyleBox[
              PaneBox[
               TagBox[
                GridBox[{{
                   TagBox[
                    GridBox[{{
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.982864, 0.7431472, 0.3262672]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                    GraphicsBox[{
                    Directive[
                    PointSize[0.5], 
                    AbsoluteThickness[1.6], 
                    EdgeForm[
                    Directive[
                    GrayLevel[0], 
                    Opacity[0.5]]], 
                    RGBColor[0.4992, 0.5552, 0.8309304]], 
                    RectangleBox[{0, 0}, {10, 10}, "RoundingRadius" -> 0]}, 
                    AspectRatio -> Full, ImageSize -> {10, 10}, 
                    PlotRangePadding -> None, ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.3}}, "Rows" -> {{0.5}}}], "Grid"]}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                 False, GridBoxItemSize -> {
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                 GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
                "Grid"], Alignment -> Left, AppearanceElements -> None, 
               ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
               "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
             FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
             False], TraditionalForm]& ), 
          InterpretationFunction :> (RowBox[{"SwatchLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    
                    TemplateBox[<|
                    "color" -> RGBColor[0.982864, 0.7431472, 0.3262672]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}], ",", 
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"EdgeForm", "[", 
                    RowBox[{"Directive", "[", 
                    RowBox[{
                    
                    TemplateBox[<|"color" -> GrayLevel[0]|>, 
                    "GrayLevelColorSwatchTemplate"], ",", 
                    RowBox[{"Opacity", "[", "0.5`", "]"}]}], "]"}], "]"}], 
                    ",", 
                    
                    TemplateBox[<|
                    "color" -> RGBColor[0.4992, 0.5552, 0.8309304]|>, 
                    "RGBColorSwatchTemplate"]}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                 RowBox[{#, ",", #2}], "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{"{", 
                    RowBox[{"None", ",", "None"}], "}"}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm], TraditionalForm]},
      "Legended",
      DisplayFunction->(FormBox[
        GridBox[{{
           TagBox[
            ItemBox[
             PaneBox[
              TagBox[#, "SkipImageSizeLevel"], 
              Alignment -> {Center, Baseline}, BaselinePosition -> Baseline], 
             DefaultBaseStyle -> "Labeled"], "SkipImageSizeLevel"], 
           ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
         GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
         AutoDelete -> False, GridBoxItemSize -> Automatic, 
         BaselinePosition -> {1, 1}], TraditionalForm]& ),
      Editable->True,
      InterpretationFunction->(FormBox[
        RowBox[{"Legended", "(", 
          RowBox[{#, ",", 
            RowBox[{"Placed", "[", 
              RowBox[{#2, ",", "After"}], "]"}]}], ")"}], 
        TraditionalForm]& )], {220.5, -197.638405869186}, {
     Center, Center}, {420., 376.}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.6789999999999999], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.6789999999999999], Thickness[Small]}], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{0., 0}, {50., 100.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{85.89326169354612, 
               266.11055593008916`}, {-122.96503144769011`, \
-14.864616374726864`}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 100]& ,
            TagBoxNote->"100"],
           StyleBox["100", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[100, {}], "Tooltip"]& ]}, {}, {}}, {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{-1., 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{19.728983186549236`, 1.5000000000000568`}, {
       12.812559944118505`, 14.5}},
      PlotLabel->FormBox["\"Survival Time (h)\"", TraditionalForm],
      PlotRange->{{0., 50.}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -503.7018908556315}, 
     ImageScaled[{0.5, 0.5}], {420, 197.5733464961471}], InsetBox[
     GraphicsBox[{
       {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
        EdgeForm[{Opacity[0.623], Thickness[Small]}], {}, 
        {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], 
         EdgeForm[{Opacity[0.623], Thickness[Small]}], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{35., 0}, {40., 1.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{85.88142706027662, 
               106.35264522728573`}, {-19.3354086251843, -14.84968320495011}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 1]& ,
            TagBoxNote->"1"],
           StyleBox["1", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[1, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{40., 0}, {45., 2.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{105.85264522728573`, 
               126.32386339429485`}, {-23.32113404541849, \
-14.84968320495011}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 2]& ,
            TagBoxNote->"2"],
           StyleBox["2", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[2, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{45., 0}, {50., 9.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{125.82386339429485`, 
               146.29508156130396`}, {-51.2212119870577, -14.84968320495011}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 9]& ,
            TagBoxNote->"9"],
           StyleBox["9", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[9, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{50., 0}, {55., 8.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{145.79508156130396`, 
               166.2662997283131}, {-47.23548656682357, -14.84968320495011}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 8]& ,
            TagBoxNote->"8"],
           StyleBox["8", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[8, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{55., 0}, {60., 21.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{165.7662997283131, 
               186.2375178953222}, {-99.04991702986788, -14.84968320495011}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 21]& ,
            TagBoxNote->"21"],
           StyleBox["21", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[21, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{60., 0}, {65., 25.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{185.7375178953222, 
               206.20873606233135`}, {-114.99281871080461`, \
-14.84968320495011}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 25]& ,
            TagBoxNote->"25"],
           StyleBox["25", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[25, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{65., 0}, {70., 27.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{205.70873606233135`, 
               226.17995422934047`}, {-122.96426955127293`, \
-14.84968320495011}}],
             "DelayedMouseEffectStyle"],
            StatusArea[#, 27]& ,
            TagBoxNote->"27"],
           StyleBox["27", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[27, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{70., 0}, {75., 5.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{225.67995422934047`, 
               246.15117239634958`}, {-35.278310306121, -14.84968320495011}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 5]& ,
            TagBoxNote->"5"],
           StyleBox["5", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[5, {}], "Tooltip"]& ], 
         TagBox[
          TooltipBox[
           TagBox[
            TagBox[
             DynamicBox[{
               FEPrivate`If[
                CurrentValue["MouseOver"], 
                EdgeForm[{
                  GrayLevel[0.5], 
                  AbsoluteThickness[1.5], 
                  Opacity[0.66]}], {}, {}], 
               RectangleBox[{75., 0}, {80., 2.}, "RoundingRadius" -> 0]},
              
              ImageSizeCache->{{245.65117239634958`, 
               266.1223905633587}, {-23.32113404541849, -14.84968320495011}}],
             
             "DelayedMouseEffectStyle"],
            StatusArea[#, 2]& ,
            TagBoxNote->"2"],
           StyleBox["2", {}, StripOnInput -> False]],
          Annotation[#, 
           Style[2, {}], 
           "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->{True, True},
      AxesLabel->{None, None},
      AxesOrigin->{34.1, 0},
      DisplayFunction->Identity,
      FrameLabel->{{None, None}, {None, None}},
      FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
      GridLines->{None, None},
      GridLinesStyle->Directive[
        GrayLevel[0.5, 0.4]],
      ImagePadding->{{19.728983186549236`, 1.5000000000000568`}, {
       12.738336486702565`, 14.500000000000014`}},
      PlotLabel->FormBox["\"% of Grass Eaten\"", TraditionalForm],
      PlotRange->{{35., 80.}, {All, All}},
      PlotRangePadding->{{
         Scaled[0.02], 
         Scaled[0.02]}, {
         Scaled[0.02], 
         Scaled[0.05]}},
      Ticks->{Automatic, Automatic}], {220.5, -720.5149373614427}, 
     ImageScaled[{0.5, 0.5}], {420, 197.49912303873117}]}, {}},
  ImageSize->{
    UpTo[360], 
    UpTo[700]},
  PlotRange->{{0, 441.}, {-828.9029047499941, 0}},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.857666855362962*^9, {3.857667360540339*^9, 3.857667369367609*^9}, {
   3.857673633034172*^9, 3.857673659883411*^9}, 3.857673705826997*^9, 
   3.8576767166735907`*^9, 3.857677359737831*^9, 3.857677423491892*^9, 
   3.857677505911263*^9, 3.8576779362762947`*^9, 3.857680497501338*^9, 
   3.8576807138712177`*^9, 3.8580026237514057`*^9},
 CellLabel->"Out[99]=",ExpressionUUID->"e844ad1e-9f69-49a1-8519-19240a548439"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Discussion", "Subsection",
 CellChangeTimes->{{3.8576571755050173`*^9, 3.857657200580881*^9}, {
   3.857657806098311*^9, 3.857657807271512*^9}, {3.857664884980742*^9, 
   3.8576648862300673`*^9}, {3.8576666690398083`*^9, 3.85766667183037*^9}, 
   3.8576667059516563`*^9, {3.857667357202159*^9, 3.8576673585269203`*^9}, {
   3.8576809318673353`*^9, 
   3.857680933027987*^9}},ExpressionUUID->"a2854dc9-f25d-4ff7-a1d3-\
661733f5ad3f"],

Cell["\<\
The results show that in case II case are eating more grass, which make sense \
because of the different intelligence/affinity property. Fortunately, none of \
the cows are dead! It could be different if the simulation takes longer time. \
\>", "Text",
 CellChangeTimes->{{3.857680746810663*^9, 3.857680866222192*^9}, {
  3.857680902022656*^9, 
  3.8576809649336863`*^9}},ExpressionUUID->"84590590-4b87-4418-a76f-\
6989dd3c273f"]
}, Open  ]]
}, Open  ]],

Cell["Adjourn", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857677449879182*^9, 
  3.857677450870325*^9}},ExpressionUUID->"de64a5c0-4b94-4a9f-87cb-\
35bdd45b4d12"]
}, Open  ]]
},
WindowSize->{980, 812},
WindowMargins->{{49, Automatic}, {Automatic, 0}},
PrintingCopies->1,
PrintingPageRange->{1, Automatic},
TaggingRules-><|"TryRealOnly" -> False|>,
FrontEndVersion->"13.0 for Mac OS X x86 (64-bit) (February 4, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"c871f9bd-3124-44fa-98d5-783200dbf45c"
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
Cell[CellGroupData[{
Cell[1510, 35, 206, 4, 98, "Title",ExpressionUUID->"9e6c7130-7a3c-4697-8b8f-51d38d27f2ca"],
Cell[1719, 41, 303, 6, 58, "Text",ExpressionUUID->"b514350a-70d7-4e22-9fa2-df0196a91e40"],
Cell[2025, 49, 155, 2, 30, "Input",ExpressionUUID->"5ee35322-ba25-4911-903d-3692f28470d3"],
Cell[CellGroupData[{
Cell[2205, 55, 210, 4, 69, "Chapter",ExpressionUUID->"ca91794f-3efb-4b12-baf0-bf074be2fc1e"],
Cell[2418, 61, 1996, 54, 136, "Input",ExpressionUUID->"f9cc4c8c-a302-4031-a046-0bf0c3a25ae5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4451, 120, 160, 3, 69, "Chapter",ExpressionUUID->"4f2c615b-fbe6-48a7-83b5-60c837b27a9e"],
Cell[4614, 125, 603, 11, 81, "Text",ExpressionUUID->"d8b9adb3-d270-4f55-9e17-08a450923a86"],
Cell[CellGroupData[{
Cell[5242, 140, 206, 4, 54, "Subsection",ExpressionUUID->"1f65395d-1ff1-4715-b5fd-834c013231f5"],
Cell[CellGroupData[{
Cell[5473, 148, 14460, 306, 703, "Input",ExpressionUUID->"a797c6d7-f34b-44f3-ab27-0d296c83e6df"],
Cell[19936, 456, 3117, 81, 77, "Output",ExpressionUUID->"ee5b6a3c-d94c-43da-8dff-4d1901b92447"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[23114, 544, 208, 4, 69, "Chapter",ExpressionUUID->"dfe1791f-10e5-4a82-a78e-5614b885e3ce"],
Cell[23325, 550, 457, 8, 35, "Text",ExpressionUUID->"e076fb28-ed99-4ec0-97b6-30d0555e985c"],
Cell[CellGroupData[{
Cell[23807, 562, 206, 4, 54, "Subsection",ExpressionUUID->"2f9958d0-9d86-4a38-8628-06b6eb18bcfc"],
Cell[CellGroupData[{
Cell[24038, 570, 2200, 55, 157, "Input",ExpressionUUID->"372c0b9d-395e-4dde-8a3f-a0d2fdea4c8d"],
Cell[26241, 627, 2475, 47, 418, "Output",ExpressionUUID->"70247dee-39cc-494b-a407-ce52a7247372"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[28777, 681, 250, 4, 69, "Chapter",ExpressionUUID->"5d57c312-4431-4f40-bbde-c2b0984f872b"],
Cell[29030, 687, 420, 7, 35, "Text",ExpressionUUID->"6f6bd917-9cee-46ba-9383-f5f4bda3fcd5"],
Cell[29453, 696, 425, 9, 30, "Input",ExpressionUUID->"a024241a-423c-498d-a5a5-2c5145ef1b21"],
Cell[CellGroupData[{
Cell[29903, 709, 258, 4, 54, "Subsection",ExpressionUUID->"e7f08e78-cafd-4552-a169-827ad3457f93"],
Cell[CellGroupData[{
Cell[30186, 717, 3298, 73, 241, "Input",ExpressionUUID->"dae6e4ec-be8d-4ac2-9289-6719e6fd3bb9"],
Cell[33487, 792, 11858, 304, 214, "Output",ExpressionUUID->"399e09cb-ce51-476c-badd-61177c98a685"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[45394, 1102, 209, 4, 54, "Subsection",ExpressionUUID->"2b14c533-6d48-4bbb-a8fa-3c0b14d14061"],
Cell[CellGroupData[{
Cell[45628, 1110, 3300, 78, 241, "Input",ExpressionUUID->"06d27b64-ea35-47f5-9bc1-7a934949fbd9"],
Cell[48931, 1190, 408, 10, 54, "Print",ExpressionUUID->"42e00ba1-2caf-4756-b167-7db0835db898"],
Cell[49342, 1202, 33049, 809, 681, "Output",ExpressionUUID->"01951dfc-8e9a-4cd3-bc9b-b2496757487e"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[82452, 2018, 293, 5, 69, "Chapter",ExpressionUUID->"479ea2af-162f-43d8-9825-1c926e6be974"],
Cell[82748, 2025, 450, 6, 35, "Text",ExpressionUUID->"e4aa0dcb-d9fa-44bd-8996-c9c749605c89"],
Cell[83201, 2033, 668, 16, 115, "Input",ExpressionUUID->"f6ea3f76-1063-4af3-a68c-f37f15b7a2ef"],
Cell[CellGroupData[{
Cell[83894, 2053, 303, 5, 54, "Subsection",ExpressionUUID->"a20b9c55-7649-4978-b6c1-81bd21085131"],
Cell[CellGroupData[{
Cell[84222, 2062, 1567, 29, 73, "Input",ExpressionUUID->"c3080c5a-1092-4784-9012-d27132209b33"],
Cell[85792, 2093, 282, 7, 24, "Print",ExpressionUUID->"985a71e1-de78-4693-860c-4369cb00bdb5"],
Cell[86077, 2102, 19039, 458, 685, "Output",ExpressionUUID->"e94e6bd0-5a67-437a-a875-7d51865bcbde"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[105165, 2566, 383, 6, 54, "Subsection",ExpressionUUID->"96d33a12-f275-4f48-b724-22dbfe79454a"],
Cell[CellGroupData[{
Cell[105573, 2576, 680, 17, 73, "Input",ExpressionUUID->"29f43886-adc0-4df1-a185-77a3e907b475"],
Cell[106256, 2595, 282, 7, 24, "Print",ExpressionUUID->"aecbb9fa-7b0e-4d00-8a63-05fef6d0c6cd"],
Cell[106541, 2604, 19890, 479, 684, "Output",ExpressionUUID->"e844ad1e-9f69-49a1-8519-19240a548439"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[126480, 3089, 438, 7, 54, "Subsection",ExpressionUUID->"a2854dc9-f25d-4ff7-a1d3-661733f5ad3f"],
Cell[126921, 3098, 439, 8, 58, "Text",ExpressionUUID->"84590590-4b87-4418-a76f-6989dd3c273f"]
}, Open  ]]
}, Open  ]],
Cell[127387, 3110, 251, 4, 69, "Chapter",ExpressionUUID->"de64a5c0-4b94-4a9f-87cb-35bdd45b4d12"]
}, Open  ]]
}
]
*)

(* NotebookSignature bvTvFZ8Xs6sSCBgmu9vbsUsm *)
