.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field public static final MODIFIER:Ljava/util/Map;

.field public static final SOURCES:Ljava/util/Map;


# instance fields
.field public final mInputEventInjector:Ljava/util/function/BiConsumer;


# direct methods
.method public static synthetic $r8$lambda$hGxb9MovDr1pEN3Qnb51vH9VzpA(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/InputShellCommand;->injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x71

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x39

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3a

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3b

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3c

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x30000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x76

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x50000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/16 v1, 0x101

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "keyboard"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x201

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x401

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamepad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1002

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchscreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2002

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mouse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4002

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stylus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10004

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "trackball"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x100008

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchpad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x200000

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "touchnavigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1000010

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "joystick"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x400000

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "rotaryencoder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/input/InputShellCommand;-><init>(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/view/InputEvent;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;Ljava/lang/Integer;)V
    .locals 1

    .line 142
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public final getAction()I
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 643
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "CANCEL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "MOVE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string v6, "DOWN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "UP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v3

    :pswitch_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_3
        0x201ca2 -> :sswitch_2
        0x2433d1 -> :sswitch_1
        0x760d227a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDisplayId()I
    .locals 3

    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 167
    const-string v0, "INVALID_DISPLAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    const-string v0, "DEFAULT_DISPLAY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 173
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    return v1

    .line 177
    :cond_2
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 179
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: Invalid arguments for display ID."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInputDeviceId(I)I
    .locals 5

    .line 155
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p0

    .line 156
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 157
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 158
    invoke-virtual {v4, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getSource(II)I
    .locals 0

    .line 0
    if-nez p1, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final getToolType(I)I
    .locals 0

    .line 0
    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x2

    return p0

    :sswitch_1
    const/4 p0, 0x3

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_0
        0xc002 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x100008 -> :sswitch_2
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 151
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final injectMotionEvent(IIJJFFFI)V
    .locals 16

    const/4 v0, 0x0

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x1

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v0, 0x2

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 198
    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move/from16 v15, p10

    .line 202
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    return-void
.end method

.method public final injectMotionEvent(IIJJLjava/util/Map;I)V
    .locals 18

    const/4 v0, 0x1

    .line 218
    new-array v7, v0, [Landroid/view/MotionEvent$PointerProperties;

    .line 221
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v7, v2

    .line 222
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 223
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v3

    iput v3, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 225
    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    .line 227
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v0, v8, v2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 229
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    aget-object v3, v8, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move/from16 v1, p8

    if-ne v1, v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v1

    .line 239
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v13

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v15, p1

    move/from16 v5, p2

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    .line 237
    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    const-wide/16 v1, 0x8

    .line 241
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent: when="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    move-object/from16 v1, p0

    .line 246
    iget-object v1, v1, Lcom/android/server/input/InputShellCommand;->mInputEventInjector:Ljava/util/function/BiConsumer;

    const/4 v2, 0x2

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 246
    invoke-interface {v1, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final lerp(FFF)F
    .locals 0

    .line 0
    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p2, p1

    return p2
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 282
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 284
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 289
    :goto_0
    const-string v1, "-d"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result p1

    .line 291
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, p1

    move-object p1, v4

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 295
    :goto_1
    :try_start_0
    const-string/jumbo v3, "text"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto/16 :goto_2

    .line 297
    :cond_2
    const-string v3, "keyevent"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_2

    .line 299
    :cond_3
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_2

    .line 301
    :cond_4
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_2

    .line 303
    :cond_5
    const-string v3, "draganddrop"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_2

    .line 305
    :cond_6
    const-string/jumbo v3, "press"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_2

    .line 307
    :cond_7
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_2

    .line 309
    :cond_8
    const-string/jumbo v3, "scroll"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runScroll(II)V

    goto :goto_2

    .line 311
    :cond_9
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 312
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_2

    .line 313
    :cond_a
    const-string v3, "keycombination"

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 314
    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_2

    .line 316
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v2

    .line 319
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Invalid arguments for command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onHelp()V
    .locals 4

    .line 326
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 327
    :try_start_0
    const-string v0, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 329
    const-string v0, "The sources are: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 333
    :cond_0
    const-string v0, "[axis_value] represents an option specifying the value of a given axis "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    const-string v0, "      The syntax is as follows: --axis <axis_name>,<axis_value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    const-string v0, "            where <axis_name> is the name of the axis as defined in "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    const-string v0, "            MotionEvent without the AXIS_ prefix (e.g. SCROLL, X)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v0, "      Sample [axis_values] entry: `--axis Y,3`, `--axis SCROLL,-2`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 339
    const-string v0, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v1, -0x1

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 339
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 342
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 343
    const-string v0, "The commands and default sources are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const-string v0, "      text <string> (Default: keyboard)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v0, "      keyevent [--longpress|--duration <duration to hold key down in ms>] [--doubletap] [--async] [--delay <duration between keycodes in ms>] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    const-string v0, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v0, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v0, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    const-string v0, "      press (Default: trackball)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    const-string v0, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string v0, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    const-string v0, "      scroll (Default: rotaryencoder). Has the following syntax:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v0, "            scroll <x> <y> [axis_value] (for pointer-based sources)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v0, "            scroll [axis_value] (for non-pointer-based sources)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const-string v0, "            Axis options: SCROLL, HSCROLL, VSCROLL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const-string v0, "            None or one or multiple axis value options can be specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    const-string v0, "            To specify multiple axes, use one axis option for per axis."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    const-string v0, "            Example: `scroll --axis VSCROLL,2 --axis SCROLL,-2.4`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string v0, "      keycombination [-t duration(ms)] <key code 1> <key code 2> ... (Default: keyboard, the key order is important here.)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :goto_1
    if-eqz p0, :cond_1

    .line 326
    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method public final readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;
    .locals 3

    .line 613
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    .line 614
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 615
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AXIS_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 619
    invoke-static {p0}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 624
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 616
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid --axis option value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final runDragAndDrop(II)V
    .locals 1

    const/16 v0, 0x1002

    .line 563
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x1

    .line 564
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runKeyCombination(II)V
    .locals 7

    .line 693
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 697
    const-string v1, "-t"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 700
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-wide v5, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .line 703
    :goto_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    :goto_1
    if-eqz v0, :cond_2

    .line 705
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 710
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 707
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown keycode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 714
    :cond_2
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    move-object v1, p0

    move v2, p1

    move v4, p2

    .line 718
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILandroid/util/IntArray;IJ)V

    return-void

    .line 715
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keycombination requires at least 2 keycodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runKeyEvent(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 416
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v2, v7

    move v3, v2

    move v4, v3

    move-wide v5, v8

    move-wide v10, v5

    .line 418
    :goto_0
    const-string v12, "--"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_0

    :goto_1
    move v12, v4

    move-wide v14, v5

    move v6, v3

    goto :goto_9

    :cond_0
    if-nez v2, :cond_2

    .line 419
    const-string v2, "--longpress"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v7

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v13

    :goto_3
    if-nez v3, :cond_4

    .line 420
    const-string v3, "--async"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    move v3, v7

    goto :goto_5

    :cond_4
    :goto_4
    move v3, v13

    :goto_5
    if-nez v4, :cond_6

    .line 421
    const-string v4, "--doubletap"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    move v4, v7

    goto :goto_7

    :cond_6
    :goto_6
    move v4, v13

    .line 422
    :goto_7
    const-string v12, "--delay"

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 423
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_8

    .line 424
    :cond_7
    const-string v12, "--duration"

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 427
    :cond_8
    :goto_8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_1

    :goto_9
    cmp-long v3, v10, v8

    if-lez v3, :cond_a

    if-nez v2, :cond_9

    goto :goto_a

    .line 430
    :cond_9
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "--duration and --longpress cannot be used at the same time."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyevent args should only contain either durationMs or longPress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_a
    if-eqz v2, :cond_b

    .line 436
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v10, v2

    :cond_b
    move-wide v3, v10

    :goto_b
    if-nez v13, :cond_c

    cmp-long v2, v14, v8

    if-lez v2, :cond_c

    .line 442
    invoke-virtual {v0, v14, v15}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 446
    :cond_c
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    move/from16 v1, p1

    move/from16 v5, p2

    .line 447
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    if-eqz v12, :cond_d

    .line 449
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v10, v1

    invoke-virtual {v0, v10, v11}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    move/from16 v1, p1

    move/from16 v5, p2

    .line 450
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIJIZ)V

    :cond_d
    move-wide/from16 v16, v3

    move v0, v6

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    move v6, v0

    move v13, v7

    move-wide/from16 v3, v16

    move-object/from16 v0, p0

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    goto/16 :goto_0
.end method

.method public final runMotionEvent(II)V
    .locals 7

    const/16 v0, 0x1002

    .line 659
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    .line 660
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x2

    if-eq v3, p1, :cond_2

    const/4 p1, 0x1

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 672
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 673
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    move-object v1, p0

    move v4, p1

    move v6, p2

    move v5, v0

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    move-object v1, p0

    move v4, p1

    move v5, v4

    move v6, p2

    goto :goto_2

    .line 665
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 666
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 677
    :goto_2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    return-void
.end method

.method public final runPress(II)V
    .locals 1

    const v0, 0x10004

    .line 502
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runRoll(II)V
    .locals 2

    const v0, 0x10004

    .line 568
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 569
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 570
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 569
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    return-void
.end method

.method public final runScroll(II)V
    .locals 10

    const/high16 v0, 0x400000

    .line 574
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result v2

    const/4 p1, 0x2

    and-int/lit8 v0, v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    .line 576
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 578
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 p1, 0xa

    .line 581
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 583
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "--axis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputShellCommand;->readAxisOptionValues(Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v0

    .line 587
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 590
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported option: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v3, 0x8

    move-wide v6, v4

    move-object v1, p0

    move v9, p2

    .line 594
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJLjava/util/Map;I)V

    return-void
.end method

.method public final runSwipe(II)V
    .locals 1

    const/16 v0, 0x1002

    .line 507
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method public final runTap(II)V
    .locals 2

    const/16 v0, 0x1002

    .line 489
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 490
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 491
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 490
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method public final runText(II)V
    .locals 1

    const/16 v0, 0x101

    .line 370
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    .line 371
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    return-void
.end method

.method public final sendKeyCombination(ILandroid/util/IntArray;IJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v14

    .line 725
    new-array v15, v14, [Landroid/view/KeyEvent;

    const/16 v16, 0x0

    .line 735
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v4, v16

    move v9, v4

    :goto_0
    if-ge v4, v14, :cond_0

    move-object/from16 v5, p2

    .line 728
    invoke-virtual {v5, v4}, Landroid/util/IntArray;->get(I)I

    move-result v7

    move-object v6, v1

    .line 729
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v13, v10

    const/4 v10, -0x1

    move/from16 v17, v4

    move-wide v4, v2

    move/from16 v18, v17

    move-object/from16 v17, v15

    move-object v15, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v4, v1

    move/from16 v1, p3

    .line 732
    invoke-virtual {v4, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 733
    aput-object v4, v17, v18

    .line 735
    sget-object v4, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v9, v4

    add-int/lit8 v4, v18, 0x1

    move-object v1, v15

    move-object/from16 v15, v17

    goto :goto_0

    :cond_0
    move-object/from16 v17, v15

    move-object v15, v1

    move/from16 v1, v16

    :goto_1
    const/4 v4, 0x1

    if-ge v1, v14, :cond_1

    .line 738
    aget-object v5, v17, v1

    .line 741
    invoke-virtual {v0, v5, v4}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p4

    .line 744
    invoke-virtual {v0, v5, v6}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    move/from16 v1, v16

    :goto_2
    if-ge v1, v14, :cond_2

    .line 746
    aget-object v5, v17, v1

    .line 747
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move/from16 v16, v1

    .line 748
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    move v13, v4

    move-wide v4, v2

    move/from16 v18, v14

    move v14, v13

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 751
    invoke-virtual {v0, v1, v14}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 752
    sget-object v1, Lcom/android/server/input/InputShellCommand;->MODIFIER:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    and-int/2addr v9, v1

    add-int/lit8 v1, v16, 0x1

    move v4, v14

    move/from16 v14, v18

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final sendKeyEvent(IIJIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 460
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-wide v7, v5

    move/from16 v16, p1

    move/from16 v10, p2

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v7, v4

    move/from16 v4, p5

    .line 463
    invoke-virtual {v7, v4}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 465
    invoke-virtual {v0, v7, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 466
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v8, v4

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    const/4 v12, 0x1

    if-lez v4, :cond_0

    .line 468
    invoke-virtual {v0, v8, v9}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 470
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v1, v13

    if-ltz v4, :cond_0

    .line 473
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v13, v4

    add-long/2addr v5, v13

    const/16 v4, 0x80

    .line 474
    invoke-static {v7, v5, v6, v12, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v4

    .line 476
    invoke-virtual {v0, v4, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    sub-long/2addr v1, v8

    cmp-long v4, v1, v10

    if-lez v4, :cond_0

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 484
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 485
    invoke-static {v1, v12}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public final sendMotionEvent(IIFFI)V
    .locals 11

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 688
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    .line 689
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendMove(IFFI)V
    .locals 11

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .line 638
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendSwipe(IIZ)V
    .locals 21

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    const/16 v0, 0x12c

    :cond_1
    move v13, v0

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    .line 524
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    move v14, v7

    move v15, v8

    if-eqz p3, :cond_2

    .line 528
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 530
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v5, v13

    add-long v16, v3, v5

    const/4 v5, 0x1

    move-wide/from16 v19, v1

    move v1, v5

    move-wide/from16 v5, v19

    :goto_1
    cmp-long v2, v5, v16

    if-gez v2, :cond_5

    sub-long v7, v5, v3

    int-to-float v2, v1

    const v9, 0x41055555

    mul-float/2addr v2, v9

    long-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-double v7, v2

    .line 540
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_4

    sub-long v9, v16, v5

    cmp-long v2, v7, v9

    if-lez v2, :cond_3

    .line 544
    invoke-virtual {v0, v9, v10}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    goto :goto_2

    .line 547
    :cond_3
    invoke-virtual {v0, v7, v8}, Lcom/android/server/input/InputShellCommand;->sleep(J)V

    .line 550
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v7, v5, v3

    long-to-float v2, v7

    int-to-float v7, v13

    div-float/2addr v2, v7

    .line 554
    invoke-virtual {v0, v14, v11, v2}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v7

    invoke-virtual {v0, v15, v12, v2}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    move/from16 v10, p2

    move/from16 v18, v1

    move/from16 v1, p1

    .line 553
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    add-int/lit8 v1, v18, 0x1

    .line 556
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v2, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move v7, v11

    move v8, v12

    .line 558
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendTap(IFFI)V
    .locals 11

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-wide v5, v3

    move-object v0, p0

    move v1, p1

    move v7, p2

    move v8, p3

    move v10, p4

    .line 496
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 498
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method public final sendText(ILjava/lang/String;I)V
    .locals 5

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v1, p2

    move v2, v1

    .line 383
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-eqz v2, :cond_1

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x73

    if-ne v2, v3, :cond_0

    const/16 v2, 0x20

    .line 387
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v1, v1, -0x1

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    move v2, p2

    .line 391
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, -0x1

    .line 397
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 398
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    move v1, p2

    .line 399
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 400
    aget-object v2, v0, v1

    .line 401
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    if-eq p1, v3, :cond_4

    .line 402
    invoke-virtual {v2, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 404
    :cond_4
    invoke-virtual {v2, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 405
    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final sleep(J)V
    .locals 0

    .line 763
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 765
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
