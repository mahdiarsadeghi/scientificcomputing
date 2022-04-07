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
NotebookDataLength[     55529,       1341]
NotebookOptionsPosition[     52899,       1288]
NotebookOutlinePosition[     53391,       1307]
CellTagsIndexPosition[     53348,       1304]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Kinetics", "Title",
 CellChangeTimes->{{3.8575939585219183`*^9, 3.857593961875915*^9}, {
  3.857594142690468*^9, 3.857594142829933*^9}, {3.8576812609334383`*^9, 
  3.857681261789578*^9}, {3.857714777455654*^9, 3.857714779114793*^9}, {
  3.857727554799453*^9, 3.857727557199903*^9}, {3.8577527740192757`*^9, 
  3.857752775581338*^9}},ExpressionUUID->"9e6c7130-7a3c-4697-8b8f-\
51d38d27f2ca"],

Cell[BoxData[
 RowBox[{"ClearAll", "[", "\"\<Global'*\>\"", "]"}]], "Input",
 CellLabel->"In[23]:=",ExpressionUUID->"5ee35322-ba25-4911-903d-3692f28470d3"],

Cell[CellGroupData[{

Cell["A : simple reaction", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857681605468582*^9, 
  3.857681609357381*^9}, {3.8576840351059647`*^9, 3.8576840367948008`*^9}, {
  3.857715021036426*^9, 3.857715027116848*^9}, {3.857728347342945*^9, 
  3.8577283490787687`*^9}, {3.8577528680600967`*^9, 3.857752871518135*^9}, {
  3.8577736592591953`*^9, 
  3.857773687842943*^9}},ExpressionUUID->"79d1a278-bcc8-4cb5-ae49-\
0bd17385ad43"],

Cell[TextData[{
 "The simple reaction (A + B ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Rule]", 
    SubscriptBox["\[Lambda]", "1"]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "3c911076-e763-46cc-a953-349575fd2288"],
 " C) can be written in the form of ordinary differential equations.\n\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "A", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "f584e200-1433-403d-85ba-f32c884af1b4"],
 " = -",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "1"], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "2139dbfa-957c-4177-8057-23b87c516038"],
 "[A][B]\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "B", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "1b960a22-a085-4e48-b7d3-c7d1c1e67d1b"],
 " = -",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "1"], TraditionalForm]],ExpressionUUID->
  "51c50de4-8923-4b06-82b0-db36df953572"],
 "[A][B]\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "C", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "6fc6b17f-d12f-413a-a556-55ab0f486fd2"],
 " = +",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "1"], TraditionalForm]],ExpressionUUID->
  "2693b90a-1e22-4e78-bde9-82abc832ce43"],
 "[A][B]\n\nLet\[CloseCurlyQuote]s solve the equations and determine ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    RowBox[{"[", "C", "]"}], "10"], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "b4ac4209-6774-4bc2-b2e5-d911f639f4d7"],
 "."
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
  3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
  3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
  3.857753679095352*^9, 3.8577537258076572`*^9}, {3.857772118281022*^9, 
  3.85777213278846*^9}, {3.857772501912696*^9, 
  3.857772523201829*^9}},ExpressionUUID->"bc9f346c-c3e4-46ca-ba21-\
372f533cb063"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"eqn1", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"A", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Lambda]", "1"]}], " ", 
       RowBox[{"A", "[", "t", "]"}], " ", 
       RowBox[{"B", "[", "t", "]"}]}]}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"B", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Lambda]", "1"]}], " ", 
       RowBox[{"A", "[", "t", "]"}], " ", 
       RowBox[{"B", "[", "t", "]"}]}]}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"par1", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     SubscriptBox["\[Lambda]", "1"], " ", "->", " ", 
     RowBox[{"1.6", "\[Times]", 
      SuperscriptBox["10", "4"]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"inc1", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"A", "[", "0", "]"}], "==", 
      RowBox[{"7.8", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"B", "[", "0", "]"}], "==", 
      RowBox[{"3.4", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol1", " ", "=", " ", 
   RowBox[{"NDSolve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"eqn1", ",", "inc1"}], "}"}], "/.", "par1"}], ",", 
     RowBox[{"{", 
      RowBox[{"A", ",", "B"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "10"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"A", "[", "t", "]"}], "/.", "sol1"}], ",", " ", 
     RowBox[{
      RowBox[{"B", "[", "t", "]"}], "/.", "sol1"}]}], "}"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", "0", ",", "10"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.857753377370802*^9, 3.8577534943357*^9}, {
   3.857753531868575*^9, 3.857753664689084*^9}, {3.857753734590556*^9, 
   3.8577538637587442`*^9}, {3.8577539662106524`*^9, 3.857753973054192*^9}, 
   3.857771845826412*^9, {3.85777194706649*^9, 3.857771998034552*^9}, {
   3.857772545342754*^9, 3.8577725552344418`*^9}, {3.857772732367193*^9, 
   3.857772744894803*^9}},
 CellLabel->"In[24]:=",ExpressionUUID->"00097735-d8eb-46d7-b9ea-2c1a6534a5b4"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwV0Hs0lAkYBnAM1rpFqnXJzPC1KSQ22XL0fu82tCKtclfZTC6JlFmzRey2
