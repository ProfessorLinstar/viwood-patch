.class public abstract Lcom/android/server/hdmi/HdmiCecKeycode;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# static fields
.field public static final KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 97

    .line 245
    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x13

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v6, 0x14

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v6, v4

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v7, 0x15

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move v7, v5

    new-instance v5, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x16

    const/4 v10, 0x4

    invoke-direct {v5, v9, v10, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v9, v6

    new-instance v6, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v11, 0x5

    const/4 v12, -0x1

    invoke-direct {v6, v12, v11, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move v11, v7

    new-instance v7, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v13, 0x6

    invoke-direct {v7, v12, v13, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v14, 0x7

    invoke-direct {v13, v12, v14, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v15, v9

    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move/from16 v16, v11

    const/16 v11, 0x8

    invoke-direct {v9, v12, v11, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v14, 0x9

    invoke-direct {v11, v8, v14, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v8, v11

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v10, 0x52

    invoke-direct {v11, v10, v14, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v14, 0xb0

    const/16 v12, 0xa

    invoke-direct {v10, v14, v12, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v14, v10

    move-object v10, v8

    move-object v8, v13

    new-instance v13, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v12, 0x100

    move-object/from16 v24, v0

    const/16 v0, 0xb

    invoke-direct {v13, v12, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v12, v14

    new-instance v14, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xc

    const/4 v0, -0x1

    invoke-direct {v14, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object v0, v15

    new-instance v15, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xd

    move-object/from16 v28, v0

    const/4 v0, 0x4

    invoke-direct {v15, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v19, v1

    const/16 v1, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe2

    move-object/from16 v30, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x101

    move-object/from16 v32, v1

    const/16 v1, 0x11

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0xea

    move-object/from16 v33, v2

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe3

    move-object/from16 v34, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe4

    move-object/from16 v35, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x20

    move-object/from16 v36, v0

    const/4 v0, 0x7

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x21

    move-object/from16 v18, v1

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x22

    move-object/from16 v17, v0

    const/16 v0, 0x9

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x23

    move-object/from16 v21, v1

    const/16 v1, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x24

    move-object/from16 v23, v0

    const/16 v0, 0xb

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x25

    move-object/from16 v26, v1

    const/16 v1, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x26

    move-object/from16 v27, v0

    const/16 v0, 0xd

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe

    move-object/from16 v29, v1

    const/16 v1, 0x27

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xf

    move-object/from16 v37, v0

    const/16 v0, 0x28

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x29

    move-object/from16 v38, v1

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x2a

    move-object/from16 v39, v0

    const/16 v0, 0x38

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0xa0

    move-object/from16 v41, v1

    const/16 v1, 0x2b

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0x1c

    move-object/from16 v42, v2

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x2f

    move-object/from16 v43, v0

    const/4 v0, -0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa6

    move-object/from16 v44, v1

    const/16 v1, 0x30

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa7

    move-object/from16 v45, v0

    const/16 v0, 0x31

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe5

    move-object/from16 v46, v1

    const/16 v1, 0x32

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xde

    move-object/from16 v47, v0

    const/16 v0, 0x33

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb2

    move-object/from16 v48, v1

    const/16 v1, 0x34

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa5

    move-object/from16 v49, v0

    const/16 v0, 0x35

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x36

    move-object/from16 v50, v1

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5c

    move-object/from16 v51, v0

    const/16 v0, 0x37

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5d

    move-object/from16 v52, v1

    const/16 v1, 0x38

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x1a

    move-object/from16 v40, v0

    const/16 v0, 0x40

    move-object/from16 v53, v4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x18

    const/16 v4, 0x41

    invoke-direct {v0, v2, v4, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x19

    move-object/from16 v54, v0

    const/16 v0, 0x42

    invoke-direct {v2, v4, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0xa4

    move-object/from16 v55, v1

    const/16 v1, 0x43

    move-object/from16 v56, v2

    const/4 v2, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x7e

    const/16 v4, 0x44

    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x45

    move-object/from16 v57, v0

    const/16 v0, 0x56

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x7f

    move-object/from16 v59, v1

    const/16 v1, 0x46

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v60, v2

    const/16 v2, 0x55

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x82

    move-object/from16 v62, v0

    const/16 v0, 0x47

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x59

    move-object/from16 v63, v1

    const/16 v1, 0x48

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5a

    move-object/from16 v64, v0

    const/16 v0, 0x49

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x81

    move-object/from16 v65, v1

    const/16 v1, 0x4a

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x4b

    move-object/from16 v66, v0

    const/16 v0, 0x57

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x58

    move-object/from16 v68, v1

    const/16 v1, 0x4c

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0x4d

    move-object/from16 v69, v2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v70, v0

    const/16 v0, 0x4e

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v71, v1

    const/16 v1, 0x4f

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v72, v0

    const/16 v0, 0x50

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xaf

    move-object/from16 v73, v1

    const/16 v1, 0x51

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v2, -0x1

    move-object/from16 v20, v0

    const/16 v0, 0x52

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xac

    move-object/from16 v74, v1

    const/16 v1, 0x53

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x102

    move-object/from16 v75, v0

    const/16 v0, 0x54

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v61, v1

    const/16 v1, 0x55

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v76, v0

    const/16 v0, 0x56

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v77, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v31, 0x10

    .line 348
    invoke-static/range {v31 .. v31}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v81

    const/16 v82, 0x0

    const/16 v78, 0xeb

    const/16 v79, 0x56

    const/16 v80, 0x1

    invoke-direct/range {v77 .. v82}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v78, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x60

    .line 351
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v82

    const/16 v83, 0x0

    const/16 v79, 0xec

    const/16 v80, 0x56

    const/16 v81, 0x1

    invoke-direct/range {v78 .. v83}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v79, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x80

    .line 354
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v83

    const/16 v84, 0x0

    const/16 v80, 0xee

    const/16 v81, 0x56

    const/16 v82, 0x1

    invoke-direct/range {v79 .. v84}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v80, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x90

    .line 357
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v84

    const/16 v85, 0x0

    const/16 v81, 0xef

    const/16 v82, 0x56

    const/16 v83, 0x1

    invoke-direct/range {v80 .. v85}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v81, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 360
    invoke-static/range {v16 .. v16}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v85

    const/16 v86, 0x0

    const/16 v82, 0xf1

    const/16 v83, 0x56

    const/16 v84, 0x1

    invoke-direct/range {v81 .. v86}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v22, v1

    const/4 v0, -0x1

    const/16 v1, 0x57

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v31, v2

    move-object/from16 v16, v4

    const/4 v2, 0x0

    const/16 v4, 0x60

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v25, v1

    const/16 v1, 0x61

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v58, v4

    const/16 v4, 0x62

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v67, v1

    const/16 v1, 0x63

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v82, v4

    const/16 v4, 0x64

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v83, v1

    const/16 v1, 0x65

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v84, v4

    const/16 v4, 0x66

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v85, v1

    const/16 v1, 0x67

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v86, v4

    const/16 v4, 0x68

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v87, v1

    const/16 v1, 0x69

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v88, v4

    const/16 v4, 0x6a

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v89, v1

    const/16 v1, 0x6b

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v90, v4

    const/16 v4, 0x6c

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v91, v1

    const/16 v1, 0x6d

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0xba

    const/16 v2, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb7

    move-object/from16 v92, v0

    const/16 v0, 0x72

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb8

    move-object/from16 v93, v1

    const/16 v1, 0x73

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb9

    move-object/from16 v94, v0

    const/16 v0, 0x74

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x87

    move-object/from16 v95, v1

    const/16 v1, 0x75

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe6

    move-object/from16 v96, v0

    const/16 v0, 0x76

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V

    move-object/from16 v2, v76

    move-object/from16 v76, v58

    move-object/from16 v58, v69

    move-object/from16 v69, v77

    move-object/from16 v77, v67

    move-object/from16 v67, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v37

    move-object/from16 v37, v46

    move-object/from16 v46, v54

    move-object/from16 v54, v64

    move-object/from16 v64, v74

    move-object/from16 v24, v21

    move-object/from16 v74, v31

    move-object/from16 v21, v36

    move-object/from16 v31, v39

    move-object/from16 v36, v45

    move-object/from16 v39, v48

    move-object/from16 v45, v55

    move-object/from16 v48, v57

    move-object/from16 v55, v65

    move-object/from16 v57, v68

    move-object/from16 v65, v75

    move-object/from16 v68, v22

    move-object/from16 v75, v25

    move-object/from16 v22, v18

    move-object/from16 v25, v23

    move-object/from16 v18, v33

    move-object/from16 v33, v42

    move-object/from16 v42, v51

    move-object/from16 v51, v16

    move-object/from16 v23, v17

    move-object/from16 v16, v30

    move-object/from16 v17, v32

    move-object/from16 v30, v38

    move-object/from16 v32, v41

    move-object/from16 v38, v47

    move-object/from16 v41, v50

    move-object/from16 v47, v56

    move-object/from16 v50, v60

    move-object/from16 v56, v66

    move-object/from16 v60, v71

    move-object/from16 v71, v79

    move-object/from16 v79, v83

    move-object/from16 v83, v87

    move-object/from16 v87, v91

    move-object/from16 v91, v94

    move-object/from16 v94, v1

    move-object/from16 v1, v19

    move-object/from16 v19, v34

    move-object/from16 v34, v43

    move-object/from16 v43, v52

    move-object/from16 v66, v61

    move-object/from16 v52, v62

    move-object/from16 v61, v72

    move-object/from16 v62, v73

    move-object/from16 v72, v80

    move-object/from16 v73, v81

    move-object/from16 v80, v84

    move-object/from16 v81, v85

    move-object/from16 v84, v88

    move-object/from16 v85, v89

    move-object/from16 v89, v92

    move-object/from16 v92, v95

    move-object/from16 v88, v4

    move-object/from16 v4, v53

    move-object/from16 v53, v63

    move-object/from16 v63, v20

    move-object/from16 v20, v35

    move-object/from16 v35, v44

    move-object/from16 v44, v40

    move-object/from16 v40, v49

    move-object/from16 v49, v59

    move-object/from16 v59, v70

    move-object/from16 v70, v78

    move-object/from16 v78, v82

    move-object/from16 v82, v86

    move-object/from16 v86, v90

    move-object/from16 v90, v93

    move-object/from16 v93, v96

    filled-new-array/range {v1 .. v94}, [Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    return-void
.end method

.method public static androidKeyToCecKey(I)[B
    .locals 3

    const/4 v0, 0x0

    .line 412
    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 413
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoCecKeycodeAndParamIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cecKeycodeAndParamsToAndroidKey([B)I
    .locals 4

    const/4 v0, 0x0

    .line 429
    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    .line 430
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoAndroidKeycodeIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I

    move-result v1

    if-eq v1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getKeycodeType(B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    .line 596
    const-string p0, "Unknown"

    return-object p0

    .line 531
    :pswitch_0
    const-string p0, "Function key"

    return-object p0

    .line 525
    :pswitch_1
    const-string p0, "Power on"

    return-object p0

    .line 523
    :pswitch_2
    const-string p0, "Power off"

    return-object p0

    .line 521
    :pswitch_3
    const-string p0, "Power toggle"

    return-object p0

    .line 576
    :pswitch_4
    const-string p0, "Functional"

    return-object p0

    .line 579
    :pswitch_5
    const-string p0, "Timer"

    return-object p0

    .line 564
    :pswitch_6
    const-string p0, "Media"

    return-object p0

    .line 517
    :pswitch_7
    const-string p0, "Volume mute"

    return-object p0

    .line 515
    :pswitch_8
    const-string p0, "Volume down"

    return-object p0

    .line 513
    :pswitch_9
    const-string p0, "Volume up"

    return-object p0

    .line 519
    :pswitch_a
    const-string p0, "Power"

    return-object p0

    .line 536
    :pswitch_b
    const-string p0, "Channel"

    return-object p0

    .line 549
    :pswitch_c
    const-string p0, "Number"

    return-object p0

    .line 594
    :pswitch_d
    const-string p0, "General"

    return-object p0

    .line 504
    :pswitch_e
    const-string p0, "Navigation"

    return-object p0

    .line 585
    :pswitch_f
    const-string p0, "Select"

    return-object p0

    .line 511
    :cond_0
    :pswitch_10
    const-string p0, "Menu"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x40
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x50
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x60
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static getMuteKey(Z)I
    .locals 0

    .line 0
    const/16 p0, 0x43

    return p0
.end method

.method public static intToSingleByteArray(I)[B
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x1

    .line 239
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isRepeatableKey(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 445
    :goto_0
    sget-object v2, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 446
    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$misRepeatableIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 448
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isSupportedKeycode(I)Z
    .locals 0

    .line 458
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVolumeKeycode(I)Z
    .locals 2

    .line 466
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 467
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x41

    if-eq v0, p0, :cond_0

    const/16 p0, 0x42

    if-eq v0, p0, :cond_0

    const/16 p0, 0x43

    if-eq v0, p0, :cond_0

    const/16 p0, 0x65

    if-eq v0, p0, :cond_0

    const/16 p0, 0x66

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
