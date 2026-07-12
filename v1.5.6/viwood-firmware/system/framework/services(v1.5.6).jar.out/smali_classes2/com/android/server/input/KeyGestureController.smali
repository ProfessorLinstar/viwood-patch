.class public final Lcom/android/server/input/KeyGestureController;
.super Ljava/lang/Object;
.source "KeyGestureController.java"


# static fields
.field public static final DEBUG:Z

.field public static final mUserLock:Ljava/lang/Object;


# instance fields
.field final mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHasFeatureLeanback:Z

.field public mHasFeatureWatch:Z

.field public final mInputDataStore:Lcom/android/server/input/InputDataStore;

.field public final mInputGestureManager:Lcom/android/server/input/InputGestureManager;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public final mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

.field public final mKeyGestureHandlerRecords:Landroid/util/SparseArray;

.field public final mLastHandledEvents:Ljava/util/ArrayDeque;

.field public mPendingCapsLockToggle:Z

.field public mPendingHideRecentSwitcher:Z

.field public mPendingMetaAction:Z

.field public mPowerVolUpBehavior:I

.field public mRingerToggleChord:I

.field public mSearchKeyBehavior:I

.field public mSettingsKeyBehavior:I

.field public final mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

.field public final mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

.field public final mSystemPid:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# direct methods
.method public static synthetic $r8$lambda$4PRjtj8OHRdlnwn5_WqXshoVPTQ(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sf1Es3TGUz0CYGsl4UYFi8RH0Fw(Lcom/android/server/input/KeyGestureController;Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->lambda$initKeyGestures$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SkZtDf-juTn1Sesg7AZpQ5YVzto(Lcom/android/server/input/KeyGestureController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method public static synthetic $r8$lambda$mbUjwi2JsgUBPoJ0pQ_Q0JJY3EI(Lcom/android/server/input/KeyGestureController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->handleIoMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/input/KeyGestureController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/KeyGestureController;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/KeyGestureController;->handleMultiKeyGesture([IIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitBehaviorsFromSettings(Lcom/android/server/input/KeyGestureController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monKeyGestureEventListenerDied(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureEventListenerDied(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monKeyGestureHandlerRemoved(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 99
    const-string v0, "KeyGestureController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;)V
    .locals 6

    .line 190
    new-instance v5, Lcom/android/server/input/KeyGestureController$Injector;

    invoke-direct {v5}, Lcom/android/server/input/KeyGestureController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/KeyGestureController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 161
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 179
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    .line 186
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    .line 196
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance p2, Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-direct {p2, p3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    .line 199
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    .line 200
    new-instance p2, Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p2, v0}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    .line 201
    new-instance p2, Lcom/android/server/input/KeyGestureController$SettingsObserver;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3}, Lcom/android/server/input/KeyGestureController$SettingsObserver;-><init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;Lcom/android/server/input/KeyGestureController-IA;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    .line 202
    new-instance p2, Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-direct {p2, p1}, Lcom/android/server/input/AppLaunchShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    .line 203
    new-instance p2, Lcom/android/server/input/InputGestureManager;

    invoke-direct {p2, p1}, Lcom/android/server/input/InputGestureManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 204
    invoke-virtual {p5, p1, v0}, Lcom/android/server/input/KeyGestureController$Injector;->getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 206
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 207
    iput-object p4, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    .line 208
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 209
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviors()V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initKeyCombinationRules()V

    return-void
.end method


# virtual methods
.method public addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1182
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return p2
.end method

.method public final createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;
    .locals 0

    .line 1435
    new-instance p0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {p0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    .line 1436
    iput p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    .line 1437
    iput-object p2, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    .line 1438
    iput p3, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1439
    iput p4, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 1440
    iput p5, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    .line 1441
    iput p6, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    .line 1442
    iput p7, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-eqz p8, :cond_3

    .line 1444
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz p1, :cond_0

    check-cast p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 1445
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    return-object p0

    .line 1446
    :cond_0
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz p1, :cond_1

    check-cast p8, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 1447
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    return-object p0

    .line 1448
    :cond_1
    instance-of p1, p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz p1, :cond_2

    check-cast p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 1449
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    .line 1450
    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    return-object p0

    .line 1452
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppLaunchData type is invalid!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1478
    const-string v0, "KeyGestureController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingMetaAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingCapsLockToggle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingHideRecentSwitcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSearchKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSettingsKeyBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRingerToggleChord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerVolUpBehavior = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    const-string v0, "mKeyGestureEventListenerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1493
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 1495
    const-string v4, ", "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1498
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1501
    :try_start_1
    const-string v0, "mKeyGestureHandlerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1504
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1505
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    .line 1507
    const-string v3, ", "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1510
    :cond_3
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedKeyGestures = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 1512
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v2

    .line 1511
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1515
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1516
    const-string v0, "Last handled KeyGestureEvents: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1518
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyGestureEvent;

    .line 1519
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    .line 1521
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1522
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1523
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/server/input/AppLaunchShortcutManager;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1524
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputGestureManager;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 1513
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 1498
    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getAccessibilityShortcutTimeout()J
    .locals 7

    .line 1459
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1461
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1462
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_shortcut_dialog_shown"

    iget v4, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    const/4 v5, 0x0

    .line 1461
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    .line 1464
    :goto_0
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 1465
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-static {v4, v6, v5, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move v5, v3

    :cond_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1473
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1472
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1473
    :goto_2
    monitor-exit v0

    return-wide v1

    .line 1474
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .locals 3

    .line 1220
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {p0}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object p0

    .line 1221
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/input/AidlInputGestureData;

    const/4 v1, 0x0

    .line 1222
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1223
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)[Landroid/hardware/input/AidlInputGestureData;
    .locals 1

    .line 1209
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object p0

    .line 1211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/input/AidlInputGestureData;

    const/4 p2, 0x0

    .line 1212
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1213
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    .line 1428
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 1429
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .locals 0

    .line 1167
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    .line 1168
    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p2

    .line 1167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getInputGesture(ILandroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1172
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public final handleIoMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1111
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1118
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1119
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->loadInputGestures(I)V

    goto :goto_0

    .line 1113
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->persistInputGestures(I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public handleKeyGesture(I[III)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1022
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p0

    const/4 p1, 0x0

    .line 1025
    invoke-virtual {v0, p0, p1}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 969
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    move-object/from16 p2, p7

    .line 968
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public final handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .locals 3

    .line 974
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    .line 975
    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 982
    const-string p0, "KeyGestureController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 985
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 986
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    .line 987
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 988
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1098
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1104
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    goto :goto_0

    .line 1100
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1101
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    :goto_0
    return v1
.end method

.method public final handleMultiKeyGesture([IIII)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .line 952
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method public handleTouchpadGesture(I)V
    .locals 3

    .line 1031
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForTouchpadGesture(II)Landroid/hardware/input/InputGestureData;

    move-result-object p1

    .line 1034
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 1038
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v0

    .line 1039
    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p1

    .line 1038
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyGestureController;->handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1034
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleTouchpadGesture(ILandroid/hardware/input/AppLaunchData;)V
    .locals 11

    const/4 v0, 0x0

    .line 959
    new-array v3, v0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move v5, p1

    move-object v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method public final initBehaviors()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 215
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    .line 216
    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    .line 218
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0132

    .line 219
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 222
    :cond_0
    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    :cond_1
    const v1, 0x10e0134

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-ltz v0, :cond_2

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 227
    :cond_2
    iput v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final initBehaviorsFromSettings()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 235
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    .line 239
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 239
    const-string v2, "key_chord_power_volume_up"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    return-void
.end method

.method public final initKeyCombinationRules()V
    .locals 5

    .line 246
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x1a

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/input/KeyGestureController$1;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 276
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$2;

    const/16 v4, 0x108

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/input/KeyGestureController$2;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/input/KeyGestureController$3;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$4;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/server/input/KeyGestureController$4;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 379
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$5;

    const/16 v2, 0x14

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/input/KeyGestureController$5;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v1, Lcom/android/server/input/KeyGestureController$6;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/input/KeyGestureController$6;-><init>(Lcom/android/server/input/KeyGestureController;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final initKeyGestures()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x37

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/KeyGestureController;)V

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 8

    .line 515
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    .line 516
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 517
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 521
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v2, p2}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v3

    :cond_0
    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 528
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v5, p3}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    sub-long/2addr v5, v1

    return-wide v5

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_2

    .line 538
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 539
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 543
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-wide v3

    .line 548
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 549
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 550
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 552
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    if-eqz p1, :cond_6

    return-wide v3

    :cond_6
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 3

    .line 481
    iget-boolean v0, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 484
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->isDefaultDisplayOn()Z

    move-result v2

    .line 488
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-eqz p2, :cond_2

    if-eqz v2, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/policy/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 14

    move-object/from16 v9, p2

    .line 561
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 562
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 563
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    const v3, 0x11003

    and-int/2addr v3, v2

    .line 564
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v11

    .line 565
    :goto_0
    invoke-virtual {v9}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    .line 566
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    move v4, v1

    .line 567
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v11

    .line 572
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v4, :cond_2

    invoke-static {v10}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 573
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    .line 576
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_3

    invoke-static {v10}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v10}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 577
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 581
    :cond_3
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v4, v9}, Lcom/android/server/input/AppLaunchShortcutManager;->interceptKey(Landroid/view/KeyEvent;)Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-result-object v4

    .line 583
    invoke-virtual {v4}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed()Z

    move-result v5

    if-eqz v5, :cond_4

    return v12

    .line 586
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 587
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    .line 590
    invoke-virtual {v4}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/16 v4, 0x33

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 587
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :cond_5
    if-eqz v13, :cond_6

    .line 596
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v4, v9}, Lcom/android/server/input/InputGestureManager;->getSystemShortcutForKeyEvent(Landroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 599
    filled-new-array {v10}, [I

    move-result-object v2

    .line 600
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v5

    .line 602
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    move v4, v5

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 599
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :cond_6
    const/16 v0, 0x3d

    const/16 v4, 0x75

    const/16 v5, 0x39

    if-eq v10, v5, :cond_2a

    const/16 v7, 0x3a

    if-eq v10, v7, :cond_2a

    if-eq v10, v0, :cond_29

    const/16 v0, 0x73

    if-eq v10, v0, :cond_28

    const/16 v0, 0xb0

    if-eq v10, v0, :cond_25

    const/16 v0, 0xbb

    if-eq v10, v0, :cond_22

    const/16 v0, 0xcc

    if-eq v10, v0, :cond_20

    const/16 v0, 0xe7

    if-eq v10, v0, :cond_1f

    const/16 v0, 0x11c

    if-eq v10, v0, :cond_1d

    const/16 v0, 0x13e

    if-eq v10, v0, :cond_1b

    const/16 v0, 0x142

    if-eq v10, v0, :cond_19

    const/16 v0, 0x53

    if-eq v10, v0, :cond_17

    const/16 v0, 0x54

    if-eq v10, v0, :cond_16

    if-eq v10, v4, :cond_11

    const/16 v0, 0x76

    if-eq v10, v0, :cond_11

    const/16 v0, 0x144

    if-eq v10, v0, :cond_f

    const/16 v0, 0x145

    if-eq v10, v0, :cond_d

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_0
    if-eqz v13, :cond_7

    .line 611
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_7
    return v12

    .line 855
    :pswitch_1
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :pswitch_2
    if-nez v2, :cond_8

    .line 661
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_8
    return v12

    :pswitch_3
    if-eqz v2, :cond_9

    .line 652
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_9
    return v12

    :pswitch_4
    if-eqz v2, :cond_a

    .line 644
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_a
    return v12

    :pswitch_5
    if-eqz v2, :cond_c

    .line 634
    filled-new-array {v10}, [I

    move-result-object v2

    const/16 v0, 0xdd

    if-ne v10, v0, :cond_b

    const/16 v0, 0xd

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_b
    const/16 v0, 0xe

    goto :goto_2

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_c
    return v12

    .line 845
    :pswitch_6
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_d
    if-eqz v13, :cond_e

    .line 836
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x35

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_e
    return v12

    :cond_f
    if-eqz v13, :cond_10

    .line 825
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_10
    return v12

    :cond_11
    if-eqz v2, :cond_13

    .line 743
    invoke-virtual {v9}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 744
    iput-boolean v12, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 745
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_4

    .line 747
    :cond_12
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 748
    iput-boolean v12, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_4

    .line 752
    :cond_13
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v2, :cond_14

    .line 753
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 754
    filled-new-array {v4, v5}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_4

    .line 760
    :cond_14
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v2, :cond_15

    .line 761
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-nez v8, :cond_15

    .line 763
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_15
    :goto_4
    return v12

    :cond_16
    if-eqz v13, :cond_2e

    .line 684
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    if-ne v2, v12, :cond_2e

    .line 685
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :cond_17
    if-nez v2, :cond_18

    .line 677
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_18
    return v12

    :cond_19
    if-eqz v13, :cond_1a

    .line 861
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x4b

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_1a
    return v12

    :cond_1b
    if-eqz v13, :cond_1c

    .line 734
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_1c
    return v12

    :cond_1d
    if-eqz v13, :cond_1e

    .line 669
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_1e
    return v12

    .line 848
    :cond_1f
    const-string v0, "KeyGestureController"

    const-string v1, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_20
    if-eqz v13, :cond_21

    .line 711
    filled-new-array {v10}, [I

    move-result-object v2

    .line 712
    invoke-virtual {v9}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    .line 711
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_21
    return v12

    :cond_22
    if-eqz v13, :cond_23

    .line 619
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_5

    :cond_23
    if-nez v2, :cond_24

    .line 624
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_24
    :goto_5
    return v12

    :cond_25
    if-eqz v13, :cond_27

    .line 694
    iget v2, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-nez v2, :cond_26

    .line 695
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_6

    :cond_26
    if-ne v2, v12, :cond_27

    .line 701
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_27
    :goto_6
    return v12

    :cond_28
    if-nez v2, :cond_2e

    .line 722
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v2

    .line 727
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v12, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 729
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    :cond_29
    if-eqz v13, :cond_2e

    .line 774
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-nez v2, :cond_2e

    .line 776
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, -0xc2

    const/4 v4, 0x2

    .line 777
    invoke-static {v2, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 779
    iput-boolean v12, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 780
    filled-new-array {v10}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x36

    const/4 v5, 0x1

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :cond_2a
    move v7, v1

    if-eqz v2, :cond_2c

    .line 793
    invoke-virtual {v9}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 794
    iput-boolean v12, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 795
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    :goto_7
    move v1, v7

    goto :goto_8

    .line 797
    :cond_2b
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    goto :goto_7

    .line 800
    :cond_2c
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v2, :cond_2d

    .line 801
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    .line 802
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x36

    const/4 v5, 0x2

    move-object v0, p0

    move v1, v7

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :cond_2d
    move v1, v7

    .line 811
    iget-boolean v2, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v2, :cond_2e

    .line 812
    iput-boolean v11, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    .line 813
    filled-new-array {v4, v5}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x2

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    .line 872
    :cond_2e
    :goto_8
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v2, v9}, Lcom/android/server/input/AppLaunchShortcutManager;->handleShortcutService(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return v12

    :cond_2f
    if-eqz v13, :cond_31

    .line 879
    sget-object v2, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v2

    .line 880
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v5, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v4, v5, v9}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForKeyEvent(ILandroid/view/KeyEvent;)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    .line 882
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_30

    return v11

    .line 886
    :cond_30
    filled-new-array {v10}, [I

    move-result-object v2

    .line 887
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v5

    .line 889
    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    move v4, v5

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 886
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return v12

    :catchall_0
    move-exception v0

    .line 882
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_31
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0xdb
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x131
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 15

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 899
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    .line 900
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    .line 901
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v11

    const/16 v5, 0x36

    if-eq v0, v5, :cond_4

    const/16 v5, 0x3e

    if-eq v0, v5, :cond_3

    const/16 v5, 0x6f

    if-eq v0, v5, :cond_2

    const/16 v4, 0x78

    if-eq v0, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 931
    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x2

    move-object v5, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    .line 938
    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 939
    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3d

    const/4 v10, 0x2

    move-object v5, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    and-int/lit16 v1, v4, -0xc2

    const/16 v2, 0x1000

    .line 907
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 909
    filled-new-array {v0}, [I

    move-result-object v7

    .line 910
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    or-int/lit16 v8, v0, 0x1000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x2

    move-object v5, p0

    move-object/from16 v12, p2

    .line 909
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/16 v1, 0x1002

    .line 919
    invoke-static {v4, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 922
    filled-new-array {v0}, [I

    move-result-object v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v8, 0x1002

    const/16 v9, 0x3c

    const/4 v10, 0x2

    move-object v5, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_5
    :goto_1
    return v3
.end method

.method public final isDefaultDisplayOn()Z
    .locals 1

    .line 1058
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 1062
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$initKeyGestures$0(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 2

    .line 463
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result p2

    const/16 v0, 0x37

    if-ne p2, v0, :cond_1

    .line 465
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, p2, :cond_0

    .line 466
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    .line 468
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 469
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->getAccessibilityShortcutTimeout()J

    move-result-wide v0

    .line 467
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 471
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 474
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Received a key gesture "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyGestureController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadInputGestures(I)V
    .locals 4

    .line 1366
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v0

    .line 1367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1368
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputDataStore;->loadInputGestures(I)Ljava/util/List;

    move-result-object v1

    .line 1370
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 1371
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1373
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 3

    .line 1085
    sget-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1086
    const-string v0, "KeyGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key gesture event occurred, event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1090
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1091
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1093
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyKeyGestureCompleted(I[III)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1014
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[IIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p0

    .line 1017
    iget-object p1, v0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 5

    .line 1067
    iget v0, p1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyGestureController;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1071
    :cond_0
    new-instance v1, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v1, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1072
    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1073
    iget-object v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget v3, p1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    .line 1074
    invoke-virtual {v1}, Landroid/hardware/input/KeyGestureEvent;->getLogEvent()I

    move-result v4

    .line 1073
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardSystemsEventReportedAtom(Landroid/view/InputDevice;[III)V

    .line 1076
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyGestureController;->notifyAllListeners(Landroid/hardware/input/AidlKeyGestureEvent;)V

    .line 1077
    :goto_0
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_2

    .line 1078
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 1080
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final onKeyGestureEventListenerDied(I)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1230
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onKeyGestureHandlerRemoved(I)V
    .locals 3

    .line 1346
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1347
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1349
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1350
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1353
    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final persistInputGestures(I)V
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    const/4 v2, 0x0

    .line 1359
    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v1

    .line 1361
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/InputDataStore;->saveInputGestures(ILjava/util/List;)V

    .line 1362
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .locals 3

    .line 1129
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1134
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1138
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1131
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1141
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;I)V
    .locals 6

    .line 1290
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1295
    array-length v1, p1

    if-eqz v1, :cond_3

    .line 1298
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 1299
    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1300
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Key gesture "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is already registered by pid = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    .line 1302
    invoke-virtual {p0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1305
    :cond_1
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    :try_start_2
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1312
    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    aget v1, p1, v2

    .line 1313
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, p3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1315
    :cond_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 1309
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1296
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No key gestures provided for pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1292
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has already registered a KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1315
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 0

    .line 1338
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/AppLaunchShortcutManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    return-void
.end method

.method public removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    .line 1203
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->removeCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1194
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return p2
.end method

.method public setCurrentUserId(I)V
    .locals 1

    .line 1044
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1045
    :try_start_0
    iput p1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 1046
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 1048
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    .line 1046
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-void
.end method

.method public final shouldIgnoreGestureEventForVisibleBackgroundUser(II)Z
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p2

    .line 996
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 998
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p2, :cond_1

    .line 1000
    invoke-static {p1}, Landroid/hardware/input/KeyGestureEvent;->isVisibleBackgrounduserAllowedGesture(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1001
    sget-boolean p0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1002
    const-string p0, "KeyGestureController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored gesture event ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] for visible background user ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 998
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shouldIgnoreKeyEventForVisibleBackgroundUser(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    .line 494
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    .line 497
    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iget p0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 499
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, v0, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 502
    sget-boolean p0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 503
    const-string p0, "KeyGestureController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored key event ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] for visible background user ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 499
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public systemRunning()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController$SettingsObserver;->-$$Nest$mobserve(Lcom/android/server/input/KeyGestureController$SettingsObserver;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/input/AppLaunchShortcutManager;->init()V

    .line 446
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v1}, Lcom/android/server/input/AppLaunchShortcutManager;->getBookmarks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputGestureManager;->init(Ljava/util/List;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initKeyGestures()V

    .line 450
    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    .line 452
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;I)V
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    .line 1149
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    if-eqz v1, :cond_1

    .line 1154
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_0

    .line 1158
    iget-object p1, v1, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1159
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1155
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1151
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1160
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;I)V
    .locals 3

    .line 1321
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    if-eqz v1, :cond_1

    .line 1327
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_0

    .line 1331
    iget-object p1, v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1332
    invoke-virtual {p0, p2}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    .line 1333
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1328
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has a different registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1324
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The calling process has no registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1333
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