SmMSIXJLE7o5FunIYZMiG8plo+0bMyOzNGG2m7VTBrGzfzznOb+/nnMeK/aR
3ZEaampqPqr832U/sbWdIjLBbQEGC/dIoWOQuSOIGUNaTHhpy0KlsPio9RST
mUTWxqT5fKVy2YMshhaTT2bTdRi9wVKI28I9/JFRTLp9F99HC5TC4NzB/PeM
KnJXz7Uwrq8UPhOP2rxhNJNhG9vcYzykUP5YkPA3o5tcaK+yyV8vhdo6vjjO
QUR6htyVH1WXQjT5tPg1Z4xM3fTr8lt1IxAvWzvWUDtJ2nHJD+P7R0DX6rTN
yKb3pMa9P8zOG45AttET2/L902R6abbSu+MFsMX+92k9H8iMmNwQ/x9fQMLv
p9lHbGbJiSIJ38/+BdQf1fcz3f6JpBW+IXMnh6H8RKzcMUgNnTybXl2tHIY0
wfyuf1+rY779WbcDEcOgNijFlmQa3nfB04w1w7A6Meq4v60W8qaq9tVPSOCl
ojBQ7542doYplwTXScBLdig1L0EH3Vs1HRx+kMDOlzl2dLouvpYktxi4SkD+
kH2yq0YP25wDC8K1JeBg/NyS9b0Bfr3s9qSiXwy6pCJcMm2ITZecH+ZdFsO3
b0I/WgcYYbCTiyDpkBiE7RHqofbGmBSybXf3JjHcyegIYyqMkTo2s7tRTwxR
WlxpX99S5AZFpDlIRHCAc+KOfokJ+m13DNSoF8H6aLu+HeHLMIs3xu/giaB/
qb0ed/NyZFmYc132iuBubVqpPW0Fzr8crrnqLIIT6ra+PcMrMJWlnjSqKwJd
SbJnfMMXyPadujE3OgSy61b5ghRTtI8z6GpoHYL8NWaazQFmSCu9ohtWNAQ5
JVGd4UxzvGV97kEKdwhC8/f16Y+bY/m74ihL/yGYcb+mFLRaYOpHndhuxyEY
k2093s5bicFepyKuGA1BxRYni95wS9wK7+0uvxVCTTrXOHodHVua7GIr+4XA
CzjgTVPQ0SWg4suZeiFslJRX8XoZSBuX/5WZJ4SitaU1vd5MNPOfbZzgCuHn
B1lF3s1MdH+kfexSkBB8LAKuPV5lhc8X9n4qcBXCN/Gde4z5Vsh5ZdhhxRSC
YCV7VY/CCqWsZFdzTSGsenjj4s491mislWGUIacgZ1277UCrNbb0zvRrDFAQ
Na35tNuWQAPZ50VqTRSw6/9h8s8T2G+hYbrtCgVxaX7zXrkEGlpb+gwLKOD6
NVD6Fwisvrn9XKLKGQpuds5FAkMCn66pvExB7WblXGEZgSZLOCK1MgqUbYvP
r1cTyB+oo7cWq/YH9LM6OglMTx9k4gUKSioPHzzTTWBHl0eBMI+CysQ+lucT
AnfySkwSVG5ckTP7pI9AQYFsXUUuBZJQk4ODfxLYNSAUauZQYDNmxhodI7Cp
Wq7dc44Cx4Zk+lUZgWW+z0wjVXZNFysjxwn0eJvhvJBJwQ6bsluTcgJdNvjw
HVXmxDLpU1MEbrhverOAT0GK2y/K29MENmo56axXOd1g9FmigsA7p3Q4XRkU
FNVVZs7MEHjW4x17jkdBxUnN6N9mVf8Uz03mq1y9K3JryjyBh1ltyQ4qN1g/
soQFAlN7YHnXGQpap1crFxcJNG3hNIer/B+dokk3
       "]]},
     Annotation[#, "Charting`Private`Tag$41444#1"]& ], 
    TagBox[
     {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwVjXk41HkcgKeYDnSozVXMjJ9FjqhHol2f30eHCrUpOlRkKrTJMWvk2lFy
JKtmd6WiIcSSx7Q8X/fRGHJO05aUZ9mSI3I8mzSOKNv+8T7v8/71crgBB84s
ZDAYe7/yv0UC7qKNpxNhNN6mPChWBg3tbOfD7LP0WQvfmNxoGcw31l5ms8Po
4s0OmV1RMhBJklhMdgK9aemJQYdwGfjZ8c9PsW7To22Ke5wAGbTP+ia/Z+XT
KGkfGDwig8VdvUZjrAo66LS9oMxMBpmtGUEjrBb6Q2rf0lMdbSB+kNDlt+Fv
Wufjeo0X69rAh356e5TXR0/OJ6fwQlrBf2B9HxG/ow+EVR3u7WwBFU6M0Wub
9/T8klfpllYtcG1lm0nmyQl6UeNRj/sZzcDtcn2oJJuk1bieelVKzRD0KIYb
YPSJlkkUgoqAJigKVDuoteczrVSjOWI13AiZEeeGLQ8z8ASr0Oa4RyNEZ8y5
fBxdgAZD+/s7Xz8CRnsPVocrYcRc9U8uPo/AMNg71NWEiSo8oSF/qAH6FTcP
qdYswqvOFolSfgM4Dvz4829BSzBO1aHJ/3M97OsXmurpqeDz3Zv6zRPrYbie
e7G5UBUF00M3Oqh62KD+Qne75zI8V3YXvpRKQYVWeHVPLEe/5pzxLa5S2DXm
PqXvthLF43n5zNE66JSeXuBupo7/2resyLlSByVXGjzYCnUsEJirR22oA28m
v0cuX4Vv7ZiBAU8kcIoXUaKWuhqzOCJNzTAJWPiYyp29vsE16UpRaYYSeLLK
TJVvuwaZiW/uf0l/CFXi6DQzJQ0cLHqfVMZ4CBELTPbL/tHAEVNBpfhoLah0
h+/2J5oY5QkhqytrYCCXk5wRqYW5cvHklHENJBtrK1e4aSPz6ixDdL0ahKne
TV5sHSzPy+/UVK4G9+QTcrVBHQzv7glMFVTB9I6cmYzatTgyeyfacbwS+ga2
hUrj1+GRXXG+uYGVkGW3ce1jL138rLE1TjRUAYWxfHUfcz0cYhhfLvargHi3
U05KCj38i7fwPHOyHDZ3Z+bHP2ahcqWBh2toOdxan1b42ImN7v7c4iZmOURJ
km45VbCRuSW5OOWXMti71i2n1YCDTtpjbZFaZWDv33RMPYGD1WXkbYG4FDLW
cQ1kCg7yzLmSJCgFg/o/UvYd00frTbe1dnaWgNBcavKsVh/fuB7XsAwpAe8J
5actJhSaFN+1NlpeAtyiD+yE6xRaJl2ytntAwC/64JzjrxRa5I6ppBYS4B8k
L9V+pzBbkrF4qoDAFQX/mjCFwiMXasOK8giIbWdmb4oo3OZuj8ZZBGbq5l/k
FlCo42vjonuDgPCZWlJDE4VLrZqOfhtBIDX7vG9cC4VMe6FpfBiB7GD59t1t
FJp912fw7gKBUg3hpzY5hUHBK64VBhPodl/t295B4Zqz3bY2/gSM+rS39/ZR
2CGjPrh6EbAk4Xr3Bij0O9lqW+FJYGts18yZwa+/l3fydD0IOBuJ/nw3TKF8
uHD2rTsB3jm23vg4hVKd7pAIVwKR31+aKZ6gUGZlN9VzgEDsst7nwYqvbZaW
7uBC4NaD7MTpaQpZVtbcVfsIZF1U9qn8RKF5tI8g1JlAgcuZbZFzFOaZCupe
ORIg+o268IXC0R+CTXfuIVA7YTgzP0/hoeU7qgt2EfgPYl1DSw==
       "]]},
     Annotation[#, "Charting`Private`Tag$41444#2"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 1.2087800636558815`*^-6},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 10}, {1.2087800636558788`*^-6, 7.799999913404088*^-6}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.857771846617218*^9, 3.8577719990878687`*^9, 
  3.85777274915034*^9, 3.85799840871637*^9},
 CellLabel->"Out[28]=",ExpressionUUID->"0a183338-2db6-4b58-8291-23a111034460"]
}, Open  ]],

Cell[TextData[{
 "Conservation law:\n",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    RowBox[{"[", "C", "]"}], "10"], TraditionalForm]],ExpressionUUID->
  "0cb8c308-2018-4830-84ab-403c014bdcd2"],
 " = ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox[
      RowBox[{"[", "A", "]"}], "0"], "-", 
     SubscriptBox[
      RowBox[{"[", "A", "]"}], "10"]}], "=", 
    RowBox[{
     SubscriptBox[
      RowBox[{"[", "B", "]"}], "0"], "-", 
     SubscriptBox[
      RowBox[{"[", "B", "]"}], "10"]}]}], TraditionalForm]],ExpressionUUID->
  "0bee2617-7cf6-4174-9ea0-237e41c9b1f2"]
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
   3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
   3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
   3.857753679095352*^9, 3.8577537258076572`*^9}, 3.8577720882234497`*^9, {
   3.8577721450603647`*^9, 
   3.8577722130893173`*^9}},ExpressionUUID->"111aa91c-95ab-4be4-a667-\
1850b211a512"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"A", "[", "0", "]"}], "-", 
   RowBox[{"A", "[", "10", "]"}]}], "/.", "sol1"}]], "Input",
 CellChangeTimes->{{3.857772032042965*^9, 3.85777205603369*^9}, 
   3.85777275286933*^9},
 CellLabel->"In[29]:=",ExpressionUUID->"e3199bca-a68d-4517-8d9b-f0cd42887e08"],

