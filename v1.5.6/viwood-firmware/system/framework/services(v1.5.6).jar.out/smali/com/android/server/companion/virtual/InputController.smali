.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "InputController.java"


# static fields
.field public static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceDescriptors:Landroid/util/ArrayMap;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field public final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$01sEoYmFLrArypyzJcRPU3RVqhM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LU3qwNeZqBTpQt435BDblRAWSxE(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uu-r0qSTZ4oUo4yYfoRNcHCFv8Q(Landroid/os/Handler;)Z
    .locals 0

    .line 113
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Uv1DNnuIOQk4S6cgtXSLvY3wmoM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XRZ4I4aEkG5eqjgHu047xsm9Yzo(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e7OjR5ys8FqU-mOd2TEfStRWlT8(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h4q6hXa3_j37gjmyGaYo4ibHyEc()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$kzjMsROvXK3A4Nscl_kfjh6nkIM(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController;->lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n7Xuh-Fem3ZZvob9nNb1xk3wyec(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/InputController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeCloseUinput(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteButtonEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteDpadKeyEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteKeyEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(JFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteScrollEvent(JFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusButtonEvent(JIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;)V
    .locals 6

    .line 111
    new-instance v1, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v1}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/InputController;-><init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 121
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 123
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 124
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 125
    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 126
    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 127
    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    return-void
.end method

.method public static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 297
    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "virtual%s:%d"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetricIdForInputType(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No metric known for input type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VirtualInputController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 870
    :pswitch_0
    const-string/jumbo p0, "virtual_devices.value_virtual_rotary_created_count"

    return-object p0

    .line 868
    :pswitch_1
    const-string/jumbo p0, "virtual_devices.value_virtual_stylus_created_count"

    return-object p0

    .line 866
    :pswitch_2
    const-string/jumbo p0, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    return-object p0

    .line 864
    :pswitch_3
    const-string/jumbo p0, "virtual_devices.value_virtual_dpad_created_count"

    return-object p0

    .line 862
    :pswitch_4
    const-string/jumbo p0, "virtual_devices.value_virtual_touchscreen_created_count"

    return-object p0

    .line 860
    :pswitch_5
    const-string/jumbo p0, "virtual_devices.value_virtual_mouse_created_count"

    return-object p0

    .line 858
    :pswitch_6
    const-string/jumbo p0, "virtual_devices.value_virtual_keyboard_created_count"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native nativeCloseUinput(J)V
.end method

.method private static native nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeWriteButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteDpadKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteRelativeEvent(JFFJ)Z
.end method

.method private static native nativeWriteRotaryEncoderScrollEvent(JFJ)Z
.end method

.method private static native nativeWriteScrollEvent(JFFJ)Z
.end method

.method private static native nativeWriteStylusButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteStylusMotionEvent(JIIIIIIIJ)Z
.end method

.method private static native nativeWriteTouchEvent(JIIIFFFFJ)Z
.end method


# virtual methods
.method public addDeviceForTesting(Landroid/os/IBinder;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 453
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;-><init>()V

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 133
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 139
    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 141
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .locals 2

    .line 236
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 237
    iget-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(J)V

    .line 238
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerInternal;->unsetTypeAssociation(Ljava/lang/String;)V

    .line 246
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 247
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerInternal;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 12

    move-object/from16 v9, p5

    move-object/from16 v8, p7

    .line 801
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/InputController;->validateDeviceName(Ljava/lang/String;)V

    move/from16 v5, p6

    .line 813
    invoke-virtual {p0, v5, v8}, Lcom/android/server/companion/virtual/InputController;->setUniqueIdAssociation(ILjava/lang/String;)V

    .line 814
    :try_start_0
    new-instance v1, Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v6, v5

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 815
    :try_start_1
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 825
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()I

    move-result v8
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v4, v1

    move-wide v1, v2

    .line 827
    :try_start_3
    new-instance v3, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    invoke-direct {v3, p0, v9}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 829
    :try_start_4
    invoke-interface {v9, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 838
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_5
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 843
    iget-object v10, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 844
    :try_start_6
    iget-object v11, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    move v4, p1

    move-object v7, p2

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 849
    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->getMetricIdForInputType(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 847
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v8, p7

    :goto_0
    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v8, p7

    .line 831
    :try_start_8
    new-instance v3, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v5, "Client died before virtual device could be created."

    invoke-direct {v3, v5, v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v8, p7

    :goto_1
    move-object v4, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v8, p7

    move-object v4, v1

    move-wide v1, v2

    .line 835
    :goto_2
    :try_start_9
    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->closeUinput(J)V

    .line 836
    throw v0

    :cond_1
    move-object v4, v1

    .line 818
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A native error occurred when creating virtual input device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_4
    move-exception v0

    goto :goto_1

    .line 814
    :goto_3
    :try_start_a
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_b
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception v0

    .line 839
    :goto_5
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    .line 840
    throw v0

    .line 802
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDpad(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10

    .line 146
    const-string v0, "Dpad"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x4

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 155
    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 156
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/input/InputManagerInternal;->addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    move-object v1, v9

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v6

    goto :goto_0

    .line 163
    :goto_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerInternal;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    .line 164
    throw p1
.end method

.method public createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10

    .line 170
    const-string v0, "Mouse"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x2

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public createNavigationTouchpad(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10

    .line 189
    const-string v0, "NavigationTouchpad"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    const-string/jumbo v1, "touchNavigation"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/input/InputManagerInternal;->setTypeAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda7;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v1

    move-object v8, v6

    const/4 v2, 0x5

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v6

    goto :goto_0

    .line 197
    :goto_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerInternal;->unsetTypeAssociation(Ljava/lang/String;)V

    .line 198
    throw p1
.end method

.method public createRotaryEncoder(Ljava/lang/String;IILandroid/os/IBinder;I)V
    .locals 10

    .line 214
    const-string v0, "RotaryEncoder"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    new-instance v1, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;)V

    move-object v9, v1

    move-object v1, v2

    const/4 v2, 0x7

    move v7, p5

    move-object v8, v6

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public createStylus(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10

    .line 205
    const-string v0, "Stylus"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v8, v6

    const/4 v2, 0x6

    move-object v1, p0

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;III)V
    .locals 10

    .line 179
    const-string v0, "Touchscreen"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p6

    move-object v6, v8

    move-object v1, v9

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;II)V

    move-object v8, v6

    const/4 v2, 0x3

    move-object v1, p0

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 433
    const-string v0, "    InputController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 436
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        ptr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          creationOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getCreationOrderNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          phys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getPhys()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          inputDeviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 447
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p0, :cond_0

    .line 387
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    .line 388
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getDisplayId()I

    move-result p0

    .line 387
    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerInternal;->getCursorPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 384
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get cursor position for input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInputDeviceDescriptors()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 464
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInputDeviceId(Landroid/os/IBinder;)I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getInputDeviceId()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get device id for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$createDpad$1(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createKeyboard$2(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createMouse$3(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createNavigationTouchpad$5(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createRotaryEncoder$7(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createStylus$6(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$createTouchscreen$4(Ljava/lang/String;IILjava/lang/String;II)Ljava/lang/Long;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->openUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 9

    .line 330
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 334
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 337
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 336
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeButtonEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 338
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 9

    .line 306
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 310
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 313
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 312
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeDpadKeyEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 314
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 9

    .line 318
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 322
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 325
    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 324
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeKeyEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 326
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 9

    .line 356
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 360
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 363
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 362
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRelativeEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 364
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 8

    .line 420
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 424
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getScrollAmount()F

    move-result v5

    .line 428
    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getEventTimeNanos()J

    move-result-wide v6

    .line 426
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 429
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 9

    .line 368
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 372
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 375
    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 374
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeScrollEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 376
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 9

    .line 407
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 411
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 413
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 414
    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getButtonCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getEventTimeNanos()J

    move-result-wide v7

    .line 413
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeStylusButtonEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 415
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 14

    .line 393
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 397
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getToolType()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getX()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getY()I

    move-result v8

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getPressure()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltX()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltY()I

    move-result v11

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getEventTimeNanos()J

    move-result-wide v12

    .line 399
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 403
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 14

    .line 342
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 346
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->getNativePointer()J

    move-result-wide v3

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v8

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v11

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/input/VirtualTouchEvent;->getEventTimeNanos()J

    move-result-wide v12

    .line 348
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;->writeTouchEvent(JIIIFFFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 352
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayEligibilityForPointerCapture(ZI)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerInternal;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public setDisplayImePolicy(II)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V

    return-void
.end method

.method public setMouseScalingEnabled(ZI)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setMouseScalingEnabled(ZI)V

    return-void
.end method

.method public setShowPointerIcon(ZI)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->setPointerIconVisible(ZI)V

    return-void
.end method

.method public final setUniqueIdAssociation(ILjava/lang/String;)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 302
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez v1, :cond_0

    .line 226
    const-string p0, "VirtualInputController"

    const-string p1, "Could not unregister input device for given token."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    .line 230
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final validateDeviceName(Ljava/lang/String;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 287
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    invoke-static {v2}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->-$$Nest$fgetmName(Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    new-instance p0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input device name already in use: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 293
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
