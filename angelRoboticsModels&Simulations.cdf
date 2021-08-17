(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

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
NotebookDataLength[     53305,       1220]
NotebookOptionsPosition[     53393,       1208]
NotebookOutlinePosition[     53836,       1228]
CellTagsIndexPosition[     53793,       1225]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[TextData[{
 StyleBox["AngelRobots \n", "Title"],
 StyleBox["A set of 3 DoF robots engineered to be affordable in the poorest \
corners of the world ", "Chapter"]
}], "Text",ExpressionUUID->"653a274c-dec1-48d6-a7ee-b193e8cd8ef3"],

Cell[TextData[{
 "With reasonable trade-offs in precision relative to the intended \
application\[LineSeparator]With proposed applications in:\[LineSeparator]1. \
Wood working (CNC)\n2. Agriculture\n3. Metal working (CNC)\n4. Construction \
(Brick laying)\n5. Any other things that the creative mind can conceive.\n6. \
Brick Making\n7. Book Binding\n8. Hospitality\[LineSeparator]\[LineSeparator]",
 StyleBox["Design Philosophy",
  FontWeight->"Bold"],
 "\n-> It is a golden principle to \[OpenCurlyDoubleQuote]gather the \
fragments that nothing be lost, wasted\[CloseCurlyDoubleQuote]. It is also \
true that \[OpenCurlyDoubleQuote]the poor will be with us always\
\[CloseCurlyDoubleQuote].  But by much economy much can be done in helping \
bring technological advance to the poorest corners of the world. This being \
our goal, our study and third-world engineering practice, goes beyond \
standard engineering to the study of standard parts, which due to mass \
production, are of low cost, and deeper still into which of a set of those \
that could perform the same mechanical function are the cheapest while not \
compromising on quality nor going below safety standards. Then designing \
robots to be built using these parts. The result is a set of robots that \
anyone can build and use, and as far as possible, everyone can afford, if not \
in person, then as a group.\n\n",
 StyleBox["## The Robots",
  FontWeight->"Bold"],
 "\n1. 1 DoF (Frame)"
}], "Text",ExpressionUUID->"7df758c8-f7f3-49d3-8d69-edb7858774be"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"motor", "[", 
    RowBox[{
    "endPointofBarAgr_", ",", " ", "barCrossSectionalWidth_", ",", 
     "barCrossSectionalHeight_", ",", "  ", "axis_", ",", " ", "number_", ",",
      " ", "axleDia_", ",", " ", "bearingDia_", ",", " ", "axleLength_", ",", 
     " ", "bearingLength_"}], "]"}], ":=", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{"axleLength", " ", "=", " ", "20"}], ";", "\[IndentingNewLine]", 
      RowBox[{"bearingLength", " ", "=", " ", "5"}], ";"}], "*)"}], 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"endPointofBar", "=", " ", 
      RowBox[{"Switch", "[", 
       RowBox[{"number", ",", " ", "0", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", " ", "1", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Switch", "[", 
      RowBox[{"axis", ",", " ", "\"\<x\>\"", ",", 
       RowBox[{
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX2", "=", " ", 
         RowBox[{
          RowBox[{"-", "barCrossSectionalWidth"}], "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetX1", ",", " ", "1", ",", " ", 
           "offsetX2"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", 
         RowBox[{
          RowBox[{"-", "barCrossSectionalWidth"}], "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetY", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetY1", ",", " ", "1", ",", " ", 
           "offsetY2"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ1", "=", "barCrossSectionalHeight"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetZ2", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetZ1", ",", " ", "1", ",", " ", 
           "offsetZ2"}], "]"}]}]}], ",", "\[IndentingNewLine]", "\"\<y\>\"", 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"offsetY1", "=", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", "0"}], ";"}]}], "\[IndentingNewLine]", "]"}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"axleAndBearingPoints", " ", "=", " ", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ"}]}], "}"}], ",", 
          "\[IndentingNewLine]", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength", "-", "bearingLength"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength", "+", "25"}]}], "}"}]}], "\[IndentingNewLine]", 
         "}"}]}], "\[IndentingNewLine]", "}"}]}], ";", "\[IndentingNewLine]", 
     
     RowBox[{"GraphicsGroup", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"axleAndBearingPoints", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
          RowBox[{"axleDia", "/", "2"}]}], "]"}], ",", " ", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"axleAndBearingPoints", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"bearingDia", "/", "2"}]}], "]"}]}], "\[IndentingNewLine]", 
       "}"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", "}"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"axleAndBearingPointsCalc", "[", 
    RowBox[{
    "endPointofBarAgr_", ",", " ", "barCrossSectionalWidth_", ",", 
     "barCrossSectionalHeight_", ",", "  ", "axis_", ",", " ", "number_", ",",
      "axleDia_", ",", " ", "bearingDia_", ",", " ", "axleLength_", ",", " ", 
     "bearingLength_"}], "]"}], ":=", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{"axleLength", " ", "=", " ", "20"}], ";", "\[IndentingNewLine]", 
      RowBox[{"bearingLength", " ", "=", " ", "5"}], ";"}], "*)"}], 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"endPointofBar", "=", " ", 
      RowBox[{"Switch", "[", 
       RowBox[{"number", ",", " ", "0", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", " ", "1", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Switch", "[", 
      RowBox[{"axis", ",", " ", "\"\<x\>\"", ",", 
       RowBox[{
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX2", "=", " ", 
         RowBox[{
          RowBox[{"-", "barCrossSectionalWidth"}], "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetX1", ",", " ", "1", ",", " ", 
           "offsetX2"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", 
         RowBox[{
          RowBox[{"-", "barCrossSectionalWidth"}], "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetY", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetY1", ",", " ", "1", ",", " ", 
           "offsetY2"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ1", "=", "barCrossSectionalHeight"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetZ2", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetZ1", ",", " ", "1", ",", " ", 
           "offsetZ2"}], "]"}]}]}], ",", "\[IndentingNewLine]", "\"\<y\>\"", 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"offsetY1", "=", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", "0"}], ";"}]}], "\[IndentingNewLine]", "]"}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"axleAndBearingPoints", " ", "=", " ", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ"}]}], "}"}], ",", 
          "\[IndentingNewLine]", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength"}]}], "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength", "-", "bearingLength"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
            RowBox[{"0", "+", 
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY"}], ",", 
            RowBox[{
             RowBox[{"endPointofBar", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
             "axleLength"}]}], "}"}]}], "\[IndentingNewLine]", "}"}]}], 
       "\[IndentingNewLine]", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"GraphicsGroup", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"axleAndBearingPoints", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", "  ", 
          RowBox[{"axleDia", "/", "2"}]}], "]"}], ",", " ", 
        RowBox[{"Cylinder", "[", 
         RowBox[{
          RowBox[{"axleAndBearingPoints", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
          RowBox[{"bearingDia", "/", "2"}]}], "]"}]}], "\[IndentingNewLine]", 
       "}"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", "}"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"chain", "[", 
    RowBox[{
    "endPointofBarAgr_", ",", " ", "barCrossSectionalWidth_", ",", 
     "barCrossSectionalHeight_", ",", "  ", "axis_", ",", " ", "number_", ",",
      "axleDia_", ",", " ", "bearingDia_", ",", " ", "axleLength_", ",", " ", 
     "bearingLength_"}], "]"}], ":=", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{"axleLength", " ", "=", " ", "20"}], ";", "\[IndentingNewLine]", 
      RowBox[{"bearingLength", " ", "=", " ", "5"}], ";"}], "*)"}], 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"endPointofBar", "=", " ", 
      RowBox[{"Switch", "[", 
       RowBox[{"number", ",", " ", "0", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", " ", "1", ",", " ", 
        RowBox[{"endPointofBarAgr", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Switch", "[", 
      RowBox[{"axis", ",", " ", "\"\<x\>\"", ",", 
       RowBox[{
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX1", "=", 
         RowBox[{"barCrossSectionalWidth", "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX2", "=", " ", 
         RowBox[{
          RowBox[{"-", "barCrossSectionalWidth"}], "/", "2"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetX", " ", "=", " ", 
         RowBox[{
          RowBox[{"Switch", "[", 
           RowBox[{
           "number", ",", " ", "0", ",", "offsetX1", ",", " ", "1", ",", " ", 
            "offsetX2"}], "]"}], " ", "-", "  ", 
          RowBox[{"barCrossSectionalWidth", "/", "2"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"chainX", " ", "=", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"endPointofBarAgr", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "-", 
          RowBox[{
           RowBox[{"endPointofBarAgr", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY1", "=", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"chainY", "=", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", 
         RowBox[{"-", "barCrossSectionalWidth"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetY", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetY1", ",", " ", "1", ",", " ", 
           "offsetY2"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ1", "=", "barCrossSectionalHeight"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"offsetZ2", "=", " ", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetZ", " ", "=", " ", 
         RowBox[{"Switch", "[", 
          RowBox[{
          "number", ",", " ", "0", ",", "offsetZ1", ",", " ", "1", ",", " ", 
           "offsetZ2"}], "]"}]}]}], ",", "\[IndentingNewLine]", "\"\<y\>\"", 
       ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"offsetY1", "=", "0"}], ";", "\[IndentingNewLine]", 
        RowBox[{"offsetY2", "=", "0"}], ";"}]}], "\[IndentingNewLine]", "]"}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"chainPoints", " ", "=", " ", "\[IndentingNewLine]", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"0", "+", 
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX"}], ",", 
          RowBox[{"0", "+", 
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY", "+", "chainY"}], 
          ",", 
          RowBox[{
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
           "axleLength"}]}], "}"}], ",", "\[IndentingNewLine]", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"0", "+", 
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "+", "offsetX", "+", " ", 
           "chainX"}], ",", 
          RowBox[{"0", "+", 
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "+", "offsetY", "+", "chainY"}], 
          ",", 
          RowBox[{
           RowBox[{"endPointofBar", "[", 
            RowBox[{"[", "3", "]"}], "]"}], "+", "offsetZ", "+", 
           "axleLength"}]}], "}"}]}], "\[IndentingNewLine]", "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"GraphicsGroup", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{"Thick", ",", " ", 
        RowBox[{"Line", "[", "chainPoints", "]"}]}], "\[IndentingNewLine]", 
       "}"}], "]"}]}], "\[IndentingNewLine]", "\[IndentingNewLine]", "}"}]}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
  "\[IndentingNewLine]", "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"OneDoFFrame", "[", 
    RowBox[{
    "x_", ",", "y_", ",", " ", "z_", ",", " ", "offsetX_", ",", " ", 
     "offsetY_", ",", " ", "offsetZ_"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "}"}], ",", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"origin", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"halfWorkSpaceWidth", " ", "=", " ", "100"}], ";", " ", 
       RowBox[{"(*", 
        RowBox[{"along", " ", "x"}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{"outerCylinderHeight", "=", "210"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"minCylinderHeight", "=", "270"}], ";", "\[IndentingNewLine]", 
       
       RowBox[{"maxCylinderLength", " ", "=", " ", "460"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"maxDisp", "  ", "=", " ", 
        RowBox[{"maxCylinderLength", "-", "minCylinderHeight"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"barCrossSectionalWidth", " ", "=", " ", "51"}], ";", " ", 
       RowBox[{"(*", 
        RowBox[{"2", " ", "inches"}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{"barCrossSectionalHeight", " ", "=", " ", "51"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"axleDia", " ", "=", "5"}], ";", "\[IndentingNewLine]", 
       RowBox[{"bearingDia", " ", "=", " ", "10"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"axleLength", "=", "10"}], ";", "\[IndentingNewLine]", 
       RowBox[{"bearingLengh", "=", "5"}], ";", "\[IndentingNewLine]", 
       RowBox[{"motorLength", "=", "15"}], ";", "\[IndentingNewLine]", 
       RowBox[{"outerCylinderDia", "=", " ", "47"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"innerCylinderDia", " ", "=", " ", "38.5"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"addedOrigin", " ", "=", " ", "0"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", "Workspace", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"halfWorkSpaceLength", " ", "=", " ", 
        RowBox[{"minCylinderHeight", "+", " ", "maxDisp", " ", "+", " ", 
         RowBox[{"2", "*", "barCrossSectionalWidth"}]}]}], ";", " ", 
       RowBox[{"(*", 
        RowBox[{"along", " ", "Y"}], "*)"}], 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{
          RowBox[{"5", "*", "barCrossSectionalWidth"}], "+", 
          "maxCylinderLength"}], ";"}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{"(*", "firstHalf", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"frameOrigin", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"origin", "[", 
            RowBox[{"[", "1", "]"}], "]"}], " ", "+", " ", "offsetX"}], ",", 
          RowBox[{
           RowBox[{"origin", "[", 
            RowBox[{"[", "2", "]"}], "]"}], " ", "+", " ", "offsetY"}], ",", 
          " ", 
          RowBox[{
           RowBox[{"origin", "[", 
            RowBox[{"[", "3", "]"}], "]"}], " ", "+", " ", "offsetZ"}]}], 
         "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar1Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"frameOrigin", "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{"frameOrigin", "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", 
            RowBox[{"frameOrigin", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"frameOrigin", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "halfWorkSpaceWidth", " ", 
             "+", " ", 
             RowBox[{"2", " ", "*", " ", "barCrossSectionalWidth"}]}], ",", 
            " ", 
            RowBox[{
             RowBox[{"frameOrigin", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth"}],
             ",", 
            RowBox[{
             RowBox[{"frameOrigin", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", 
             "barCrossSectionalHeight"}]}], "}"}]}], "\[IndentingNewLine]", 
         "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{"counter", " ", "clockwise"}], "*)"}], "\[IndentingNewLine]", 
       
       RowBox[{"firstFrameBar2Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "-", "barCrossSectionalWidth"}],
             ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "-", "barCrossSectionalWidth", 
             "+", "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "halfWorkSpaceLength"}], 
            ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", 
             "barCrossSectionalHeight"}]}], "}"}]}], "\[IndentingNewLine]", 
         "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar3Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "halfWorkSpaceLength", "+",
              "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "halfWorkSpaceLength", "+",
              "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar4Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar2Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "-", "halfWorkSpaceWidth", "-", 
             "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar2Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar2Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar2Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "-", "halfWorkSpaceWidth", "-", 
             "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar2Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar2Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar5Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", 
             "barCrossSectionalHeight"}]}], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", 
             "barCrossSectionalHeight"}]}], "}"}]}], "\[IndentingNewLine]", 
         "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar6Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar5Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar5Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth"}],
             ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar5Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar5Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar5Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth"}],
             ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar5Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameOuterCylinder1Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", " ", 
             RowBox[{
              FractionBox["1", "2"], "*", "barCrossSectionalWidth"}]}], ",", 
            " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth"}],
             ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", " ", 
             RowBox[{
              FractionBox["1", "2"], "*", "barCrossSectionalHeight"}]}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", " ", 
             RowBox[{
              FractionBox["1", "2"], "*", "barCrossSectionalWidth"}]}], ",", 
            " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth", 
             "+", "outerCylinderHeight"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", " ", 
             RowBox[{
              FractionBox["1", "2"], "*", "barCrossSectionalHeight"}]}]}], 
           "}"}]}], "\[IndentingNewLine]", "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"firstFrameOuterCylinder2Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "halfWorkSpaceWidth", "+", 
             "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder1Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "+", "halfWorkSpaceWidth", "+", 
             "barCrossSectionalWidth"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameInnerCylinder1Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "y"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder1Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "y", "+", 
             "minCylinderHeight"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder1Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameInnerCylinder2Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameOuterCylinder2Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder2Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "y"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder2Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameOuterCylinder2Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameOuterCylinder2Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "y", "+", 
             "minCylinderHeight"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameOuterCylinder2Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar7Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar6Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth", 
             "+", "y", "+", "minCylinderHeight"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar6Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar6Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar6Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "2", "]"}], "]"}], "+", "barCrossSectionalWidth", 
             "+", "y", "+", "minCylinderHeight"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar6Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], "}"}]}], "\[IndentingNewLine]",
          "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"firstFrameBar8Points", " ", "=", " ", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar3Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar3Points", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar3Points", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", "barCrossSectionalHeight"}]
             }], "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"firstFrameBar3Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{"firstFrameBar3Points", "[", 
              RowBox[{"[", "2", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"firstFrameBar3Points", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "3", "]"}], "]"}], "+", 
             "barCrossSectionalHeight"}]}], "}"}]}], "\[IndentingNewLine]", 
         "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"axle1", "=", " ", 
          RowBox[{"axleAndBearingPointsCalc", "[", 
           RowBox[{
           "firstFrameBar6Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "0", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"axle2", "=", " ", 
          RowBox[{"axleAndBearingPointsCalc", "[", 
           RowBox[{
           "firstFrameBar6Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "1", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"axle3", "=", " ", 
          RowBox[{"axleAndBearingPointsCalc", "[", 
           RowBox[{
           "firstFrameBar8Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "1", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"axle4", "=", " ", 
          RowBox[{"motor", "[", 
           RowBox[{
           "firstFrameBar8Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "0", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "motorLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"axle5", "=", " ", 
          RowBox[{"axleAndBearingPointsCalc", "[", 
           RowBox[{
           "firstFrameBar7Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "0", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"axle6", "=", " ", 
          RowBox[{"axleAndBearingPointsCalc", "[", 
           RowBox[{
           "firstFrameBar7Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "1", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"chain1", " ", "=", " ", 
          RowBox[{"chain", "[", 
           RowBox[{
           "firstFrameBar6Points", ",", " ", "barCrossSectionalWidth", ",", 
            "barCrossSectionalHeight", ",", "  ", "\"\<x\>\"", ",", " ", "0", 
            ",", " ", "axleDia", ",", " ", "bearingDia", ",", " ", 
            "axleLength", ",", " ", "bearingLength"}], "]"}]}], ";"}], 
        "\[IndentingNewLine]", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar1Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar1Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], "\[IndentingNewLine]", 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar2Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar2Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar3Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar3Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar4Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar4Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar5Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar5Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar6Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar6Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cylinder", "[", 
          RowBox[{"firstFrameOuterCylinder1Points", ",", " ", 
           RowBox[{"outerCylinderDia", "/", "2"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cylinder", "[", 
          RowBox[{"firstFrameOuterCylinder2Points", ",", " ", 
           RowBox[{"outerCylinderDia", "/", "2"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "Cyan", ",", "\[IndentingNewLine]", 
         RowBox[{"Cylinder", "[", 
          RowBox[{"firstFrameInnerCylinder1Points", ",", " ", 
           RowBox[{"innerCylinderDia", "/", "2"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cylinder", "[", 
          RowBox[{"firstFrameInnerCylinder2Points", ",", " ", 
           RowBox[{"innerCylinderDia", "/", "2"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar7Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar7Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "Orange", ",", "\[IndentingNewLine]", 
         RowBox[{"Cuboid", "[", 
          RowBox[{
           RowBox[{"firstFrameBar8Points", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{"firstFrameBar8Points", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
        
        RowBox[{"(*", 
         RowBox[{
         "axle1", ",", "axle2", ",", " ", "axle3", ",", " ", "axle4", ",", 
          " ", "axle5", ",", " ", "axle6", ",", "\[IndentingNewLine]", 
          "chain1"}], "*)"}], "\[IndentingNewLine]", "}"}]}], 
      "\[IndentingNewLine]", "}"}]}], "]"}]}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"OneDoFFrame", "[", 
    RowBox[{"0", ",", "0", ",", "0", ",", " ", "0", ",", "0", ",", "0"}], 
    "]"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{"Graphics3D", "[", 
    RowBox[{
     RowBox[{"OneDoFFrame", "[", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "]"}], 
     ",", " ", 
     RowBox[{"Axes", "\[Rule]", " ", "True"}], ",", " ", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<X\>\"", ",", "\"\<Y\>\"", ",", " ", "\"\<Z\>\""}], 
       "}"}]}]}], "]"}], "*)"}]}], "\[IndentingNewLine]"}], "Input",
 InitializationCell->
  True,ExpressionUUID->"8843fb4b-7901-4b03-9bfa-17a329cfc9c6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Graphics3D", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{"OneDoFFrame", "[", 
       RowBox[{"0", ",", "y", ",", "0", ",", "0", ",", "0", ",", "0"}], "]"}],
       "}"}], ",", " ", 
     RowBox[{"Axes", "\[Rule]", " ", "False"}], ",", " ", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<X\>\"", ",", "\"\<Y\>\"", ",", " ", "\"\<Z\>\""}], 
       "}"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", ",", "0", ",", "190", ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", " ", 
   
   RowBox[{"AnimationRunning", "\[Rule]", "False"}], ",", " ", 
   RowBox[{"AnimationDirection", "\[Rule]", "ForwardBackward"}]}], 
  "]"}]], "Input",ExpressionUUID->"a3960e6a-e973-4232-be3c-ef37be8738ad"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`y$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`y$$], 0, 190}}, Typeset`size$$ = {360., {192., 199.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`y$225275$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`y$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`y$$, $CellContext`y$225275$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics3D[{
         $CellContext`OneDoFFrame[0, $CellContext`y$$, 0, 0, 0, 0]}, Axes -> 
        False, AxesLabel -> {"X", "Y", "Z"}], 
      "Specifications" :> {{$CellContext`y$$, 0, 190, Appearance -> "Labeled",
          AnimationRunning -> False, AnimationDirection -> ForwardBackward, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{407., {228., 235.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"36c1be41-\
69af-45e1-9c42-89063896e4f5"]
}, Open  ]]
},
WindowSize->{1528, 836},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.3 for Linux x86 (64-bit) (March 6, 2018)",
StyleDefinitions->"Default.nb"
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
Cell[1488, 33, 233, 4, 123, "Text",ExpressionUUID->"653a274c-dec1-48d6-a7ee-b193e8cd8ef3"],
Cell[1724, 39, 1524, 24, 468, "Text",ExpressionUUID->"7df758c8-f7f3-49d3-8d69-edb7858774be"],
Cell[3251, 65, 47115, 1073, 4994, "Input",ExpressionUUID->"8843fb4b-7901-4b03-9bfa-17a329cfc9c6",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[50391, 1142, 869, 20, 78, "Input",ExpressionUUID->"a3960e6a-e973-4232-be3c-ef37be8738ad"],
Cell[51263, 1164, 2114, 41, 482, "Output",ExpressionUUID->"36c1be41-69af-45e1-9c42-89063896e4f5"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature zu0jsNMmOIyRRCguRdCxKa6R *)