Cell[BoxData[
 RowBox[{"{", "2.191219958482375`*^-6", "}"}]], "Output",
 CellChangeTimes->{{3.857772040282078*^9, 3.857772056854951*^9}, 
   3.8577727568190203`*^9, 3.857998414883747*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"7ba153aa-86b1-4dc9-851b-5a8eeb34cb2e"]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  RowBox[{
   FormBox[
    SubscriptBox[
     RowBox[{"[", "C", "]"}], "10"],
    TraditionalForm], " ", "=", " ", "2.191219958482375`*^-6"}]],
  CellChangeTimes->{{3.857772040282078*^9, 3.857772056854951*^9}},
  ExpressionUUID->"bee35627-0b2c-4e26-a153-706934f25381"],
 ".\n "
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
   3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
   3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
   3.857753679095352*^9, 3.8577537258076572`*^9}, 3.8577720882234497`*^9, {
   3.8577721450603647`*^9, 
   3.857772250658018*^9}},ExpressionUUID->"6e293ef3-419e-4842-a540-\
7ec318106e46"]
}, Open  ]],

Cell[CellGroupData[{

Cell["B : unrelated reactions", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857681605468582*^9, 
  3.857681609357381*^9}, {3.8576840351059647`*^9, 3.8576840367948008`*^9}, {
  3.857715021036426*^9, 3.857715027116848*^9}, {3.857728347342945*^9, 
  3.8577283490787687`*^9}, {3.8577528680600967`*^9, 3.857752871518135*^9}, {
  3.857754160291998*^9, 3.857754165252144*^9}, {3.857773664557498*^9, 
  3.857773691503653*^9}},ExpressionUUID->"c649dd54-f94e-435e-806e-\
3d59582054e2"],

Cell[TextData[{
 "The simple reaction (\[Alpha] + \[Beta] \[Equilibrium] \[Gamma] + \[Delta]) \
can be written in the form of ordinary differential equations.\n\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "\[Alpha]", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "17edcf82-5d40-4867-8e9e-f3e3dea64c0c"],
 " = -",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "2"], TraditionalForm]],ExpressionUUID->
  "561d5a73-42fc-4717-b10e-fba2e2de4675"],
 "[\[Alpha]][\[Beta]]+",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "3"], TraditionalForm]],ExpressionUUID->
  "c061bde6-c62d-4cb8-8919-b9a1bce4ecb8"],
 "[\[Gamma]][\[Delta]]\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "\[Beta]", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "357c2abf-e071-46f7-9e6c-0ebcd81c306c"],
 " = -",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "2"], TraditionalForm]],ExpressionUUID->
  "6ac7859f-b5fb-4a1a-b278-33ab8596bed9"],
 "[\[Alpha]][\[Beta]]+",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "3"], TraditionalForm]],ExpressionUUID->
  "541f03b3-409c-43c5-a06a-1ccfaf30c4c6"],
 "[\[Gamma]][\[Delta]]\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", "\[Gamma]", "]"}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "e397d88d-9312-45eb-a7d1-6b1d7bdfcf06"],
 " = +",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "2"], TraditionalForm]],ExpressionUUID->
  "b415db7e-7c17-4e45-9ce1-d79eb5cc7422"],
 "[\[Alpha]][\[Beta]]-",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "3"], TraditionalForm]],ExpressionUUID->
  "96942a55-3e78-48a6-95a8-76320140a668"],
 "[\[Gamma]][\[Delta]]\n",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"\[DifferentialD]", 
     RowBox[{"[", 
      RowBox[{"[", "\[Delta]", "]"}]}]}], 
    RowBox[{"\[DifferentialD]", "t"}]], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "ed634821-eca7-4a3c-8d41-58bd005135be"],
 " = +",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "2"], TraditionalForm]],ExpressionUUID->
  "8f8fa291-67a4-45a3-8409-f577d49e7c3f"],
 "[\[Alpha]][\[Beta]]-",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Lambda]", "3"], TraditionalForm]],ExpressionUUID->
  "bd084a6d-e56e-4b72-ad12-36f35fbf0d6f"],
 "[\[Gamma]][\[Delta]]\n\nLet\[CloseCurlyQuote]s solve the equations and \
determine ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    RowBox[{"[", "\[Omega]", "]"}], "5"], TraditionalForm]],ExpressionUUID->
  "6318ea17-a97c-4d0b-99db-f370df61471a"],
 "."
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
  3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
  3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
  3.857753679095352*^9, 3.8577537258076572`*^9}, {3.857772398445207*^9, 
  3.8577724790142317`*^9}, {3.857772570960503*^9, 3.857772713534605*^9}, {
  3.857773187608213*^9, 3.857773219910074*^9}, {3.857773387015403*^9, 
  3.857773387017041*^9}},ExpressionUUID->"c0a3c614-c15c-4ba5-a6d0-\
4469b6b6f858"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"eqn2", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"\[Alpha]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "+", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Beta]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "+", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Gamma]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"+", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Delta]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"+", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"par2", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Lambda]", "2"], " ", "->", " ", 
      RowBox[{"7.5", "\[Times]", 
       SuperscriptBox["10", "4"]}]}], ",", " ", 
     RowBox[{
      SubscriptBox["\[Lambda]", "3"], " ", "->", " ", 
      RowBox[{"9.3", "\[Times]", 
       SuperscriptBox["10", "2"]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"inc2", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Alpha]", "[", "0", "]"}], "==", 
      RowBox[{"644", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"\[Beta]", "[", "0", "]"}], "==", 
      RowBox[{"2.6", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"\[Gamma]", "[", "0", "]"}], "==", 
      RowBox[{"220", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"\[Delta]", "[", "0", "]"}], "==", 
      RowBox[{"7.64", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol2", " ", "=", " ", 
   RowBox[{"NDSolve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"eqn2", ",", "inc2"}], "}"}], "/.", "par2"}], ",", 
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "\[Beta]", ",", "\[Gamma]", ",", "\[Delta]"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "5"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Alpha]", "[", "t", "]"}], "/.", "sol2"}], ",", " ", 
     RowBox[{
      RowBox[{"\[Beta]", "[", "t", "]"}], "/.", "sol2"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"\[Gamma]", "[", "t", "]"}], "/.", "sol2"}], ",", " ", 
     RowBox[{
      RowBox[{"\[Delta]", "[", "t", "]"}], "/.", "sol2"}]}], "}"}], ",", " ", 
   
   RowBox[{"{", 
    RowBox[{"t", ",", "0", ",", "5"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.857753377370802*^9, 3.8577534943357*^9}, {
   3.857753531868575*^9, 3.857753664689084*^9}, {3.857753734590556*^9, 
   3.8577538637587442`*^9}, {3.8577539662106524`*^9, 3.857753973054192*^9}, 
   3.857771845826412*^9, {3.85777194706649*^9, 3.857771998034552*^9}, {
   3.857772545342754*^9, 3.8577725552344418`*^9}, {3.857772763335525*^9, 
   3.857772774039168*^9}, {3.8577728081377993`*^9, 3.857772982678061*^9}, {
   3.857773012719349*^9, 3.857773148776773*^9}, {3.857773195330459*^9, 
   3.857773282990156*^9}, {3.8577733181379757`*^9, 3.857773379925766*^9}},
 CellLabel->"In[30]:=",ExpressionUUID->"f35c3754-80d3-4d45-97c2-f1dda804389d"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwVxX081HccAHCPPXAerl+rNU9H6uq6ilevllp9fl8Pr2VcliTtbJMrDyFF
d6lQjYQ13O/nzp1D1+FHrRc9oTVFjpKni1Sr2DTnpi56oMN53PbH+/V25B3e
FWZkYGCw4z//X3SKN8/1QCLYObeOaAsoaOpmcIIY3+EzlXzSU0bB3IO6VAbj
IL7imjKgUEpB0b0sB1PGCXy3h+ZrPzEFMdsEh8YdMvHVZV7vb2ZT0D0VKfrg
kI/XRMd4n/uJgvk9/cxhh8u4/7sQ2+0RFCha5XFvHW7jkq5nPps3UFB5NbMn
Zl0rzhwSuoQ0lUIE3pU/FN+Nh8/yDnNDSiFWs1pdVfkC3/hy7wg1WwJmjmeZ
fW6v8Mm+0aBgaQlkW7exFPvU+IWjxrXMr0qA17O73rj9Hzw7tDcq7nkxxN0/
yzvM1OLDk5zuFyeK4foRWsDn3wzjBzO+XX5teTEoEqO1LkEf8GOa/IaUhwpI
kU/7fxr6iPd+tjN/l0ABBt2v0J2To3jPpmJ28goFrOSHH9/N0uEePkHjrZ0X
YUAn2WN+dwxHpgNaIvUi+Giiksm4CXz29BP1Y9eL4DcgXGNvP4n7r/9C2vBA
DtpG3pmHFVN4OzX0NH2THNbRn9l5hszgly7JHubIL4AZrgvtHZ3FNUrWb/2L
L8D2Ye64U6ABqhEH8sxSiuC58oAhl22IypKlbCNdIVRnNP3I0BmiPk5FHYtf
COGmglcqlRFqVE0nHH1bAPvjE6tpMmNUb7PTJT+2ANZHrFFxQk1QcIqir3lM
Bo8Wsc0Fm03RozKnddEJMqitTClgG89Df2UvJaeMZJBoyNrZ/uc8lKRK5Mek
54NZ70nv2Kr5qMXLX9FinQ+aMkeRPGkB+t627+2xUimIVi0zuR24EM1x3rT5
uUpBKAtvDmWYIc/Xp8ixZglwRT+oaINmyPxWwEg1TwITXpReXmeO3AUb3y8b
zwO1xuO4Mp2G+ueOvWsS5UHxNlebjlALZHXTmraVnQcVaQJ6xFpLdIpMnv9L
uxjSA/f7GusskfZMnOnPR8SwsVdxOb3DCm3YMjTTYCkG6eqCig5fa0R/zc3Z
Uy2C0/eypL63rVFCs7ub9x4R7LAJpFqd6ehLR5v9XZO54B7bHEzPpCMmcgpb
VZ4Lcluec7uOjs43iK+4++WCc2N5nl/wImTVWilWT5MgXKtkPa5bhAYXkoLz
lSSEj5p0tbAwZCKJO7E8mATe9RFGZg6GFsewXVSWJMSkBEz7EBjyFX2SJ1mQ
IAio+oOWi6FMKo29hkZChk6QLczD0NJUo8KMhSRUbtZPSYowlMqKeOJlQoK+
Ye5Z2RUMiVm9vyr1BAgf07KamjEkf89/1z1AgKzkUOS5FgyVu3HH09QElPBV
nt5tGKqJWmDn1k9AzRLhZJsKQ4OZ9XWFfQT0crHI7qcYklZJgyNeEsBUL/Ps
V2NoQ+3YpGEnAS5VJ+1LNRiiRFGd1SoCtqT16MMGMWQbVK482EEAh1l07Y0W
Qw6SxJmuVgLioxn2Hz9iKN44p73kPgFJW3/S3xjF0JIVPhl7mwhIs+h/wtdh
SLletc+ikQDp1ZLzExMYWmvgGplwj4DiMyYRv09iaOi+lYRdT8AV/zCPpGkM
3eDf6v/7LgFVTg/sYBZDp2mrfCV3CKgbXamfm8OQf1ZoJ6eWgH8Bm3VMpw==

       "]]},
     Annotation[#, "Charting`Private`Tag$42160#1"]& ], 
    TagBox[
     {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwVzXs0lHkcx3F3awwZzx6btZismhCbzim16fv7Me0mhs2tNlZ2pjKzuVQO
5xRqbVJNliVObjFNqJUoLXVsu6rnkvtYl1VCOclqSbk0zJDss398zvu8/vqs
khwOOqino6Pjz+7/lpyUGLkfSAbN5QmbxE4G6B6+aA9/L7ol7BOasl5+1JjG
5/+AFiinBKWKgZIHmfaG/OPojGxmqqODgZhtibHz9nKU7MUJF7Qz0LMoy5uy
L0TPNoRMDzQzYDzwQjBpX4nSicA1IpIBZavi6IR9A9rT/qbWp56BmpvygRi3
VrQYFOFyoZABKeoqfB3fgzIe8xZ3pTIQN+o0UlfTj04GdA58LmOAs+q04Pnm
YTS1YtPGnAAGsizanJXfj6An77T+2z0YkAyE3Ndv/weFrJ9quGjHwFHmtOSw
YBzd2M3tnTJioPYIN3jlzklkusCVRU3ToEyOHl+/ZwoF5ChWFD+l4ZTifeC7
19NIaptp2MnQoNMzjP9ImkVjFeLr/bU0rEmIOhbirEap4+a21ZdoeKnO3236
5xzC1jP9++Q0+I4eOnHhqAa99XBb+TaBhoCX2S52dgvoaYTnhSAxDeOUJLW5
ehFV3pjbG/0NDW68Plth5BIyjBV9G+NJAwepxYOzH5DoCNyxcqFhx2TYvEOo
Dr7amlZ1byUNT8gDumHrdHG5oL38U2Ma6s/R+/hqXfzzQ/O7y3MURBkmDqtU
eri5drPq1SgF++OT67lF+lhmI0z376PgC6mLSiQ2wFt9XMODmyjotFxnmrjF
ELfELNHSuxTcqzlVvE7fCLeZpHT1/0pBsq7zrvYhI3w/p3lSWkgBZzDJJ67O
GMvx/tzc8xSMXl2Vp0j5CCcv1nmanKAgb621QUOoCc72urO5PI6C7KKoJjGf
gzXvzrkfF1MQlheh4o5xcHdWmm1XCAWa7RVaRaMpLnhkXxKxg4KRUe9j5Fku
npw3XrLcSsGVbe42HWIzHOR2b1jXjYLq9ESe1NUc49a1w6YOFJwN3e+nrzbH
Zj5jigwrCjYOKivPdqzAmxRzpUEcCgqciqs7/CzwTIKj++plEn58kFng12CB
n+/yihLOkuBvE1rR6sjDn6RcyugdI8ErrimcJ+dhdeRQdOQQCYrPJI7tah52
+Ksqz7ubBEfq2sWAcEu8YfpNl1UzCdmupHN3oyV23TvR4ddIQtSsQVeLM4G7
fKWqZ7+RIKmd4ct/IXB8BawOuU5CzKng9745BD5+3WPWiXVicN1jbi6Ble0t
9HIlCefUiVnZFwkcLGuIr2Jds0W7mF9CYLzEaPVYax8u912tIrCwJK/u9jX2
v5ubSTcR+GW98dDHFSQUlcXKzrQQ2DDS0W6inISyBJXQp43AO1Y/lTxkfccq
e6FNRWBXE958LOvBMELW8zeB09xu+DaVkSAYsRa+GCHw7rf5pUlXSFhfl2RX
Pkrg04e+tg5k/WX6gPbgGIF79LLyBaxFgpJb/44TuPf8q9JeJQnx0Xy76WkC
79O0PnFjneL5k/b2LIFzv/M+Ysg63exFb4KawK+GgkwHL5NQcLMsQ6Mh8JwH
EslZX0k1kP6+QOBqC5uZSNZVgQe9U94T+IxRdvEm1nUOj2zhA4FTrUt9zFg3
zq7RLi8TuGjnV9oRBQn/Adf5V58=
       "]]},
     Annotation[#, "Charting`Private`Tag$42160#2"]& ], 
    TagBox[
     {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwVz3s81Xccx/HjEuIo/CiKc04ectaJ0tr2mJXP91u6oouhOqzJKY5cYyxh
rh3yqMORkyOXzu2XHmaUOU1WSVRyO0K1GjbDSSlbxqlzHGX2x/vxejz/fK/i
xH4dqk+hUPYs7P9WpHGMNhxLAa1oqMgplw/3+hk+BxlslBa10aaFz4f5B03Z
DMZxNMTVLQ0W8qGimU9fxDiFHOlxniIpH6I8EqPf0/NQV8G0lHKLD/26cOFb
+kVUfsrfo+EtH4wHRpiT9CrkGpszWc/OB2mHOO41vREtH/lx4+s1BVB7NW8g
al0Her0pRFkVLwAu6r34Jr4fRS2/vb9+cyHEqNaMKmqfo57gXi/7j4Vguuo0
888vh5Gnf1l6Xcd5yLfoZEmPjCKdS2qjLa8IOAP+dwy6XiAH3w42z0sIcfdP
c2KZEyiY9uqMwvgC1J2g+tnunkRcg7GXxooLIE2JnHA7+Bbt3b3vJ05EMWSJ
53xn3kyhzJcjcy0WIqD0D+NbydMom4Sn0ddE4JwQluTPUiNF+mPcxy6BMbXo
gNntd+jG4pvsbTMl4KWK+OF8nAZtsv6d2yK6CHvHBGtptFn0YixcVPlZKUy0
cjIe1uhQREwxe7i1FNZZPnXwDP6A8iNfhj0LKgNTpA4ZnP6IfH0PneS9KIOd
k4HvHQMoOCPNtfvwqXJ41nJML9BFDwuKJ/TDjCrg+pl73zLUevhg25MTHrkV
ELYocVip1Mffbc9pmFl6CY7Gp1ynlhrgk5pP55XnLsF67lqlT4ghHij8a5/E
UAw9Vi5mie6LcHj0Eb0P2WK4WZtV5mJghA/xIiuiNGJI0WPt7xoywkOy7KEP
7hIwHUzeFaMwxg3jtjv3JUpAVblKKE41wX/reqVJ1RIQfmJn2BiwGJePdtVR
VRIQlIa1hTBM8axNlvKGnRQChYeV1HFTXFwrorF9pKDZdlkrbjLDKT3ODGaW
FEZVW5NacqmYZZoj8a2Xgsxjw8ruEHMsdGu0LB6XQg0v0ZLrugQPNutbxyyX
QW7AUW8D9RJ8ud3EJna7DD4flFbldi/FetGdtn7fy6BkTVlNt7cFtlpm/chE
LoP0Zn6Jd6MFDq6U6Ar6ZLBnZcDlDidLnKHdGOZNkcOWmLYgyzxLbBzhpqKz
5CC25zh1qS1xQNW7LUUH5ODUeqV4b5AVJlZP+GxNl4PAtYXV12SFmTzNNzGV
cgibNuxtZxG4pMkkyPGRHDh1/zLyCghs4V897/NODlFZfnNehQRWo7Y29YIT
/RS/UYsIfKAhLfPSezmcUSfmC4oJXLCruf0fjRxq3bU6UQWBn8/wawp1ctDe
nX9aWU3gRwl+LX0UEgR9VP69NgJ7W+UyvMxIKJVHh+e0E7gt2tp+asHyBKXn
rk4C3/H3WFxCJeGXZYLZTiWBmfdDbqjMSRgMJML7nxC4Z736eIYFCcxRO8+R
UQJnuuxYUW9DgpsimUaqCPwQnVvPXkbCV7wBbeg4gfl/RH8xv2AfZsW1VxME
PttkYOdtS0J8JIM2NUVgjknyhpEVJKRuztT+PL3w52R5f+5KEnjmI48T1AR2
jw/kutqTUHJVflajIbChadXRJAcSZBmG3F9nCbz6inuXA42Eat/QralzBL7b
E+rcumCF4wMH+EjggWzX+HA6CU3Tztr5eQLHtwqumjNI+A95Sz3Y
       "]]},
     Annotation[#, "Charting`Private`Tag$42160#3"]& ], 
    TagBox[
     {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1:eJwVxX0803kcAHDzVFg0P/XiZJvyCoviXN1JfX5fjUhTqa0u6tzmYa6UyHrw
kIdLkqaNxX46LXq4FzKnF73Sw45C8jBJSNQ5o87ji9tNnnd3f7xfb1te1P4w
XR0dHf///H/BBZ6ha2g83ND/vMUuAkFdB511iH4YH2R5sRbaEWgbFD/T6T/h
r3XrZpo9PKGgRkgzoJ/H7c7SXPaa7YDI7YITX2gZeE3KTsuhKiZ0zEdIJmkE
/ojKUe4h+cCy3gH7cVox3nI2tt1K7A+FTbLoUVo1/k3HBysfPw7IyzN6Izc2
4fnI37U+mwt8vJ0Yi+nAb65x8qKo+HByyFFVKe/BHwcrLQ5PnABj24v2f3zX
j8tJ146mOMZA1spmRuGPKjwr1NybigmA18v+Xa/lE26h8Wt47XAOousv8qLs
R3AqoyFVaBMPFafIByx3jeOgqNDtVSZCYfzxEZdDk/jYsU3L17GTIVW2EPDP
2BTOLj5YrLqVAjod/ehpnBo/ZGt6xL0/FdbHhp9jMzR4dbe7q67bRRjU5B00
eTaN144ahnzip4Hf0LHE7OgZvFHHO2lAfgn2DIo2UKlzOLWI97Hkr3QYecFL
biybxx2qnvGoyzJgI6XLhhm8iEeVcxNNv70CxriG26dewqfjPG9GsDLBZzzw
y1qODmJ3ju6yirkK756HkgKdSCjWILzK8aoQqi7X/UDXkJAuf5v4nTALwg0E
/UqlLnIPKaD6yK5BSEx8FTlfDxWGznclskSwib9ByeLqI4OlYvu9dSJoM3cy
EbgbIHGPQ08pUwxP5Kk3nPQMUeqUm8D6kRjiSYx9LR8M0WBFW3aJWzYY98X5
nqxchvI85sL8S7Jh6J6tRJawHOmHRlrfWp0DEgcr/WqOEeK68TwaM3JAlB/+
kks3RjbSlli6OgcCJUeV5M/GiPPqiwX3ewnMeN2dlSlMEM1kteXiCwmohnac
e55ORheS31ruX38dira7WrdyV6CA1q3z77OuQ1magMJ3NkUD463aKxPXIZ0T
sltPY4rOaHtIQr9c2NxXWJzeaoacdwYbce7ngtTxRlnr7pVor3TybI1BHiTV
CKW7q1ei4UdGbcrQPPC35txtsqMgRrDLHe+aPPA8+TKIkkFB7sixaAKTgmwN
z65FQ0Gdiqqgzkgp2L34NXdPkDkKePhLtJtCCiLn54w3CnN0/ky1OJNMQLha
v/0VA0NHhnuE6mACeBV/0zOuYYhlQev2vU9AZOqBBT8xhlaNHeTnlxEgOFDZ
Tc7BUPf7+vejcgIuawRZolwM7Vr0PZ5VQYDcfXY+rwBDHziDX795SMBsrbbr
XimGmjlRR9i1BIjekIV1LzFUK+qyZHYRkH/7RMSlVxiq9pkyE3cTcDtWyfRt
xlDJKubIx3cEPFwtmmtWYuj8dKZvXC8BfYFYREcnhhqbH5SW9xNgr7JiDqgw
5FzPJq8aJcClMo56ZwhDT0b7t3DHCNia1jsb9hlDXo53vMrGCWDZF/w2PIIh
z+E2I+9JAmKO06lTUxiaSHi69bSGgIRtKbMP1BjyCyIlKaYJSFsx8DZWg6Gb
+xLvGc0QIC2/nTkzgyG35K9ksjkCipL1+Y/nMBT72OPUyDwBpQFhOxIWMCQ3
kdhtXiSgcm2DDSxh6M/T654mLRGgUK+f1WoxZKYe3tKkJeBfs2c9zA==
       "]]},
     Annotation[#, "Charting`Private`Tag$42160#4"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 5}, {0., 2.5999999871858743`*^-6}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.8577733443795652`*^9, 3.8577733902196007`*^9, 
  3.857999103852159*^9},
 CellLabel->"Out[34]=",ExpressionUUID->"36e5254c-c5fe-46b4-9e5b-66cdde3409eb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"\[Delta]", "[", "5", "]"}], "/.", "sol2"}]], "Input",
 CellChangeTimes->{{3.857772032042965*^9, 3.85777205603369*^9}, 
   3.85777275286933*^9, {3.857773440342703*^9, 3.857773448242106*^9}},
 CellLabel->"In[86]:=",ExpressionUUID->"e1dce2c9-f877-49de-b08a-9a28aa5e9b85"],

Cell[BoxData[
 RowBox[{"{", "3.874179661022288`*^-7", "}"}]], "Output",
 CellChangeTimes->{3.857773449331189*^9},
 CellLabel->"Out[86]=",ExpressionUUID->"24280101-8e82-47df-9ddd-5a7d0c9e3b40"]
}, Open  ]],

Cell[TextData[{
 Cell[BoxData[
  RowBox[{
   FormBox[
    SubscriptBox[
     RowBox[{"[", "\[Omega]", "]"}], "5"],
    TraditionalForm], " ", "=", " ", 
   RowBox[{"387", " ", "nM"}]}]],
  CellChangeTimes->{{3.857772040282078*^9, 3.857772056854951*^9}},
  ExpressionUUID->"2a62a1f4-b3cc-4ff3-aebf-46c538308228"],
 "."
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
   3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
   3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
   3.857753679095352*^9, 3.8577537258076572`*^9}, 3.8577720882234497`*^9, {
   3.8577721450603647`*^9, 3.857772250658018*^9}, {3.857773472825713*^9, 
   3.857773515174837*^9}},ExpressionUUID->"e8fe8b16-514c-4c3c-bf40-\
08a711c8e3bb"]
}, Open  ]],

Cell[CellGroupData[{

Cell["C : extinction coefficients", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857681605468582*^9, 
  3.857681609357381*^9}, {3.8576840351059647`*^9, 3.8576840367948008`*^9}, {
  3.857715021036426*^9, 3.857715027116848*^9}, {3.857728347342945*^9, 
  3.8577283490787687`*^9}, {3.8577528680600967`*^9, 3.857752871518135*^9}, {
  3.857754160291998*^9, 3.857754165252144*^9}, {3.85777362812376*^9, 
  3.857773635830814*^9}, {3.857773670116746*^9, 
  3.8577736847194643`*^9}},ExpressionUUID->"2f7a5b14-d5f4-4733-83a7-\
dc65e8789272"],

Cell[TextData[{
 "If I understand the extinction coefficient correctly, the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CapitalSigma]", "460"], TraditionalForm]],ExpressionUUID->
  "2ee65d81-0690-4263-bf5f-3bc1f4be91a3"],
 "(C)  will be multiplied by the concentration of [C], to estimate light \
absorption. We need to minimize the absorption to maximum the passing light.\n\
At t=0, there is no C, no absorption from C, and \[Beta] is at its maximum \
value, maximum absorption from \[Beta]. The ratio between the extinction \
coefficients is 12/62, so we need to:\nMinimize C*",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CapitalSigma]", "460"], TraditionalForm]],ExpressionUUID->
  "d334df7c-9680-4e77-b892-f925802d8a1d"],
 "(C) +",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Beta]", "  ", 
    SubscriptBox["\[CapitalSigma]", "460"]}], TraditionalForm]],
  ExpressionUUID->"c0787887-a692-4581-b639-75be2d99f545"],
 "(\[Beta]),\ns.t. previous dynamics, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CapitalSigma]", "460"], TraditionalForm]],ExpressionUUID->
  "1927a81b-ba43-4f62-9f17-dc3927990d85"],
 "(C)/",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    SubscriptBox["\[CapitalSigma]", "460"]}], TraditionalForm]],
  ExpressionUUID->"36fbf8fb-0d4d-461a-be55-b15c79543192"],
 "(\[Beta])=12/62."
}], "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
  3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
  3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
  3.857753679095352*^9, 3.8577537258076572`*^9}, {3.857772398445207*^9, 
  3.8577724790142317`*^9}, {3.857772570960503*^9, 3.857772713534605*^9}, {
  3.857773187608213*^9, 3.857773219910074*^9}, {3.857773387015403*^9, 
  3.857773387017041*^9}, {3.857998714207357*^9, 
  3.8579990486583977`*^9}},ExpressionUUID->"d3e8822b-e8ac-4e2a-8841-\
4e6083a8e48f"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"eqn", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"A", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Lambda]", "1"]}], " ", 
       RowBox[{"A", "[", "t", "]"}], " ", 
       RowBox[{"B", "[", "t", "]"}]}]}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"B", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Lambda]", "1"]}], " ", 
       RowBox[{"A", "[", "t", "]"}], " ", 
       RowBox[{"B", "[", "t", "]"}]}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Alpha]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "+", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Beta]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "+", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Gamma]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"+", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"\[Delta]", "'"}], "[", "t", "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"+", 
         SubscriptBox["\[Lambda]", "2"]}], " ", 
        RowBox[{"\[Alpha]", "[", "t", "]"}], " ", 
        RowBox[{"\[Beta]", "[", "t", "]"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Lambda]", "3"], " ", 
        RowBox[{"\[Gamma]", "[", "t", "]"}], " ", 
        RowBox[{"\[Delta]", "[", "t", "]"}]}]}]}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"par", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Lambda]", "1"], " ", "->", " ", 
      RowBox[{"1.6", "\[Times]", 
       SuperscriptBox["10", "4"]}]}], ",", 
     RowBox[{
      SubscriptBox["\[Lambda]", "2"], " ", "->", " ", 
      RowBox[{"7.5", "\[Times]", 
       SuperscriptBox["10", "4"]}]}], ",", " ", 
     RowBox[{
      SubscriptBox["\[Lambda]", "3"], " ", "->", " ", 
      RowBox[{"9.3", "\[Times]", 
       SuperscriptBox["10", "2"]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"inc", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"A", "[", "0", "]"}], "==", 
      RowBox[{"7.8", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"B", "[", "0", "]"}], "==", 
      RowBox[{"3.4", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"\[Alpha]", "[", "0", "]"}], "==", 
      RowBox[{"644", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"\[Beta]", "[", "0", "]"}], "==", 
      RowBox[{"2.6", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "6"}]]}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"\[Gamma]", "[", "0", "]"}], "==", 
      RowBox[{"220", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}], ",", " ", 
     RowBox[{
      RowBox[{"\[Delta]", "[", "0", "]"}], "==", 
      RowBox[{"7.64", "\[Times]", 
       SuperscriptBox["10", 
        RowBox[{"-", "9"}]]}]}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"sol", " ", "=", " ", 
   RowBox[{"NDSolve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"eqn", ",", "inc"}], "}"}], "/.", "par"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "A", ",", "B", ",", "\[Alpha]", ",", "\[Beta]", ",", "\[Gamma]", ",", 
       "\[Delta]"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "15"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"A", "[", "0", "]"}], "-", 
     RowBox[{"A", "[", "t", "]"}], "+", " ", 
     RowBox[{"62", "*", 
      RowBox[{
       RowBox[{"\[Beta]", "[", "t", "]"}], "/", "12"}]}]}], "/.", "sol"}], 
   ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", "0", ",", "15"}], "}"}]}], "]"}]}], "Input",
 CellChangeTimes->{{3.8579996384997463`*^9, 3.857999649275763*^9}, {
   3.857999680862753*^9, 3.857999795831307*^9}, 3.8579998379111557`*^9, {
   3.857999935264851*^9, 3.857999977388275*^9}},
 CellLabel->"In[83]:=",ExpressionUUID->"9b41dbb8-3235-4d96-9d8b-f19f626f5f0e"],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    TagBox[
     {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
      1.], LineBox[CompressedData["
1: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
       "]]},
     Annotation[#, "Charting`Private`Tag$50337#1"]& ]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0.000012893642160038704`},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{
   "DefaultBoundaryStyle" -> Automatic, 
    "DefaultGraphicsInteraction" -> {
     "Version" -> 1.2, "TrackMousePosition" -> {True, False}, 
      "Effects" -> {
       "Highlight" -> {"ratio" -> 2}, "HighlightPoint" -> {"ratio" -> 2}, 
        "Droplines" -> {
         "freeformCursorMode" -> True, 
          "placement" -> {"x" -> "All", "y" -> "None"}}}}, "DefaultMeshStyle" -> 
    AbsolutePointSize[6], "ScalingFunctions" -> None, 
    "CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 15}, {0.000012893642160038676`, 0.000013195972343630913`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.05], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.857999946546846*^9, 3.8579999780928993`*^9}},
 CellLabel->"Out[87]=",ExpressionUUID->"4ae00c4b-247f-4eec-82be-59b8e91df871"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindMinimum", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"A", "[", "0", "]"}], "-", 
     RowBox[{"A", "[", "t", "]"}], "+", " ", 
     RowBox[{"62", "*", 
      RowBox[{
       RowBox[{"\[Beta]", "[", "t", "]"}], "/", "12"}]}]}], "/.", "sol"}], 
   ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", "7"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.858000080588482*^9, 3.8580000974664803`*^9}},
 CellLabel->"In[88]:=",ExpressionUUID->"c2394b04-552a-4ccd-a894-a510be6f07fa"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction", "dmval", 
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"87.`\\\", \\\"}\\\"}]\\) \
lies outside the range of data in the interpolating function. Extrapolation \
will be used.\"", 2, 88, 12, 30612148883913010689, "Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.8580000982539*^9},
 CellLabel->
  "During evaluation of \
In[88]:=",ExpressionUUID->"b9b6dadb-4e00-43ac-b7b6-de7b47272e90"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction", "dmval", 
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"87.`\\\", \\\"}\\\"}]\\) \
lies outside the range of data in the interpolating function. Extrapolation \
will be used.\"", 2, 88, 13, 30612148883913010689, "Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.858000098267552*^9},
 CellLabel->
  "During evaluation of \
In[88]:=",ExpressionUUID->"f14c6137-9e89-43b8-b8ff-d7cce167dbff"],

Cell[BoxData[
 TemplateBox[{
  "InterpolatingFunction", "dmval", 
   "\"Input value \\!\\(\\*RowBox[{\\\"{\\\", \\\"87.`\\\", \\\"}\\\"}]\\) \
lies outside the range of data in the interpolating function. Extrapolation \
will be used.\"", 2, 88, 14, 30612148883913010689, "Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.8580000982787657`*^9},
 CellLabel->
  "During evaluation of \
In[88]:=",ExpressionUUID->"33b50da8-f051-4ea0-bce7-5c80c4a5a048"],

Cell[BoxData[
 TemplateBox[{
  "General", "stop", 
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"InterpolatingFunction\\\
\", \\\"::\\\", \\\"dmval\\\"}], \\\"MessageName\\\"]\\) will be suppressed \
during this calculation.\"", 2, 88, 15, 30612148883913010689, "Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.858000098289795*^9},
 CellLabel->
  "During evaluation of \
In[88]:=",ExpressionUUID->"005c7cac-6b07-4425-9f65-45bc1ad65143"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0.000012893641791278904`", ",", 
   RowBox[{"{", 
    RowBox[{"t", "\[Rule]", "7.414930751707973`"}], "}"}]}], "}"}]], "Output",\

 CellChangeTimes->{3.858000098301588*^9},
 CellLabel->"Out[88]=",ExpressionUUID->"9ce109f4-dc55-4daa-9d09-63b4bc6ea8c2"]
}, Open  ]],

Cell["t = 7.4s is the solution.", "Text",
 CellChangeTimes->{{3.8577296282061663`*^9, 3.857729655497508*^9}, {
  3.857752881894627*^9, 3.857752897473831*^9}, {3.8577529292883883`*^9, 
  3.8577530792327433`*^9}, {3.857753118612811*^9, 3.8577531764047337`*^9}, {
  3.857753679095352*^9, 3.8577537258076572`*^9}, {3.857772398445207*^9, 
  3.8577724790142317`*^9}, {3.857772570960503*^9, 3.857772713534605*^9}, {
  3.857773187608213*^9, 3.857773219910074*^9}, {3.857773387015403*^9, 
  3.857773387017041*^9}, {3.857998714207357*^9, 3.8579990486583977`*^9}, {
  3.85800017294102*^9, 
  3.858000198409678*^9}},ExpressionUUID->"2ec27f14-548c-40d0-bb14-\
818c90921032"]
}, Open  ]],

Cell["D : catalysts", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857681605468582*^9, 
  3.857681609357381*^9}, {3.8576840351059647`*^9, 3.8576840367948008`*^9}, {
  3.857715021036426*^9, 3.857715027116848*^9}, {3.857728347342945*^9, 
  3.8577283490787687`*^9}, {3.8577528680600967`*^9, 3.857752871518135*^9}, {
  3.857754160291998*^9, 3.857754165252144*^9}, {3.857773649774225*^9, 
  3.857773681600705*^9}},ExpressionUUID->"8ef9ff4d-b815-46df-9f1b-\
5442151894b9"],

Cell["Adjourn", "Chapter",
 CellChangeTimes->{{3.8575941374892063`*^9, 3.857594139860447*^9}, {
  3.8576566518410683`*^9, 3.857656656049149*^9}, {3.857677449879182*^9, 
  3.857677450870325*^9}},ExpressionUUID->"de64a5c0-4b94-4a9f-87cb-\
35bdd45b4d12"]
}, Open  ]]
},
WindowSize->{636, 712},
WindowMargins->{{69, Automatic}, {Automatic, 35}},
PrintingCopies->1,
PrintingPageRange->{1, Automatic},
TaggingRules-><|"TryRealOnly" -> False|>,
FrontEndVersion->"13.0 for Mac OS X x86 (64-bit) (February 4, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"40eb2beb-bfb5-4113-90f3-2c10760dcc2c"
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
Cell[1510, 35, 396, 6, 98, "Title",ExpressionUUID->"9e6c7130-7a3c-4697-8b8f-51d38d27f2ca"],
Cell[1909, 43, 155, 2, 30, "Input",ExpressionUUID->"5ee35322-ba25-4911-903d-3692f28470d3"],
Cell[CellGroupData[{
Cell[2089, 49, 515, 8, 69, "Chapter",ExpressionUUID->"79d1a278-bcc8-4cb5-ae49-0bd17385ad43"],
Cell[2607, 59, 2295, 66, 218, "Text",ExpressionUUID->"bc9f346c-c3e4-46ca-ba21-372f533cb063"],
Cell[CellGroupData[{
Cell[4927, 129, 2445, 71, 119, "Input",ExpressionUUID->"00097735-d8eb-46d7-b9ea-2c1a6534a5b4"],
Cell[7375, 202, 5442, 109, 228, "Output",ExpressionUUID->"0a183338-2db6-4b58-8291-23a111034460"]
}, Open  ]],
Cell[12832, 314, 1018, 29, 58, "Text",ExpressionUUID->"111aa91c-95ab-4be4-a667-1850b211a512"],
Cell[CellGroupData[{
Cell[13875, 347, 304, 7, 30, "Input",ExpressionUUID->"e3199bca-a68d-4517-8d9b-f0cd42887e08"],
Cell[14182, 356, 266, 4, 37, "Output",ExpressionUUID->"7ba153aa-86b1-4dc9-851b-5a8eeb34cb2e"]
}, Open  ]],
Cell[14463, 363, 729, 17, 58, "Text",ExpressionUUID->"6e293ef3-419e-4842-a540-7ec318106e46"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15229, 385, 563, 8, 69, "Chapter",ExpressionUUID->"c649dd54-f94e-435e-806e-3d59582054e2"],
Cell[15795, 395, 3359, 95, 239, "Text",ExpressionUUID->"c0a3c614-c15c-4ba5-a6d0-4469b6b6f858"],
Cell[CellGroupData[{
Cell[19179, 494, 4903, 134, 226, "Input",ExpressionUUID->"f35c3754-80d3-4d45-97c2-f1dda804389d"],
Cell[24085, 630, 9179, 176, 221, "Output",ExpressionUUID->"36e5254c-c5fe-46b4-9e5b-66cdde3409eb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33301, 811, 303, 5, 30, "Input",ExpressionUUID->"e1dce2c9-f877-49de-b08a-9a28aa5e9b85"],
Cell[33607, 818, 192, 3, 37, "Output",ExpressionUUID->"24280101-8e82-47df-9ddd-5a7d0c9e3b40"]
}, Open  ]],
Cell[33814, 824, 784, 18, 35, "Text",ExpressionUUID->"e8fe8b16-514c-4c3c-bf40-08a711c8e3bb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34635, 847, 617, 9, 69, "Chapter",ExpressionUUID->"2f7a5b14-d5f4-4733-83a7-dc65e8789272"],
Cell[35255, 858, 1889, 42, 196, "Text",ExpressionUUID->"d3e8822b-e8ac-4e2a-8841-4e6083a8e48f"],
Cell[CellGroupData[{
Cell[37169, 904, 5405, 156, 247, "Input",ExpressionUUID->"9b41dbb8-3235-4d96-9d8b-f19f626f5f0e"],
Cell[42577, 1062, 6076, 117, 216, "Output",ExpressionUUID->"4ae00c4b-247f-4eec-82be-59b8e91df871"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48690, 1184, 515, 14, 30, "Input",ExpressionUUID->"c2394b04-552a-4ccd-a894-a510be6f07fa"],
Cell[49208, 1200, 467, 10, 46, "Message",ExpressionUUID->"b9b6dadb-4e00-43ac-b7b6-de7b47272e90"],
Cell[49678, 1212, 469, 10, 46, "Message",ExpressionUUID->"f14c6137-9e89-43b8-b8ff-d7cce167dbff"],
Cell[50150, 1224, 471, 10, 46, "Message",ExpressionUUID->"33b50da8-f051-4ea0-bce7-5c80c4a5a048"],
Cell[50624, 1236, 467, 10, 46, "Message",ExpressionUUID->"005c7cac-6b07-4425-9f65-45bc1ad65143"],
Cell[51094, 1248, 291, 7, 34, "Output",ExpressionUUID->"9ce109f4-dc55-4daa-9d09-63b4bc6ea8c2"]
}, Open  ]],
Cell[51400, 1258, 661, 10, 35, "Text",ExpressionUUID->"2ec27f14-548c-40d0-bb14-818c90921032"]
}, Open  ]],
Cell[52076, 1271, 553, 8, 69, "Chapter",ExpressionUUID->"8ef9ff4d-b815-46df-9f1b-5442151894b9"],
Cell[52632, 1281, 251, 4, 58, "Chapter",ExpressionUUID->"de64a5c0-4b94-4a9f-87cb-35bdd45b4d12"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature BvTqyZuFbycxUB1ar2LMQTfT *)
