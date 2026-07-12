.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
.implements Lcom/android/server/inputmethod/ZeroJankProxy$Callback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;


# instance fields
.field public isSoftChangeMode:Z

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public final mClientController:Lcom/android/server/inputmethod/ClientController;

.field public final mConcurrentMultiUserModeEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentImeUserId:I

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

.field public final mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field public final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field public final mImeTargetWindowMap:Ljava/util/WeakHashMap;

.field public final mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public final mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

.field public final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field public final mIoHandler:Landroid/os/Handler;

.field public mIsInteractive:Z

.field public final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public final mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

.field public final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field public final mNonPreemptibleInputMethods:[Ljava/lang/String;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPreventImeStartupUnlessTextEditor:Z

.field public mPreviousMode:I

.field public final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field public final mRes:Landroid/content/res/Resources;

.field public mShowOngoingImeSwitcherForPhones:Z

.field public final mSlotIme:Ljava/lang/String;

.field public final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

.field public final mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStylusIds:Landroid/util/IntArray;

.field public mSystemReady:Z

.field public final mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field public mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceMethodMap:Landroid/util/SparseArray;

.field public final mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$1TqIrI9XJE4lxfBne2GydQhihes(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodWindowVisibleHeight$14(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2yaYCGdi-FTFk0U0SqmQylExNO8(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$983-c7NwhEF0jLAeuQHyp1MN8ns(Ljava/io/PrintWriter;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 2

    .line 6767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ajy1LD49oef-aSSPQjitblYi7ZI(Lcom/android/server/inputmethod/InputMethodManagerService;I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BEz7B_GfpYorp3byjexNG-cuYqw(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 5617
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KrFDfFLY4gr7ocZ24OnQ68i_eoY(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ql7KM-KMloBIXWj7EANZ9i7Cguk(Lcom/android/server/inputmethod/InputMethodManagerService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromSystem$13(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RS303u830fPb0-h1ENayK8Q3YOw(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$reportPerceptibleAsync$11(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RXRc-iFyhS9it8Ka156p1npK7sM(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getInputMethodListInternal$7(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UbvZWBJ9FowzhVdSuWcXtKNAZQI(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$2(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEceZF6bY0rI6AFbpWd7gUm8Nlk(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$registerImeRequestedChangedListener$6(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYCHd6BDARvPknQOP_ZKhBudPAc(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$onClientRemoved$9(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCEyGYt3-EDhYtpurxMdhAGGV74(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 4721
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$c0KojPg373V8KtUN5zFx9FFQqgE(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$cCwLRaPWPX20-PL5OitHL2Oa0Ok(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 4711
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeTraceEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaQwAKUurUC2LiayrMIP9Pm8bIg(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$systemRunning$5(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaRt77TJt2ZlBAijIwXdLdc8i9E(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$getEnabledInputMethodListInternal$8(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gc2B2e-iZDkF-fiY0ixQiu1CSIo(Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 4812
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lV4X0NWkmvwKMJD9qmfCJr7nTdI(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$clearClientSessionsLocked$10(ILcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYOQNX7TBpWmwEqMlATXd5Qayic(Landroid/util/Printer;Lcom/android/server/inputmethod/ClientState;)V
    .locals 2

    .line 6271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      fallbackInputConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      sessionRequestedForAccessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      selfReportedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m8aMtKnmJed5P-c7nAfFCT_Y8xs(Landroid/util/Printer;Lcom/android/server/inputmethod/UserData;)V
    .locals 3

    .line 6291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      unlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      hasMainConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      isVisibleBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      boundToMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      curClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6297
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v1, "        "

    if-eqz v0, :cond_0

    .line 6298
    const-string v0, "      curEditorInfo:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6299
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6301
    :cond_0
    const-string v0, "      curEditorInfo: null"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6303
    :goto_0
    const-string v0, "      imeBindingState:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6304
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      enabledSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      inFullscreenMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      imeDrawsNavBar="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6308
    const-string v0, "      switchingController:"

    invoke-interface {p0, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6309
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mLastEnabledInputMethodsStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4DisDUdgDij-anD9rB61YeXSHI(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$dumpAsStringNoCheck$20(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPn4z2XMgE9CUUJb_hyzqDQmWhk(Ljava/util/List;ILcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0

    .line 5097
    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;->onInputMethodListUpdated(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tD4AJAoKEevBz8mIP80L1ekxO28(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$showInputMethodPickerFromClient$12(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ClientController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConcurrentMultiUserModeEnabled(Lcom/android/server/inputmethod/InputMethodManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentImeUserId(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusedWindowPerceptible(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/WeakHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIoHandler(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMenuControllerNew(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserDataRepository(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/UserDataRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManagerInternal(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceMethodMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUserSwitchHandlerTask(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyImeVisibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->applyImeVisibilityLocked(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mattachNewAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcreateAccessibilityInputMethodSessions(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetEnabledInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;II)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetEnabledInputMethodSubtypeListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZII)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInputMethodListInternal(Lcom/android/server/inputmethod/InputMethodManagerService;III)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandListInputMethods(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandResetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandSetInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhideMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monImeSwitchButtonClickLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monStylusHandwritingReadyLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUpdateResourceOverlay(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateResourceOverlay(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpublishLocalService(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->publishLocalService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveStylusDeviceIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportFullscreenModeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportStartInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetStylusHandwritingLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetStylusHandwritingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveImeUserIdFromDisplayIdLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresolveImeUserIdFromWindowLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshowMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mswitchToInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeWindowStatusLocked(ZI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;III)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisStylusDevice(Landroid/view/InputDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const v0, 0xf423f

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;)V"
        }
    .end annotation

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 460
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 462
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 466
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 481
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->isSoftChangeMode:Z

    const/4 v2, 0x3

    .line 482
    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    .line 484
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    .line 590
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    .line 613
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 616
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v2, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 626
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 630
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 634
    new-instance v2, Lcom/android/server/inputmethod/StartInputHistory;

    invoke-direct {v2}, Lcom/android/server/inputmethod/StartInputHistory;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 639
    new-instance v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    invoke-direct {v2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;-><init>()V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 6050
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1263
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 1264
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    .line 1265
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1268
    invoke-static {p3, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1269
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    .line 1270
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {p1, v4, p4}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->onStart(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;Landroid/os/Handler;)V

    .line 1271
    new-instance p4, Lcom/android/server/inputmethod/ImeTrackerService;

    invoke-direct {p4, v3}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 1272
    const-class p4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1273
    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1274
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1275
    const-class v4, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 1276
    new-instance v4, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v4}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 1277
    new-instance v4, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    invoke-direct {v4}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 1278
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const v4, 0x1040a0b

    .line 1280
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1282
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1284
    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup;->values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1286
    invoke-virtual {p4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p4

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1288
    new-instance p4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1290
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1293
    new-instance v4, Lcom/android/server/inputmethod/UserDataRepository;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p4

    .line 1295
    :goto_0
    invoke-direct {v4, p5, v1}, Lcom/android/server/inputmethod/UserDataRepository;-><init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 1297
    new-instance p4, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 1299
    new-instance p4, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-direct {p4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;-><init>()V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    .line 1300
    new-instance p4, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 1302
    new-instance p4, Lcom/android/server/inputmethod/ClientController;

    invoke-direct {p4, v3}, Lcom/android/server/inputmethod/ClientController;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 1303
    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-direct {p5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {p4, p5}, Lcom/android/server/inputmethod/ClientController;->addClientControllerCallback(Lcom/android/server/inputmethod/ClientController$ClientControllerCallback;)V

    const p4, 0x1110007

    .line 1305
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const p4, 0x107009e

    .line 1307
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    .line 1309
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 1310
    new-instance p4, Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {p5, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-direct {p4, p1, p3, p5, p2}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerDeviceListenerAndCheckStylusSupport()V

    .line 1313
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    invoke-direct {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 1314
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static computeImeDisplayIdForTarget(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 1

    const/4 v0, 0x0

    .line 2370
    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result p0

    return p0
.end method

.method public static computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I
    .locals 1

    if-eq p0, p2, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2400
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;->getDisplayImePolicy(I)I

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return p2
.end method

.method public static filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 11

    .line 5279
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5280
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    .line 5304
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5282
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 5283
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 5284
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5285
    invoke-static {v4}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v6

    .line 5286
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "InputMethodManagerService"

    if-nez v7, :cond_0

    .line 5287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": it does not require the permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5293
    :cond_0
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v8, "Checking %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5296
    :try_start_0
    new-instance v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5297
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v8, p1, v4, v10}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 5298
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 5301
    :cond_1
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 5303
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5304
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v10, 0x14

    if-ge v5, v10, :cond_2

    goto :goto_1

    .line 5312
    :cond_2
    const-string v4, "Found an input method, but ignored due threshold: %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    .line 5307
    :cond_3
    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5306
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5309
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5310
    const-string v4, "Found an input method %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 5316
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load input method "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5319
    :cond_4
    invoke-static {v1}, Lcom/android/server/inputmethod/RawInputMethodMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 4208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0

    .line 1377
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;
    .locals 7

    .line 4636
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4637
    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 4638
    invoke-virtual {p0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4639
    invoke-virtual {v5}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4640
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I
    .locals 2

    .line 6590
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    .line 6594
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6597
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static hasMultipleSubtypesForSwitcher(ZI)Z
    .locals 14

    .line 2789
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 2790
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2792
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    if-ge v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move-object v5, v4

    :goto_0
    if-ge v6, v1, :cond_5

    .line 2800
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 2802
    invoke-virtual {p1, v9, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 2803
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_4

    .line 2808
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2809
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v13

    if-nez v13, :cond_3

    add-int/lit8 v7, v7, 0x1

    move-object v4, v12

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object v5, v12

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_7

    if-le v7, v3, :cond_6

    return v3

    :cond_6
    return v2

    :cond_7
    if-gt v7, v3, :cond_c

    if-le v8, v3, :cond_8

    goto :goto_4

    :cond_8
    if-ne v7, v3, :cond_b

    if-ne v8, v3, :cond_b

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    .line 2825
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 2826
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-nez p0, :cond_9

    .line 2827
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const-string p0, "TrySuppressingImeSwitcher"

    .line 2828
    invoke-virtual {v4, p0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v3

    :cond_b
    return v2

    :cond_c
    :goto_4
    return v3
.end method

.method public static isFingerDevice(Landroid/view/InputDevice;)Z
    .locals 1

    const/16 v0, 0x1002

    .line 4567
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    return p0
.end method

.method public static isStylusDevice(Landroid/view/InputDevice;)Z
    .locals 1

    const/16 v0, 0x4002

    .line 4562
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xc002

    .line 4563
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseUserIdFromDumpArgs([Ljava/lang/String;)I
    .locals 2

    .line 6179
    const-string v0, "--user"

    invoke-static {p0, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6180
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 6183
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, -0x2710

    return p0
.end method

.method public static queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 5

    .line 5249
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 5251
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 5263
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0xc8080

    .line 5265
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 5263
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v1

    .line 5270
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getEnabledInputMethodIdsForFiltering(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    .line 5272
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->filterInputMethodServices(Ljava/util/List;Landroid/content/Context;Ljava/util/List;)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object p0

    return-object p0
.end method

.method public static shouldEnableConcurrentMultiUserMode(Landroid/content/Context;)Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 3448
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3449
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not accept stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3453
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    .line 3456
    :cond_1
    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    .line 3457
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p2

    .line 3458
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p4}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegationUsingConnectionlessFlow()Z

    move-result p4

    const/4 p5, 0x1

    if-eqz p4, :cond_3

    .line 3459
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3461
    monitor-exit p3

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3463
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->commitHandwritingDelegationTextIfAvailable()V

    .line 3464
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_0

    .line 3466
    :cond_3
    invoke-virtual {p0, p1, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 3468
    :goto_0
    monitor-exit p3

    return p5

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 1

    .line 3431
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    .line 3434
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/inputmethod/IBooleanListener;->onResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 3436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to report result="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3437
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-void
.end method

.method public addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 6

    .line 1810
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1811
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1820
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->create(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/Handler;)Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    move-result-object v1

    .line 1821
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/ClientController;->addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)Lcom/android/server/inputmethod/ClientState;

    .line 1824
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addStylusDeviceIdLocked(I)V
    .locals 2

    .line 4529
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    .line 4530
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    goto :goto_0

    .line 4531
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 4534
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New Stylus deviceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 4538
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 4539
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4540
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    :cond_2
    :goto_1
    return-void
.end method

.method public addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 7

    .line 4583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4584
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4585
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 4586
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    .line 4587
    const-string v3, "addVirtualStylusIdForTestSession"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4589
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 4591
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4593
    :try_start_1
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Adding virtual stylus id for session"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4594
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4596
    :try_start_2
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4598
    monitor-exit v6

    return-void

    :catchall_1
    move-exception v0

    .line 4596
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4597
    throw v0

    .line 4598
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final applyImeVisibilityLocked(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V
    .locals 9

    const-wide/16 v1, 0x20

    .line 4781
    :try_start_0
    const-string v0, "IMMS.applyImeVisibilityLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4782
    iget v8, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4783
    iget-object p4, p4, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4784
    invoke-virtual {p4, p1, v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v4

    .line 4786
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    const/4 v7, 0x0

    move v6, p2

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4790
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4791
    throw p0
.end method

.method public final attachNewAccessibilityLocked(IZI)V
    .locals 2

    .line 2036
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p3

    .line 2038
    iget-boolean v0, p3, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2039
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 2040
    iput-boolean v1, p3, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    :cond_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 2049
    iget-object p1, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V

    .line 2051
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p0

    iget-object p1, p3, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object p3, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    xor-int/2addr p2, v1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_1
    return-void
.end method

.method public attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v2, p3

    .line 1953
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v14

    .line 1954
    iget-object v15, v14, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1955
    iget-boolean v1, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1956
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 1957
    iput-boolean v3, v14, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    :cond_0
    xor-int/lit8 v7, p2, 0x1

    .line 1961
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 1962
    new-instance v1, Lcom/android/server/inputmethod/StartInputInfo;

    move v4, v3

    .line 1963
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v3

    move v5, v4

    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    move v8, v5

    .line 1964
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v9, v9, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 1965
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v10, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v10, v10, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget-object v11, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    move v12, v8

    move v8, v9

    move v9, v10

    iget-object v10, v11, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v13, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v11, v11, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    move/from16 v16, v12

    move v12, v11

    move-object v11, v13

    .line 1969
    invoke-virtual {v15}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v13

    move-object/from16 v17, v15

    move-object v15, v6

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/inputmethod/StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 1970
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v3, v15, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/StartInputHistory;->addEntry(Lcom/android/server/inputmethod/StartInputInfo;)V

    .line 1978
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1979
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1980
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v5, v3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1979
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1985
    :cond_1
    invoke-virtual {v0, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v10

    .line 1986
    iget-object v1, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 1987
    invoke-virtual {v0, v1, v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V

    .line 1988
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    move v9, v7

    iget-object v7, v14, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v8, v14, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v11, v14, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    move-object v6, v15

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startInput(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 1991
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    .line 1994
    iget-object v3, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v3, :cond_2

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    const/4 v12, 0x1

    .line 1995
    invoke-virtual {v0, v12, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    .line 1997
    :goto_0
    iput-object v4, v14, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 1998
    iget-object v5, v14, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    goto :goto_1

    :cond_3
    const/4 v12, 0x1

    .line 2016
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v3

    .line 2017
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 2018
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2020
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v25, v12

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move/from16 v25, v2

    .line 2021
    :goto_2
    iget-object v2, v14, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 2022
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v21

    .line 2024
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2025
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v5, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    invoke-virtual {v2, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->setInkWindowInitializer(Ljava/lang/Runnable;)V

    .line 2027
    :cond_5
    new-instance v18, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2029
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v4

    :cond_6
    move-object/from16 v22, v4

    .line 2030
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v24

    const/16 v19, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v3

    invoke-direct/range {v18 .. v25}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v18
.end method

.method public final canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z
    .locals 1

    .line 5636
    invoke-virtual {p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 5638
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodUtils;->convertIdToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    .line 5640
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v0

    .line 5643
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 3

    .line 4062
    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p5

    .line 4063
    iget-object v0, p5, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4064
    invoke-virtual {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 4068
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 4073
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4074
    iget-object p5, p5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p5, p5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p0, p5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4075
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring %s of uid %d : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4079
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p4, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0

    .line 4070
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 4071
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown client "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 3

    .line 4086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4087
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4088
    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 4089
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4090
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_0

    return v2

    .line 4093
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    return v1

    .line 4096
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4097
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4098
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 4097
    invoke-static {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final chooseNewDefaultIMELocked(I)Z
    .locals 4

    .line 5235
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5237
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5236
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5239
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "New default IME was selected: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5240
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2583
    :goto_0
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2584
    iget-object v2, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2586
    :cond_0
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2587
    iput-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    return-void
.end method

.method public clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 1

    .line 2592
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v0, :cond_0

    .line 2594
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 2595
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 2576
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    const/4 p0, 0x0

    .line 2577
    iput-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p0, 0x0

    .line 2578
    iput-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    return-void
.end method

.method public clearClientSessionsLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 4

    .line 2637
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v0

    .line 2638
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 2639
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2641
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 2651
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 2653
    iget-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    move p1, v2

    .line 2654
    :goto_0
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 2655
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 2656
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 2655
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2658
    iput-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2659
    iget-object p1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    const/4 p1, -0x1

    .line 2660
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleNotifyImeUidToAudioService(I)V

    .line 2662
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 2663
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iput-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 2664
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    .line 2665
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    return-void
.end method

.method public final computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2215
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    .line 2216
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2222
    :cond_1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 2223
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 2224
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v1

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v2

    .line 2226
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdForDisplayId(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 2229
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v4, :cond_2

    .line 2230
    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2232
    :cond_2
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->flags:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_3

    const/4 v3, 0x0

    .line 2238
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    const/4 p1, 0x0

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    .line 2243
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object p0

    .line 2244
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Restoring default device input method: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    return-object p0

    .line 2250
    :cond_5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2251
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_0
    return-object p2

    .line 2253
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2254
    sget-object p2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2254
    const-string v0, "Disabling IME on virtual device with id %s because its custom input method is not available: %s"

    invoke-static {p2, v0, p0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_7
    if-nez v1, :cond_8

    .line 2262
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Storing default device input method %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2263
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 2265
    :cond_8
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2268
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 2265
    const-string v0, "Switching current input method from %s to device-specific one %s because the current display %s belongs to device with id %s"

    invoke-static {p1, v0, p2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public computeImeDisplayIdForVisibleBackgroundUserOnAutomotive(IILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;)I
    .locals 0

    .line 2388
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result p0

    .line 2389
    invoke-static {p1, p3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;I)I

    move-result p0

    return p0
.end method

.method public final createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 3

    .line 2060
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    .line 2062
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2063
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2064
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 2063
    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final createInputContentUriTokenLocked(Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 6

    .line 6003
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6005
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 6006
    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6010
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 6011
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6012
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6018
    :cond_0
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_1

    .line 6019
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 6020
    :goto_0
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring createInputContentUriTokenLocked mCurEditorInfo.packageName="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " packageName="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 6026
    :cond_2
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 6028
    iget p0, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 6030
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 6037
    new-instance v0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    return-object v0

    .line 6007
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "contentUri must have content scheme"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 7

    .line 6867
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 6868
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p3, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p3, :cond_0

    .line 6869
    iget p3, p3, Lcom/android/server/inputmethod/ClientState;->mUid:I

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_0
    const/4 p3, -0x1

    goto :goto_0

    .line 6871
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_1

    .line 6872
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_2
    move-object v1, p0

    goto :goto_3

    .line 6873
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "uid("

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 6875
    :goto_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :goto_4
    move v3, p0

    goto :goto_5

    :cond_2
    const/4 p0, 0x2

    goto :goto_4

    :goto_5
    const/4 v4, 0x6

    const/4 v6, 0x0

    move v5, p2

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method public final discardHandwritingDelegationText()V
    .locals 1

    .line 1338
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1339
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->discardHandwritingDelegationText()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1343
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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 6123
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6125
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final dumpAsStringNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 8

    .line 6131
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->parseUserIdFromDumpArgs([Ljava/lang/String;)I

    move-result v0

    .line 6132
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6133
    const-string v2, "Input Method Manager Service state:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSystemReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mInteractive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mConcurrentMultiUserModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6138
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 6139
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurrentImeUserId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mStylusIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v5, :cond_0

    .line 6142
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6141
    invoke-interface {v1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6143
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6146
    const-string v2, "  mMenuControllerNew:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6147
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    const-string v4, "    "

    invoke-virtual {v2, v1, v4}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6152
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpClientController(Landroid/util/Printer;)V

    .line 6153
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpUserRepository(Landroid/util/Printer;)V

    .line 6156
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v4

    .line 6157
    :try_start_1
    const-string v2, "  mStartInputHistory:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6158
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    const-string v5, "    "

    invoke-virtual {v2, p2, v5}, Lcom/android/server/inputmethod/StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6160
    const-string v2, "  mSoftInputShowHideHistory:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6161
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    const-string v5, "    "

    invoke-virtual {v2, p2, v5}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6162
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6164
    const-string v2, "  mImeTrackerService#History:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6165
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    const-string v2, "    "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6167
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const/16 v2, -0x2710

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 6168
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    move v4, v2

    move-object v2, p0

    move p0, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 6172
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 6173
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 6162
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 6143
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 9

    .line 6190
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 6193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  UserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6194
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6195
    :try_start_0
    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6196
    iget-object v3, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 6197
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    .line 6198
    const-string v5, "    mBindingController:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6199
    const-string v5, "      "

    invoke-virtual {v2, p3, v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mCurClient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mFocusedWindowPerceptible="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6202
    const-string p0, "    mImeBindingState:"

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6203
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    const-string v2, "      "

    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 6204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBoundToMethod="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mEnabledSession="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6206
    const-string p0, "    mVisibilityStateComputer:"

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6207
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const-string v2, "      "

    invoke-virtual {p0, p3, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mInFullscreenMode="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6210
    iget p0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 6211
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object p0

    .line 6212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 6213
    const-string v5, "    Input Methods:"

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 6215
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 6216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      InputMethod #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6217
    const-string v7, "        "

    invoke-virtual {v6, v0, v7}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 6219
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_1

    goto/16 :goto_3

    .line 6226
    :cond_1
    const-string p0, ""

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 6228
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 6230
    :try_start_1
    iget-object p0, v3, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6232
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 6235
    :cond_2
    const-string p0, "No input method client."

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6237
    :goto_1
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    .line 6238
    :try_start_2
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p1, :cond_3

    if-eq v3, p1, :cond_3

    .line 6240
    const-string p5, ""

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6241
    const-string p5, "Warning: Current input method client doesn\'t match the last focused window."

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6243
    const-string p5, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6244
    const-string p5, ""

    invoke-interface {v0, p5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6245
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6247
    :try_start_3
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 6249
    :try_start_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dump input method client in focused window: "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6252
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6254
    const-string p0, ""

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    .line 6256
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 6258
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 6260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to dump input method service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 6263
    :cond_4
    const-string p0, "No input method service."

    invoke-interface {v0, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 6252
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 6219
    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final dumpClientController(Landroid/util/Printer;)V
    .locals 1

    .line 6268
    const-string v0, "  mClientController:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6270
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;-><init>(Landroid/util/Printer;)V

    .line 6282
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 6283
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6284
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    .line 4727
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4728
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 4729
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4730
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4731
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4732
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4733
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000001L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4734
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v6

    const-wide v7, 0x10500000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4735
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4736
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v6, p1, v7}, Lcom/android/server/inputmethod/ImeBindingState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 4737
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4738
    invoke-virtual {v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getLastImeTargetWindow()Landroid/os/IBinder;

    move-result-object v7

    .line 4737
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000005L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4739
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000006L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4741
    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v6, :cond_0

    const-wide v7, 0x10b00000007L

    .line 4742
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 4744
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000008L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4745
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4746
    iget-boolean p2, v1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    const-wide v6, 0x1080000000dL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4747
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide v6, 0x1090000000eL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4748
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p2

    const-wide v6, 0x1050000000fL

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4749
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-wide v6, 0x10800000010L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4750
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result p2

    const-wide v6, 0x10800000012L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4751
    iget-boolean p2, v1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const-wide v6, 0x10800000013L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4752
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const-wide v6, 0x10800000014L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4753
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result p2

    const-wide v6, 0x10500000015L

    invoke-virtual {p1, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4754
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result p2

    const-wide v1, 0x10500000016L

    invoke-virtual {p1, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4759
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const-wide p2, 0x10800000019L

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4760
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4761
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpUserRepository(Landroid/util/Printer;)V
    .locals 1

    .line 6288
    const-string v0, "  mUserDataRepository:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 6290
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;-><init>(Landroid/util/Printer;)V

    .line 6312
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 6313
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    .line 6314
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2624
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz p0, :cond_0

    .line 2626
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2628
    const-string v0, "InputMethodManagerService"

    const-string v1, "Session failed to close due to remote exception"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    .line 2630
    iput-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    :cond_0
    return-void
.end method

.method public final finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 2602
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2604
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2606
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2607
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    .line 2608
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    const/4 v3, 0x0

    .line 2609
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 2612
    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 2614
    :cond_0
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz p0, :cond_1

    .line 2615
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 2616
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    :cond_1
    return-void
.end method

.method public getClientStateLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Lcom/android/server/inputmethod/ClientState;
    .locals 0

    .line 1871
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p0

    return-object p0
.end method

.method public getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 1

    .line 607
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 2

    .line 1581
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1582
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    .line 5601
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5602
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5605
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5606
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 5608
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 3

    .line 1624
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1629
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0

    .line 1631
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1635
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0

    .line 1634
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw p0
.end method

.method public final getEnabledInputMethodListInternal(II)Ljava/util/List;
    .locals 3

    .line 1739
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1740
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1742
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v1
.end method

.method public getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 3

    .line 1666
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1671
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1673
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1676
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    throw p0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;
    .locals 3

    .line 1760
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1769
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    .line 1768
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodSubtypeSafeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1773
    throw p0
.end method

.method public final getEnabledInputMethodSubtypeListInternal(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 2

    .line 1778
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 1779
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1781
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1783
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4, p3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1784
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1786
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 0

    .line 6854
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    return-object p0
.end method

.method public getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    return-object p0
.end method

.method public getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 3

    .line 1603
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1608
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0

    return-object p0

    .line 1610
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1613
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    throw p0
.end method

.method public final getInputMethodListInternal(III)Ljava/util/List;
    .locals 3

    .line 1724
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1725
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 1726
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1727
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1725
    invoke-virtual {v1, v2, p2, v0}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p2

    .line 1728
    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1732
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method public getInputMethodListLegacy(II)Ljava/util/List;
    .locals 3

    .line 1646
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1651
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1653
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1656
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1659
    throw p0
.end method

.method public final getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I
    .locals 6

    .line 2718
    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2719
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2722
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    .line 2723
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 2724
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->hasNavigationBar(I)Z

    move-result v1

    .line 2727
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_mode"

    const/4 v5, 0x2

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 2730
    const-string v1, "InputMethodManagerService"

    const-string v2, "[getInputMethodNavButtonFlagsLocked] NAV_BAR_MODE_GESTURAL ,hasNavigationBar to false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 2733
    :cond_1
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2734
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    const/4 v1, 0x3

    .line 2735
    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    if-eqz p0, :cond_3

    move v4, v5

    :cond_3
    or-int p0, p1, v4

    return p0
.end method

.method public getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 3

    .line 4443
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4444
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4445
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 4340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 4341
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4344
    :cond_0
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    .line 4345
    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getUserData(I)Lcom/android/server/inputmethod/UserData;
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    return-object p0
.end method

.method public getVisibilityApplierLocked()Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
    .locals 0

    .line 4889
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 5027
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x40b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_17

    const/16 v1, 0x442

    if-eq v0, v1, :cond_15

    const/16 v1, 0x44c

    if-eq v0, v1, :cond_10

    const/16 v1, 0x456

    if-eq v0, v1, :cond_e

    const/16 v1, 0x460

    if-eq v0, v1, :cond_c

    const/16 v1, 0x46a

    if-eq v0, v1, :cond_b

    const/16 v1, 0xbd6

    if-eq v0, v1, :cond_9

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1392

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1b58

    if-eq v0, v1, :cond_4

    const/16 v1, 0x424

    if-eq v0, v1, :cond_2

    const/16 v1, 0x425

    if-eq v0, v1, :cond_0

    return v2

    .line 5062
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 5063
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5064
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 5065
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5067
    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_1

    .line 5070
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5074
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 5046
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5048
    :try_start_3
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5049
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5051
    :try_start_4
    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v2, :cond_3

    .line 5053
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 5054
    iget-object p0, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 5058
    :catch_1
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v0

    return v3

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 5103
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_5

    .line 5104
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 5106
    :cond_5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_6

    .line 5107
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    :cond_6
    return v3

    .line 5094
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5095
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 5096
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return v3

    .line 5089
    :cond_8
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5090
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedToAllImesLocked()V

    .line 5091
    monitor-exit v0

    return v3

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 5081
    :cond_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleSetInteractive(Z)V

    return v3

    .line 5129
    :cond_b
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5130
    :try_start_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5131
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 5132
    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5133
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 5135
    monitor-exit v0

    return v3

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    .line 5175
    :cond_c
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 5176
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 5178
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    goto :goto_4

    :catchall_4
    move-exception p0

    goto :goto_5

    .line 5180
    :cond_d
    :goto_4
    monitor-exit p1

    return v3

    :goto_5
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    .line 5167
    :cond_e
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5168
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 5169
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 5170
    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->finishStylusHandwriting()V

    goto :goto_6

    :catchall_5
    move-exception p0

    goto :goto_7

    .line 5172
    :cond_f
    :goto_6
    monitor-exit v0

    return v3

    :goto_7
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p0

    .line 5138
    :cond_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    .line 5139
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5140
    :try_start_a
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetuserData(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 5141
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5142
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 5143
    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-nez v6, :cond_11

    goto :goto_8

    .line 5146
    :cond_11
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetrequestId(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->-$$Nest$fgetpid(Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;)I

    move-result v0

    .line 5150
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5147
    invoke-virtual {v6, v7, v0, v4, v2}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v0

    if-nez v0, :cond_12

    .line 5153
    const-string p0, "InputMethodManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start handwriting session for requestId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    monitor-exit v1

    return v3

    :catchall_6
    move-exception p0

    goto :goto_9

    .line 5158
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRequestId()I

    move-result p1

    .line 5159
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getHandwritingChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->getRecordedEvents()Ljava/util/List;

    move-result-object v0

    .line 5158
    invoke-virtual {v5, p1, v2, v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 5161
    const-string p1, "InputMethodManagerService"

    const-string v0, "Resetting handwriting mode."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    .line 5164
    :cond_13
    monitor-exit v1

    return v3

    .line 5144
    :cond_14
    :goto_8
    monitor-exit v1

    return v3

    .line 5164
    :goto_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0

    .line 5113
    :cond_15
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5114
    :try_start_b
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5115
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 5116
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5117
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 5118
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5119
    const-string v1, "InputMethodManagerService"

    const-string v2, "Initializing Handwriting Spy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 5121
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p1

    .line 5120
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_a

    :catchall_7
    move-exception p0

    goto :goto_b

    .line 5123
    :cond_16
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 5125
    :goto_a
    monitor-exit v0

    return v3

    :goto_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw p0

    .line 5030
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 5031
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 5032
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p1

    .line 5033
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    const/4 v1, 0x0

    .line 5035
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 5042
    monitor-exit v0

    return v3

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw p0
.end method

.method public final handleSetInteractive(Z)V
    .locals 8

    .line 5197
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 5199
    :try_start_0
    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 5200
    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 5201
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5202
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_0

    .line 5204
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 5205
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v4

    .line 5203
    invoke-virtual {p0, v3, v4, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 5207
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-nez v3, :cond_1

    .line 5208
    monitor-exit v1

    return-void

    .line 5210
    :cond_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 5211
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethodUid()I

    move-result v2

    .line 5210
    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldUseSetInteractiveProtocol(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5214
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 5215
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5219
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 5220
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v6

    const/4 v4, 0x0

    .line 5219
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 5224
    :cond_2
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v0, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setInteractive(ZZ)V

    goto :goto_1

    .line 5228
    :cond_3
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v0, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 5230
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .locals 12

    .line 6554
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 6555
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 6557
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 6558
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6559
    :try_start_1
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6560
    :try_start_2
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6561
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 6560
    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6562
    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v10, v8, :cond_1

    aget v2, v0, v10

    .line 6563
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p0

    move v4, p2

    goto :goto_1

    :cond_0
    move-object v1, p0

    move v4, p2

    .line 6566
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr v11, p0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move-object p0, v1

    move p2, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 6569
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    .line 6570
    :try_start_3
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_3
    if-eqz v11, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    return v9

    .line 6569
    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    if-eqz v6, :cond_5

    .line 6557
    :try_start_6
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw p0
.end method

.method public final handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 6618
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 6619
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6620
    const-string p0, "Unknown input method "

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6621
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6622
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " cannot be enabled for user #"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6624
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\"ime enable "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" for user #"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed due to its unrecognized IME ID."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 6629
    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    move-result p0

    .line 6630
    const-string p5, "Input method "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6631
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6632
    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne p3, p0, :cond_1

    .line 6633
    const-string p0, "already "

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "now "

    :goto_0
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 6634
    const-string p0, "enabled"

    goto :goto_1

    :cond_2
    const-string p0, "disabled"

    :goto_1
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6635
    const-string p0, " for user #"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6636
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    move v3, v1

    move v4, v3

    .line 6496
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 6514
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 6515
    :try_start_0
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6516
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 6515
    invoke-static {v2, v5, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v2

    .line 6517
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6518
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 6519
    :try_start_1
    array-length v5, v2

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v2, v6

    const/16 v8, 0x7d0

    if-eqz v3, :cond_0

    .line 6521
    invoke-virtual {p0, v7, v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 6523
    :cond_0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v8

    .line 6524
    :goto_2
    array-length v9, v2

    if-le v9, v0, :cond_1

    .line 6525
    const-string v9, "User #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6526
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 6527
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6529
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v4, :cond_2

    .line 6531
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 6533
    :cond_2
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6534
    const-string v9, ":"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6535
    new-instance v9, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v9, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/io/PrintWriter;)V

    const-string v10, "  "

    invoke-virtual {v8, v9, v10}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    add-int/2addr v6, v0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 6539
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    return v1

    :goto_4
    if-eqz p1, :cond_6

    .line 6518
    :try_start_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    .line 6517
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 6500
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    const/4 v6, 0x3

    goto :goto_6

    :sswitch_1
    const-string v7, "-u"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v6, 0x2

    goto :goto_6

    :sswitch_2
    const-string v7, "-s"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    move v6, v0

    goto :goto_6

    :sswitch_3
    const-string v7, "-a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    move v6, v1

    :goto_6
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 6509
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    move v4, v0

    goto/16 :goto_0

    :pswitch_2
    move v3, v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d4 -> :sswitch_3
        0x5e6 -> :sswitch_2
        0x5e8 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .locals 14

    .line 6715
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v0

    .line 6716
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 6717
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6718
    :try_start_1
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6719
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 6718
    invoke-static {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    .line 6720
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget v6, v0, v5

    .line 6721
    invoke-virtual {p0, v6, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 6725
    :cond_0
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6726
    const-string v8, "android.os.usertype.system.HEADLESS"

    iget-object v7, v7, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 6731
    :cond_1
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v7

    .line 6732
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    const/4 v9, 0x0

    .line 6734
    invoke-virtual {p0, v4, v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 6741
    iget-object v8, v8, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6742
    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 6745
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v8

    .line 6746
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6747
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v11

    .line 6746
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 6748
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 6749
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_2

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 6750
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13, v4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    goto :goto_1

    .line 6752
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v11, v4

    :goto_2
    const/4 v12, 0x1

    if-ge v11, v8, :cond_3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 6753
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13, v12, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    goto :goto_2

    .line 6756
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 6757
    invoke-virtual {p0, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    .line 6759
    :cond_4
    invoke-virtual {p0, v12, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 6760
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6761
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 6762
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v9

    .line 6760
    invoke-static {v8, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 6763
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    .line 6764
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v7

    .line 6765
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset current and enabled IMEs for user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Selected: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6767
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v6, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v7, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 6769
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    .line 6770
    :cond_6
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    :goto_5
    if-eqz v2, :cond_7

    .line 6717
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0

    .line 6770
    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .locals 17

    move-object/from16 v0, p0

    .line 6649
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleOptionsForCommandsThatOnlyHaveUserOption(Landroid/os/ShellCommand;)I

    move-result v1

    .line 6650
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 6652
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 6653
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6654
    :try_start_1
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6655
    :try_start_2
    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 6656
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    .line 6655
    invoke-static {v1, v6, v7}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    .line 6657
    array-length v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    if-ge v8, v6, :cond_5

    aget v11, v1, v8

    move-object/from16 v12, p1

    .line 6658
    invoke-virtual {v0, v11, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    move-result v13

    if-nez v13, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_3

    .line 6661
    :cond_0
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToInputMethodLocked(Ljava/lang/String;II)Z

    move-result v10

    xor-int/lit8 v13, v10, 0x1

    if-nez v10, :cond_2

    .line 6664
    const-string v10, "Unknown input method "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6665
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6666
    const-string v10, " cannot be selected for user #"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6667
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6669
    const-string v10, "InputMethodManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\"ime set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\" for user #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " failed due to its unrecognized IME ID."

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 6672
    :cond_2
    const-string v10, "Input method "

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6673
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6674
    const-string v10, " selected for user #"

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6675
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 6679
    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v10

    .line 6680
    invoke-virtual {v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v11

    .line 6681
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v11

    if-nez v11, :cond_3

    .line 6684
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 6686
    :cond_3
    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object v14

    .line 6688
    :goto_1
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 6689
    const-string v15, "InputMethodManagerService"

    const/16 v16, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEFAULT_INPUT_METHOD="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not updated. Fixing it up to "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " See b/354782333."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_4

    .line 6693
    invoke-virtual {v10, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 6695
    :cond_4
    invoke-virtual {v10, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x0

    .line 6701
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_6

    .line 6702
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_7
    if-eqz v9, :cond_8

    return v10

    :cond_8
    return v16

    .line 6701
    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_9

    .line 6652
    :try_start_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    throw v1
.end method

.method public final handleShellCommandTraceInputMethod(Landroid/os/ShellCommand;)I
    .locals 7

    .line 6798
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 6799
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 6800
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x174ab7ac

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x360802

    if-eq v1, v2, :cond_1

    const v2, 0x68ac462

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "save-for-bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_4

    .line 6812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6813
    const-string p0, "Input method trace options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6814
    const-string p0, "  start: Start tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6815
    const-string p0, "  stop: Stop tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6819
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return v5

    .line 6808
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    .line 6819
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    return v6

    .line 6805
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 6802
    :cond_7
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_8

    .line 6819
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 6820
    :cond_8
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p1

    .line 6821
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6823
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 6831
    monitor-exit v0

    return v6

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_3
    if-eqz p1, :cond_9

    .line 6799
    :try_start_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p0
.end method

.method public final hasSupportedStylusLocked()Z
    .locals 0

    .line 4572
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 13

    .line 3243
    const-string v0, "IMMS.hideCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3244
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#hideSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3246
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3247
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v10

    .line 3248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3250
    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be hidden"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 3251
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3255
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 3255
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3257
    throw p0

    .line 3258
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final hideCurrentInputLocked(Landroid/os/IBinder;III)Z
    .locals 8

    const/4 v0, 0x0

    .line 3696
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 3697
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    move-result p0

    return p0
.end method

.method public hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z
    .locals 10

    move/from16 v5, p6

    .line 3705
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    .line 3706
    iget-object v7, v6, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3707
    iget-object v8, v6, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3708
    invoke-virtual {v8, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->canHideIme(Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p3

    const/4 v9, 0x0

    if-nez p3, :cond_0

    return v9

    .line 3720
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3722
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 3723
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result p3

    and-int/2addr p3, v0

    if-eqz p3, :cond_2

    :cond_1
    move p3, v0

    goto :goto_0

    :cond_2
    move p3, v9

    .line 3725
    :goto_0
    invoke-virtual {v8, p1, v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    const/16 v0, 0xa

    if-eqz p3, :cond_3

    .line 3731
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3732
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->performHideIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)V

    .line 3735
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->isSoftChangeMode:Z

    if-eqz p1, :cond_4

    .line 3736
    iput-boolean v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->isSoftChangeMode:Z

    .line 3737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hideCurrentInputLocked previous mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 3739
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p1

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    invoke-virtual {p1, p0}, Landroid/os/enote/ENoteSetting;->setCurrRealEpdMode(I)V

    goto :goto_1

    .line 3743
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3745
    :cond_4
    :goto_1
    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodNotVisible()V

    .line 3746
    invoke-virtual {v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->clearImeShowFlags()V

    .line 3748
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    iget-object p1, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 p2, 0x8

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    .line 3750
    iput-object p0, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return p3
.end method

.method public final hideMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 4857
    iget p2, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4859
    iget-object p2, p4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p2, p2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4861
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 10

    .line 3621
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManagerService#hideSoftInput"

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3623
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v9

    .line 3624
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3625
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3626
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 3627
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3632
    invoke-virtual {p0, p5, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3634
    :cond_0
    :goto_0
    monitor-exit v9

    return v1

    .line 3635
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hideSoftInputFromServerForTest()V
    .locals 5

    .line 3683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3684
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3685
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    .line 3686
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 3687
    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 3689
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;III)Z
    .locals 6

    .line 3643
    invoke-virtual {p0, p8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 3644
    iget-object p4, p2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3645
    const-string v3, "hideSoftInput"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move v1, p7

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-nez p0, :cond_1

    .line 3646
    invoke-virtual {p4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3647
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_0

    .line 3650
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, p1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    return p3

    .line 3655
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p6

    const-wide/16 v1, 0x20

    .line 3657
    :try_start_0
    const-string p0, "IMMS.hideSoftInput"

    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3658
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p8, "Client requesting input be hidden"

    new-array v3, p3, [Ljava/lang/Object;

    invoke-static {p0, p8, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3660
    invoke-virtual {p4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p0

    .line 3662
    invoke-virtual {v0, p3, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    if-eqz p5, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    const/4 p0, 0x0

    .line 3664
    invoke-virtual {p5, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 3675
    :cond_3
    :goto_2
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3676
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3675
    :cond_4
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3676
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p3

    .line 3675
    :goto_3
    invoke-static {p6, p7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3676
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3677
    throw p0
.end method

.method public final hideStatusBarIconLocked(I)V
    .locals 1

    .line 2707
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2710
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_1

    .line 2711
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 3

    .line 2412
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2413
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2412
    const-string v2, "Sending attach of token: %s for display: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2414
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result p3

    .line 2415
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p3

    .line 2416
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    .line 2418
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    .line 2416
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;I)V

    return-void
.end method

.method public final isImeClientFocused(Landroid/os/IBinder;Lcom/android/server/inputmethod/ClientState;)Z
    .locals 2

    .line 3755
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v0, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v1, p2, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget p2, p2, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImeTraceEnabled()Z
    .locals 0

    .line 4702
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 1

    .line 4152
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result p0

    .line 4155
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 4156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isShowRequestedForCurrentWindow(I)Z
    .locals 0

    .line 1942
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 1943
    iget-object p1, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1944
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 4

    .line 1685
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1691
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1692
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1696
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    .line 1697
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

    .line 1702
    :cond_4
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    .line 1704
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p0

    .line 1703
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1705
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 1706
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    monitor-exit v0

    return v2

    .line 1707
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isStylusHandwritingEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 1713
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    .line 1714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "stylus_handwriting_enabled"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final synthetic lambda$clearClientSessionsLocked$10(ILcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 2643
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 2645
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2647
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2648
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public final synthetic lambda$dumpAsStringNoCheck$20(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;ZLcom/android/server/inputmethod/UserData;)V
    .locals 1

    move-object v0, p2

    move-object p2, p1

    move-object p1, p5

    move p5, p4

    move-object p4, p3

    move-object p3, v0

    .line 6169
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic lambda$getEnabledInputMethodListInternal$8(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 1743
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$getInputMethodListInternal$7(IILcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 0

    .line 1733
    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final synthetic lambda$getInputMethodWindowVisibleHeight$14(IILcom/android/internal/inputmethod/IInputMethodClient;)Ljava/lang/Integer;
    .locals 8

    .line 4447
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4448
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v7

    .line 4449
    const-string v5, "getInputMethodWindowVisibleHeight"

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 4451
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 4453
    :cond_0
    invoke-virtual {v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    .line 4456
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p0

    .line 4457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4458
    iget-object p1, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 4457
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$0(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 1

    .line 1288
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    return-object v0
.end method

.method public final synthetic lambda$new$1(I)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
    .locals 1

    .line 1291
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    return-object v0
.end method

.method public final synthetic lambda$new$2(Lcom/android/server/inputmethod/ClientState;)V
    .locals 0

    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V

    return-void
.end method

.method public final synthetic lambda$new$3()V
    .locals 0

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->discardHandwritingDelegationText()V

    return-void
.end method

.method public final synthetic lambda$onClientRemoved$9(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 1833
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public final synthetic lambda$registerImeRequestedChangedListener$6(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1569
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 1571
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public final synthetic lambda$reportPerceptibleAsync$11(Landroid/os/IBinder;Z)V
    .locals 4

    .line 3506
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3507
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 3509
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 3510
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    .line 3511
    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1

    if-eqz v1, :cond_0

    .line 3512
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3515
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3516
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    .line 3517
    monitor-exit v0

    return-void

    .line 3513
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3517
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$showInputMethodPickerFromClient$12(III)V
    .locals 1

    .line 4125
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4126
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$showInputMethodPickerFromSystem$13(II)V
    .locals 2

    .line 4140
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4141
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4142
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    .line 4143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$systemRunning$4(Z)V
    .locals 2

    .line 1512
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0xfa0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1513
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic lambda$systemRunning$5(Ljava/lang/String;II)V
    .locals 0

    .line 1527
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p2

    .line 1528
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSecureSettingsChangedLocked(Ljava/lang/String;I)V

    .line 1529
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeReportToolType(I)V
    .locals 3

    .line 3596
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerInternal;->getLastUsedInputDeviceId()I

    move-result v0

    .line 3597
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3601
    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3606
    :cond_1
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    .line 3608
    :cond_2
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isFingerDevice(Landroid/view/InputDevice;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 3614
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateEditorToolTypeLocked(II)V

    return-void
.end method

.method public final notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3040
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 3043
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

    .line 3045
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 3051
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    .line 3052
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, p2, :cond_2

    return-void

    .line 3055
    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public final notifyUserActionLocked(Lcom/android/server/inputmethod/UserData;)V
    .locals 2

    .line 4767
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Got the notification of a user action."

    invoke-static {p0, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4768
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4769
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4771
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4772
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    .line 4771
    invoke-virtual {p1, v0, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Z

    :cond_0
    return-void
.end method

.method public onActionLocaleChanged(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .locals 8

    .line 755
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v1, "onActionLocaleChanged prev=%s new=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 757
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez p2, :cond_0

    .line 758
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 760
    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 764
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 765
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v5

    .line 766
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v6

    .line 767
    iget-object v7, v4, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 768
    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 770
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    .line 768
    invoke-virtual {v6, v5, v1, v4}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    .line 771
    invoke-static {v4, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    .line 772
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    const/4 v4, 0x1

    .line 774
    invoke-virtual {p0, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 776
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    .line 777
    invoke-virtual {p0, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 779
    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onApplyImeVisibilityFromComputerLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;I)V
    .locals 6

    .line 4896
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v3

    .line 4897
    invoke-virtual {p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 4896
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    return-void
.end method

.method public final onClientRemoved(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 1829
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1830
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 1832
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ClientState;)V

    .line 1834
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onClientRemovedInternalLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/UserData;)V
    .locals 4

    .line 1844
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 1845
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-ne v1, p1, :cond_1

    .line 1846
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 1848
    iget-boolean p0, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    if-eqz p0, :cond_0

    .line 1849
    iput-boolean v3, p2, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1850
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1856
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/AccessibilityManagerInternal;->unbindInput()V

    .line 1859
    :cond_0
    iput-boolean v3, p2, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 p0, 0x0

    .line 1860
    iput-object p0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1861
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-ne p0, p1, :cond_1

    .line 1862
    invoke-static {}, Lcom/android/server/inputmethod/ImeBindingState;->newEmptyState()Lcom/android/server/inputmethod/ImeBindingState;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    :cond_1
    return-void
.end method

.method public onImeSwitchButtonClickFromSystem(I)V
    .locals 2

    .line 4164
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result v1

    .line 4166
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    .line 4168
    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V

    .line 4169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onImeSwitchButtonClickLocked(ILcom/android/server/inputmethod/UserData;)V
    .locals 2

    .line 4182
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    const/4 v1, 0x1

    .line 4183
    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z

    return-void

    .line 4186
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerFromSystem(II)V

    return-void
.end method

.method public final onSecureSettingsChangedLocked(Ljava/lang/String;I)V
    .locals 5

    .line 651
    const-string v0, "accessibility_soft_keyboard_mode"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "enabled_input_methods"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "show_ime_with_hard_keyboard"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "selected_input_method_subtype"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "default_input_method"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "stylus_handwriting_enabled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    .line 661
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 662
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 661
    invoke-static {p1, v0, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 664
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 665
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 666
    invoke-virtual {v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setA11yRequestNoSoftKeyboard(I)V

    .line 668
    invoke-virtual {v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x10

    .line 670
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 672
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    .line 678
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    .line 680
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    .line 682
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    :cond_7
    :goto_1
    return-void

    .line 701
    :pswitch_2
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 702
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 704
    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 705
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move v1, v2

    .line 708
    :goto_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    return-void

    .line 692
    :pswitch_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 694
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cf7725e -> :sswitch_5
        -0x69f07bcc -> :sswitch_4
        0x15ab4237 -> :sswitch_3
        0x472be455 -> :sswitch_2
        0x685851c2 -> :sswitch_1
        0x7ebbf7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    .locals 11

    .line 2449
    const-string v0, "IMMS.onSessionCreated"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2451
    :try_start_0
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2452
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_0

    .line 2455
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2456
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 2458
    :cond_0
    :try_start_2
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2459
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2460
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 2462
    invoke-virtual {v4}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 2463
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v4, :cond_2

    .line 2464
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2465
    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V

    iput-object v5, v6, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 p1, 0x1

    const/16 p2, 0xa

    .line 2467
    invoke-virtual {p0, p2, p1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p3

    .line 2469
    invoke-virtual {p0, p2, p1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    .line 2471
    iget-object p0, p3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_1

    .line 2472
    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethod(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 2474
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    move-object v9, p3

    .line 2477
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2480
    :try_start_4
    invoke-virtual {v9}, Landroid/view/InputChannel;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2482
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 2477
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2482
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2483
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .locals 8

    .line 6323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_2

    if-eqz p6, :cond_0

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 6330
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6332
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " args="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6334
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6335
    invoke-static {v0}, Landroid/os/Process;->isCoreUid(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6337
    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6340
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6342
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object v1, p7

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v13, p5

    .line 4830
    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 4831
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-object/from16 v4, p2

    .line 4832
    invoke-virtual {v3, v4, v13}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v3

    .line 4834
    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4835
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 4838
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v4

    move/from16 v7, p1

    .line 4836
    invoke-virtual {v5, v7, v6, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object v14

    .line 4839
    iget-object v15, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    new-instance v3, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    move-object v5, v3

    iget-object v3, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v6, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    move-object v7, v5

    iget-object v5, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    iget-boolean v8, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    iget-object v9, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    iget-object v10, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    iget-object v11, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    iget-object v12, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    move-object v2, v6

    move v6, v4

    move-object v4, v2

    move-object v2, v7

    move/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v15, v2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->addEntry(Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;)V

    if-eqz v1, :cond_0

    .line 4848
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v2, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService;->onImmsUpdate(Landroid/view/inputmethod/ImeTracker$Token;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStylusHandwritingReadyLocked(IILcom/android/server/inputmethod/UserData;)V
    .locals 2

    .line 5192
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;-><init>(IILcom/android/server/inputmethod/UserData;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    const/16 p1, 0x44c

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5193
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnbindCurrentMethodByReset(I)V
    .locals 9

    .line 1919
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1920
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1921
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1923
    invoke-virtual {v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->isRequestedImeVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1924
    invoke-virtual {v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x32

    .line 1932
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v5

    .line 1934
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    :cond_0
    return-void
.end method

.method public final onUpdateEditorToolTypeLocked(II)V
    .locals 0

    .line 1331
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->updateEditorToolType(I)V

    :cond_0
    return-void
.end method

.method public final onUpdateResourceOverlay(I)V
    .locals 6

    .line 5421
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    .line 5422
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5423
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v0

    .line 5424
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object p1

    .line 5425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5426
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, p1, v2

    .line 5427
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    .line 5428
    iget-object v5, v4, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5429
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5431
    :cond_0
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 5432
    :try_start_0
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5433
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserReadyLocked(I)V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1553
    :cond_0
    const-string v0, "default_input_method"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1556
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 1557
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    const/4 v0, 0x1

    .line 1559
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 1560
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1561
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object p1

    .line 1560
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    return-void
.end method

.method public postInputMethodSettingUpdatedLocked(ZI)V
    .locals 11

    .line 5325
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5326
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 5325
    const-string v2, "--- re-buildInputMethodList reset = %s \n ------ caller=%s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5327
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v1, "InputMethodManagerService"

    if-nez v0, :cond_0

    .line 5328
    const-string p0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5332
    :cond_0
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 5339
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 5340
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    .line 5342
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 5343
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5345
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v7

    if-nez v7, :cond_1

    move v4, v3

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_1
    if-nez v7, :cond_4

    .line 5352
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "All the enabled IMEs are gone. Reset default enabled IMEs."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5355
    const-string p1, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    move v4, v2

    move p1, v3

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    .line 5357
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v5, "All the enabled non-Aux IMEs are gone. Do partial reset."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-nez p1, :cond_6

    if-eqz v4, :cond_7

    .line 5363
    :cond_6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5364
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 5366
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_7

    .line 5368
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 5369
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v8, "--- enable ime = %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5370
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 5374
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p1

    .line 5375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 5376
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 5377
    const-string p1, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5378
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5379
    invoke-virtual {p0, v3, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    goto :goto_4

    .line 5383
    :cond_8
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5387
    :cond_9
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateDefaultVoiceImeIfNeededLocked(I)V

    .line 5389
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 5390
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5391
    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 5393
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    .line 5396
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object p1

    .line 5397
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1392

    invoke-virtual {p0, v0, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 5398
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2303
    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 2305
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p0, :cond_0

    .line 2306
    iget-object p0, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    :cond_0
    return-void
.end method

.method public prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3408
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3409
    const-string p0, "InputMethodManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not prepare stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3413
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3420
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 3416
    :cond_1
    :try_start_1
    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "prepareStylusHandwritingDelegation() fail"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Delegator doesn\'t match Uid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3419
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final publishLocalService()V
    .locals 1

    .line 5711
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public reRequestCurrentClientSessionLocked(I)V
    .locals 2

    .line 2511
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2512
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_0

    .line 2513
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2514
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 2515
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2516
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    :cond_0
    return-void
.end method

.method public final registerDeviceListenerAndCheckStylusSupport()V
    .locals 4

    .line 4478
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 4479
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getStylusInputDeviceIds(Landroid/hardware/input/InputManager;)Landroid/util/IntArray;

    move-result-object v1

    .line 4480
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4481
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4482
    :try_start_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 4483
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 4484
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4486
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public registerImeRequestedChangedListener()V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V

    return-void
.end method

.method public removeImeSurface(I)V
    .locals 0

    .line 4467
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x424

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 1

    .line 4474
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x425

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeStylusDeviceIdLocked(I)V
    .locals 2

    .line 4546
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4550
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4551
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 4552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stylus deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " removed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4554
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 4556
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingModeController;->reset()V

    .line 4557
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleRemoveStylusHandwritingWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeVirtualStylusIdForTestSessionLocked()V
    .locals 1

    .line 4632
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->VIRTUAL_STYLUS_ID_FOR_TEST:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    return-void
.end method

.method public final reportFullscreenModeLocked(ZLcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 6044
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p0, :cond_0

    .line 6045
    iput-boolean p1, p2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    .line 6046
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->reportFullscreenMode(Z)V

    :cond_0
    return-void
.end method

.method public reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 1

    .line 3505
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final reportStartInputLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .locals 1

    .line 2876
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 2878
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodTargetWindow(Landroid/os/IBinder;)V

    .line 2880
    :cond_0
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2881
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setLastImeTargetWindow(Landroid/os/IBinder;)V

    return-void
.end method

.method public requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 2

    .line 2563
    iget-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    if-nez p0, :cond_1

    .line 2564
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Creating new accessibility sessions for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 2565
    iput-boolean p0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2566
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    .line 2567
    :goto_0
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2568
    iget-object v1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2570
    :cond_0
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    :cond_1
    return-void
.end method

.method public requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 3

    .line 2522
    iget-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    if-nez v0, :cond_1

    .line 2523
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Creating new session for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2527
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2528
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 2529
    aget-object v0, v0, v2

    .line 2532
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 2534
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 2535
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    .line 2536
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V

    .line 2550
    :try_start_0
    invoke-virtual {p1, v0, v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2555
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2557
    :cond_0
    throw p0

    :cond_1
    return-void
.end method

.method public resetCurrentMethodAndClientLocked(II)V
    .locals 2

    .line 2499
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    const/4 v1, 0x0

    .line 2500
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    .line 2505
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2506
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    return-void
.end method

.method public final resetDefaultImeLocked(Landroid/content/Context;I)V
    .locals 4

    .line 1348
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    .line 1351
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 1352
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1357
    :cond_0
    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.viwoods.viwoodsime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1358
    const-string/jumbo p0, "resetDefaultImeLocked selectedImi is VIWOODS_INPUT_METHOD_PACKAGE_PREFIX, so return!"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1362
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1361
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1363
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    const-string p0, "No default found"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1367
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1368
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Default found, using %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 1369
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V
    .locals 6

    .line 5568
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    const/4 v1, -0x1

    .line 5569
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    const/4 v2, 0x0

    .line 5570
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDeviceIdToShowIme(I)V

    .line 5572
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v3, 0x0

    .line 5573
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 5575
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5579
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5583
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5582
    invoke-static {v3, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HashCode for subtype looks broken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "InputMethodManagerService"

    invoke-static {v4, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5589
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resetStylusHandwritingLocked(I)V
    .locals 2

    .line 4797
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    .line 4798
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4799
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IME requested to finish handwriting with a mismatched requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeVirtualStylusIdForTestSessionLocked()V

    .line 4803
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    return-void
.end method

.method public resetSystemUiLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 1

    const/4 v0, 0x0

    .line 2491
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2492
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2493
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public final resolveImeUserIdFromDisplayIdLocked(I)I
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result p1

    .line 399
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    .line 401
    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdLocked(I)I
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p1

    .line 367
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_0
    return p1

    .line 372
    :cond_1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public scheduleNotifyImeUidToAudioService(I)V
    .locals 2

    .line 2441
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2442
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 2443
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public schedulePrepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2429
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p2, 0x46a

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2431
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleRemoveStylusHandwritingWindow()V
    .locals 1

    .line 2436
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x460

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleResetStylusHandwriting()V
    .locals 1

    .line 2423
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x442

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 3

    .line 1232
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_1

    .line 1233
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, p1, :cond_0

    .line 1234
    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void

    .line 1237
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 1243
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    .line 1245
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 1250
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 1252
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 1253
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V
    .locals 1

    .line 5410
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5411
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->onNavButtonFlagsChanged(I)V

    return-void
.end method

.method public sendOnNavButtonFlagsChangedToAllImesLocked()V
    .locals 4

    .line 5403
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 5404
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3152
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    .line 3153
    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3154
    invoke-virtual {p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 p2, 0x0

    .line 3155
    invoke-virtual {p1, p0, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 9

    .line 4352
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 4353
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4356
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 4361
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4362
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 4363
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4364
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4366
    :cond_2
    const-string v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4366
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4370
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    .line 4371
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    .line 4372
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_4

    .line 4373
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 4376
    :cond_4
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v6

    .line 4377
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4378
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p1

    if-eq v6, p1, :cond_5

    .line 4382
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    .line 4381
    invoke-static {p3, p1, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 4383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4385
    :try_start_1
    iget-object p1, p2, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/RawInputMethodMap;

    .line 4386
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4387
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    .line 4385
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p1

    .line 4388
    invoke-static {p1, p3}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    .line 4389
    invoke-static {p3, p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 4390
    invoke-virtual {p0, v1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4392
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4393
    throw p0

    .line 4395
    :cond_5
    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public setEnabledSessionForAccessibilityLocked(Landroid/util/SparseArray;Lcom/android/server/inputmethod/UserData;)V
    .locals 4

    .line 4922
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 4923
    :goto_0
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4924
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4925
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 4926
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v2, :cond_0

    .line 4928
    iget-object v3, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4933
    :cond_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4934
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4937
    :cond_2
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 4938
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 4939
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4940
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v1, :cond_3

    .line 4942
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4946
    :cond_4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4947
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 4950
    :cond_5
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    return-void
.end method

.method public setEnabledSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;Lcom/android/server/inputmethod/UserData;)V
    .locals 3

    .line 4902
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eq p0, p1, :cond_1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4903
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_0

    .line 4904
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4905
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    .line 4908
    :cond_0
    iput-object p1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p1, :cond_1

    .line 4909
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_1

    .line 4910
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4911
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V

    :cond_1
    return-void
.end method

.method public setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 4

    .line 4401
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 4402
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4405
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz p1, :cond_1

    .line 4407
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 4408
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 4409
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4408
    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4413
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4417
    :try_start_0
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4418
    :try_start_1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4419
    invoke-virtual {v3, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4420
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4423
    :cond_2
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 4424
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4425
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    .line 4426
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 4426
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 4428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4429
    throw p0

    .line 4410
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Calling UID="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not belong to imeId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 0

    .line 6778
    iget-object p0, p2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p0, :cond_0

    .line 6779
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    const/4 p0, 0x1

    return p0

    .line 6783
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x39

    invoke-interface {p0, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setImeWindowStatusLocked(IILcom/android/server/inputmethod/UserData;)V
    .locals 3

    .line 2841
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    .line 2843
    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2844
    iget-object p3, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2849
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v2

    if-eq v2, v0, :cond_0

    if-eqz v2, :cond_0

    return-void

    .line 2853
    :cond_0
    invoke-virtual {p3, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setImeWindowVis(I)V

    .line 2854
    invoke-virtual {p3, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setBackDisposition(I)V

    .line 2855
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    :cond_1
    move p3, v0

    .line 2870
    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(Z)V

    return-void
.end method

.method public final setInputMethodAndSubtypeLocked(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .locals 4

    .line 4215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4216
    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4217
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 4218
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4220
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4219
    invoke-virtual {p0, v3, v0, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 4224
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p2

    invoke-static {v2, p2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 4226
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    return-void

    .line 4221
    :cond_1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z
    .locals 4

    .line 5478
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 5480
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p0

    .line 5481
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5483
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    .line 5488
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    return v1

    .line 5493
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object p2

    .line 5494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5495
    invoke-virtual {v0, v3, p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5497
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p2

    .line 5498
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result p2

    if-nez p2, :cond_2

    .line 5500
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p2

    .line 5501
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5502
    const-string p1, "InputMethodManagerService"

    const-string p2, "Can\'t find new IME, unsetting the current input method."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    const-string p1, ""

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;I)V

    goto :goto_1

    .line 5505
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedDefaultDeviceInputMethod()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5510
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object p0

    .line 5509
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 5512
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    .line 5511
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    return v1
.end method

.method public setInputMethodLocked(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 3061
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    return-void
.end method

.method public setInputMethodLocked(Ljava/lang/String;III)V
    .locals 8

    .line 3066
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 3067
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3072
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 3074
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 3075
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 3077
    invoke-virtual {p0, p4, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    .line 3080
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p3

    if-ltz p2, :cond_1

    if-ge p2, p1, :cond_1

    .line 3083
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    goto :goto_1

    .line 3089
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    if-eqz p2, :cond_3

    :goto_0
    if-ge v4, p1, :cond_3

    .line 3092
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p2

    move p2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    move-object v7, p2

    move p2, p1

    move-object p1, v7

    .line 3099
    :goto_1
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p3, 0x1

    .line 3100
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3101
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3103
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result p3

    .line 3104
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v0

    .line 3103
    invoke-virtual {p0, p3, v0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 3105
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_4
    return-void

    .line 3112
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v3

    if-eqz v3, :cond_6

    if-nez p3, :cond_6

    .line 3118
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    return-void

    .line 3121
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 3123
    invoke-virtual {p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->removeStylusHandwritingWindow()V

    .line 3125
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3127
    :try_start_0
    invoke-virtual {p0, v1, p2, v4, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    .line 3131
    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->setSelectedMethodId(Ljava/lang/String;)V

    .line 3133
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 3134
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x20000000

    .line 3135
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3136
    const-string p3, "input_method_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3137
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 3139
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 p1, 0x2

    .line 3140
    invoke-virtual {p0, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3142
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3143
    throw p0

    .line 3069
    :cond_9
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V
    .locals 2

    .line 4809
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 4810
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    .line 4811
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4812
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4813
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested IME is not enabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4815
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4817
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4819
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4820
    throw p0
.end method

.method public final setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V
    .locals 4

    .line 5527
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5528
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v1

    .line 5529
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    .line 5530
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 5529
    invoke-virtual {v0, v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 5539
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 5540
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    .line 5541
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    goto :goto_1

    .line 5548
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 5551
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedSubtype(I)V

    .line 5552
    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5553
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    if-nez p3, :cond_4

    if-eqz p1, :cond_3

    .line 5557
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5561
    :cond_4
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->onInputMethodSubtypeChanged()V

    return-void
.end method

.method public setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 7

    .line 4612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4613
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4614
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    .line 4615
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v5

    .line 4616
    const-string/jumbo v3, "setStylusWindowIdleTimeoutForTest"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4618
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 4620
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4622
    :try_start_1
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "Setting stylus window idle timeout"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4623
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/inputmethod/IInputMethodInvoker;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4625
    :try_start_2
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4627
    monitor-exit v6

    return-void

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 4625
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4626
    throw p2

    .line 4627
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final shouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .locals 7

    .line 4326
    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4327
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_0

    return v6

    .line 4331
    :cond_0
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4333
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4332
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v6
.end method

.method public final shouldPreventImeStartupLocked(Ljava/lang/String;III)Z
    .locals 2

    .line 2279
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2282
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2285
    :cond_1
    invoke-static {p3, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 2288
    :cond_2
    invoke-static {p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    .line 2289
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 2293
    :cond_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowImeSwitcherButtonForTest()Z
    .locals 3

    .line 4197
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4198
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4199
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    const/4 v2, 0x3

    .line 4200
    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 4202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldShowImeSwitcherLocked(II)Z
    .locals 3

    .line 2745
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2755
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2756
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v2

    .line 2757
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    .line 2756
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2760
    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2761
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    return v1

    .line 2767
    :cond_4
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_5

    return v1

    .line 2777
    :cond_5
    invoke-static {v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(ZI)Z

    move-result p0

    return p0
.end method

.method public showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 14

    .line 3223
    const-string v0, "IMMS.showCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3224
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#showSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3226
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 3227
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v11

    .line 3228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3230
    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be shown"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p2

    .line 3231
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;II)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3235
    :try_start_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3236
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 3235
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3236
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3237
    throw p0

    .line 3238
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;II)Z
    .locals 8

    .line 3535
    invoke-virtual {p0, p7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 3536
    iget-object v7, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3537
    invoke-virtual {v7, p2, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onImeShowFlags(Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 3541
    :cond_0
    iget-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v2, 0x5

    if-nez p3, :cond_1

    .line 3542
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1

    .line 3545
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p3

    invoke-interface {p3, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p3, 0x1

    .line 3547
    invoke-virtual {v7, p1, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    .line 3550
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3551
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->setCurrentMethodVisible()V

    .line 3552
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    .line 3553
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v5, 0x8

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    if-eqz v2, :cond_3

    .line 3557
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_3

    .line 3564
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v1, 0x0

    .line 3565
    iput-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 3568
    invoke-virtual {p0, p7}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeReportToolType(I)V

    .line 3572
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 3573
    invoke-virtual {v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getShowFlagsForInputMethodServiceOnly()I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 3572
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->performShowIme(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)V

    .line 3575
    invoke-virtual {v7, p3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setInputShown(Z)V

    .line 3577
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->isSoftChangeMode:Z

    if-nez p1, :cond_2

    .line 3578
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/enote/ENoteSetting;->getCurrRealEpdMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    .line 3579
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "showCurrentInputLocked previous mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputMethodManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreviousMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 3581
    iput-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->isSoftChangeMode:Z

    .line 3582
    invoke-static {}, Landroid/os/enote/ENoteSetting;->getInstance()Landroid/os/enote/ENoteSetting;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/enote/ENoteSetting;->setCurrRealEpdMode(I)V

    :cond_2
    return p3

    .line 3587
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3588
    iput-object p2, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 4

    .line 4107
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    .line 4108
    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "showInputMethodPickerFromClient is not enabled on automotive"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4111
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4112
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 4113
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v0

    .line 4114
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4115
    const-string p0, "InputMethodManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4115
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4119
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 4122
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p1, :cond_2

    .line 4123
    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4124
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;III)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4129
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showInputMethodPickerFromSystem(II)V
    .locals 2

    .line 4139
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showInputMethodPickerLocked(III)V
    .locals 12

    const/4 v0, 0x0

    .line 4957
    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 4971
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown subtype picker mode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_0

    .line 4962
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 4963
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 4964
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p1

    .line 4975
    :goto_0
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 4976
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4977
    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v9, v2

    goto :goto_1

    :cond_3
    move v9, v0

    .line 4978
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 4980
    invoke-virtual {v3, v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v0

    .line 4982
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4983
    invoke-static {p1, v9, v2, v4, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v6

    .line 4986
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Show switching menu failed, imList is empty, showAuxSubtypes: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isScreenLocked: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " userId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4995
    :cond_4
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5000
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v2, v7, v4}, [Ljava/lang/Object;

    move-result-object p1

    .line 4995
    const-string v2, "Show IME switcher menu, showAuxSubtypes=%s displayId=%s preferredInputMethodId=%s preferredInputMethodSubtypeIndex=%s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    if-ne v0, p1, :cond_5

    .line 5005
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 5006
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5008
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p1

    .line 5009
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    .line 5011
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    .line 5010
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    :cond_5
    move v8, v0

    .line 5015
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    move v10, p2

    move v11, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->show(Ljava/util/List;Ljava/lang/String;IZII)V

    return-void
.end method

.method public final showMySoftInputLocked(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V
    .locals 0

    .line 4874
    iget p2, p4, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4876
    iget-object p2, p4, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p2, p2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 4877
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void
.end method

.method public showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 11

    const-wide/16 v1, 0x20

    .line 3165
    const-string v3, "IMMS.showSoftInput"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3166
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v1

    const-string v2, "InputMethodManagerService#showSoftInput"

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3168
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v10

    .line 3169
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3170
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3171
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(ILcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 3172
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;III)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v6, p6

    .line 3177
    invoke-virtual {p0, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendResultReceiverFailureLocked(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3179
    :cond_0
    :goto_0
    monitor-exit v10

    return v1

    .line 3180
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;III)Z
    .locals 2

    move-object p4, p3

    .line 3188
    const-string/jumbo p3, "showSoftInput"

    move-object p2, p1

    move p1, p8

    move p5, p9

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    const-wide/16 p2, 0x20

    const/4 p7, 0x0

    if-nez p1, :cond_0

    .line 3190
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p4, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 3192
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return p7

    .line 3195
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 3196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p8

    .line 3198
    :try_start_0
    sget-object p5, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Client requesting input be shown"

    new-array v1, p7, [Ljava/lang/Object;

    invoke-static {p5, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3200
    iget-object p5, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3201
    invoke-virtual {p5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->isInputShown()Z

    move-result p5

    .line 3202
    invoke-virtual {p0, p7, p1, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p6, :cond_2

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p7, 0x2

    :goto_0
    const/4 p0, 0x0

    .line 3204
    invoke-virtual {p6, p7, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 3216
    :cond_2
    :goto_1
    invoke-static {p8, p9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 3216
    :cond_3
    invoke-static {p8, p9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return p7

    .line 3216
    :goto_2
    invoke-static {p8, p9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3217
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3218
    throw p0
.end method

.method public startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 9

    move-object v5, p6

    .line 3273
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3274
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v3

    .line 3275
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsConnectionlessStylusHandwriting()Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 3276
    const-string v0, "InputMethodManagerService"

    const-string v2, "Connectionless stylus handwriting mode unsupported by IME."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    :try_start_1
    invoke-interface {p6, v6}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    .line 3280
    :try_start_2
    const-string v2, "InputMethodManagerService"

    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3281
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3283
    :goto_0
    monitor-exit v1

    goto/16 :goto_5

    .line 3285
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-eqz v6, :cond_3

    .line 3290
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 3291
    :try_start_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v3, p1, p5}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3301
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3302
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    move-object v8, v5

    move-object v3, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    move-object v8, v5

    .line 3292
    :try_start_4
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v2, "startConnectionlessStylusHandwriting() fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3294
    :try_start_5
    invoke-interface {p6, v7}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 3296
    :try_start_6
    const-string v2, "InputMethodManagerService"

    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3297
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3299
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Delegator doesn\'t match UID"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3301
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_3
    move-object v8, v5

    move-object v3, v8

    :goto_4
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, v6

    .line 3320
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3323
    :try_start_7
    invoke-interface {p6, v7}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 3325
    const-string v1, "InputMethodManagerService"

    const-string v2, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3326
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_4
    :goto_5
    return-void

    .line 3285
    :goto_6
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public startImeTrace()V
    .locals 2

    .line 4709
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 4710
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4711
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4712
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move/from16 v1, p11

    .line 3785
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 3786
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    .line 3789
    iget-object v2, v7, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    if-eqz v2, :cond_0

    .line 3790
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 3791
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "EditorInfo#targetInputMethodUser must also be specified for cross-user startInputOrWindowGainedFocus()"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 3796
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "windowToken cannot be null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3800
    :cond_2
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3805
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not running."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    .line 3808
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    const-wide/16 v4, 0x20

    .line 3810
    :try_start_0
    const-string v6, "IMMS.startInputOrWindowGainedFocus"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3812
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v6

    const-string v8, "InputMethodManagerService#startInputOrWindowGainedFocus"

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3815
    const-class v15, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3816
    :try_start_1
    iget-object v11, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 3818
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v6, :cond_4

    .line 3819
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 3822
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v1

    .line 3823
    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v2

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p1, v6

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_0
    move-exception v0

    move-wide/from16 v18, v4

    goto/16 :goto_3

    .line 3826
    :cond_4
    :try_start_2
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 3830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3833
    :try_start_3
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const/4 v8, 0x0

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v6, :cond_8

    .line 3835
    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, v2, :cond_5

    .line 3837
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3838
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3918
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v4

    goto/16 :goto_2

    .line 3840
    :cond_5
    :try_start_5
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v2

    .line 3842
    array-length v3, v2

    :goto_1
    if-ge v8, v3, :cond_7

    aget v6, v2, v8

    if-ne v6, v1, :cond_6

    .line 3844
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3845
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3918
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3848
    :cond_7
    :try_start_7
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3918
    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3853
    :cond_8
    :try_start_9
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v9, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v10, v13, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iget v12, v13, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v6, v3, v9, v10, v12}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result v6

    const/4 v9, -0x3

    if-eq v6, v9, :cond_10

    const/4 v9, -0x2

    if-eq v6, v9, :cond_f

    const/4 v9, -0x1

    if-eq v6, v9, :cond_e

    .line 3877
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v9, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 3878
    invoke-virtual {v6, v9}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->shouldClearShowForcedFlag(I)Z

    move-result v6

    .line 3879
    iget-object v9, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3880
    iget-boolean v10, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 3881
    iget-object v12, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eq v12, v3, :cond_9

    if-eqz v10, :cond_9

    if-eqz v6, :cond_9

    .line 3883
    iput-boolean v8, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 3887
    :cond_9
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v6, :cond_b

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq v1, v6, :cond_b

    .line 3888
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3889
    invoke-virtual {v3, v6, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v3

    .line 3888
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3893
    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 3894
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3918
    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3896
    :cond_a
    :try_start_b
    const-string v3, "InputMethodManagerService"

    const-string v6, "A background user is requesting window. Hiding IME."

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    const-string v3, "InputMethodManagerService"

    const-string v6, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v8, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 3902
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3918
    :try_start_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_b
    if-eqz v7, :cond_c

    .line 3905
    :try_start_d
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget-object v6, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/content/pm/PackageManagerInternal;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 3907
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3918
    :try_start_e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3932
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_c
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p12

    move/from16 v14, p13

    move-wide/from16 v18, v4

    move/from16 v4, p4

    move/from16 v5, p5

    .line 3912
    :try_start_f
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 3918
    :try_start_10
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3920
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-nez v0, :cond_d

    .line 3923
    :try_start_11
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3924
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowFlags=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " editorInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3923
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 3932
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_d
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    goto :goto_2

    :cond_e
    move-wide/from16 v18, v4

    .line 3866
    :try_start_12
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Focus gain on non-focused client %s (uid=%s pid=%s)"

    iget-object v2, v13, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v3, v13, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 3868
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v13, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 3866
    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3869
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 3918
    :try_start_13
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 3932
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_f
    move-wide/from16 v18, v4

    .line 3857
    :try_start_14
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 3918
    :try_start_15
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 3932
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_10
    move-wide/from16 v18, v4

    .line 3871
    :try_start_16
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 3918
    :try_start_17
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 3932
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 3918
    :goto_2
    :try_start_18
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3919
    throw v0

    :cond_11
    move-wide/from16 v18, v4

    .line 3828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3920
    :goto_3
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :catchall_5
    move-exception v0

    move-wide/from16 v18, v4

    .line 3932
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 3933
    throw v0
.end method

.method public startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;ZIZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public final startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 3947
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3959
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3960
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3961
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v8

    .line 3962
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3963
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v6, p7

    move-object/from16 v5, p8

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    filled-new-array/range {v3 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    move-object v4, v6

    .line 3947
    const-string/jumbo v5, "startInputOrWindowGainedFocusInternalLocked: reason=%s client=%s inputContext=%s editorInfo=%s startInputFlags=%s softInputMode=%s windowFlags=#%s unverifiedTargetSdkVersion=%s bindingController=%s imeDispatcher=%s cs=%s imeRequestedVisible=%s"

    invoke-static {v1, v5, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3965
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v11

    .line 3966
    invoke-virtual {v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v10

    .line 3967
    iget-object v3, v10, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v3, v2, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_1

    move/from16 v18, v13

    goto :goto_1

    :cond_1
    move/from16 v18, v12

    :goto_1
    and-int/lit8 v5, p4, 0x8

    if-eqz v5, :cond_2

    move/from16 v19, v13

    goto :goto_2

    :cond_2
    move/from16 v19, v12

    :goto_2
    if-eqz v4, :cond_3

    .line 3972
    invoke-virtual {v4}, Landroid/view/inputmethod/EditorInfo;->getInitialToolType()I

    move-result v5

    move/from16 v20, v5

    goto :goto_3

    :cond_3
    move/from16 v20, v12

    .line 3976
    :goto_3
    new-instance v14, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    xor-int/lit8 v17, v3, 0x1

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-direct/range {v14 .. v20}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIZZZI)V

    .line 3979
    iget-object v6, v10, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 3980
    invoke-virtual {v6, v2, v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowState(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    if-eqz v3, :cond_5

    if-eqz v18, :cond_5

    .line 3987
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p2

    filled-new-array {v5, v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3983
    const-string v3, "Window already focused, ignoring focus gain of: %s editorInfo=%s, token=%s, startInputReason=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v8, p12

    move-object/from16 v1, p13

    .line 3989
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 3994
    :cond_4
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p0, v0

    move/from16 p6, v1

    move/from16 p7, v2

    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v0

    :cond_5
    move/from16 v8, p4

    move-object v7, v0

    .line 3999
    new-instance v0, Lcom/android/server/inputmethod/ImeBindingState;

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v1

    move/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v4, p13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(ILandroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, v10, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 4001
    iget-object v0, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p10

    .line 4011
    invoke-static {v0, v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    move/from16 v2, p14

    .line 4010
    invoke-virtual {v6, v14, v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeState(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;ZZ)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_a

    .line 4015
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/16 v2, 0x17

    if-eq v1, v2, :cond_6

    move-object v0, v7

    move v13, v12

    goto :goto_4

    :cond_6
    if-eqz p7, :cond_7

    move-object v1, v7

    move v7, v0

    move-object v0, v1

    move/from16 v6, p1

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v9, p11

    move-object/from16 v1, p13

    move v5, v8

    move-object/from16 v8, p12

    .line 4023
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v15

    move v12, v13

    goto :goto_4

    :cond_7
    move-object v0, v7

    move/from16 v21, v13

    move v13, v12

    move/from16 v12, v21

    .line 4031
    :goto_4
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(ZII)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v8

    .line 4033
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v1, v10, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 4034
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getState()I

    move-result v9

    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v10

    .line 4033
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 4035
    invoke-virtual {v14}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->getReason()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_8

    move-object/from16 v1, p13

    .line 4041
    iget v2, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 4042
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    goto :goto_5

    :cond_8
    move-object/from16 v1, p13

    :cond_9
    :goto_5
    move v12, v13

    goto :goto_6

    :cond_a
    move-object/from16 v1, p13

    move-object v0, v7

    :goto_6
    if-nez v12, :cond_c

    if-eqz p7, :cond_b

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v9, p11

    move-object/from16 v8, p12

    .line 4048
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    .line 4053
    :cond_b
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_c
    return-object v15
.end method

.method public final startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 12

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p9

    .line 2088
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v4

    .line 2089
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v5

    .line 2090
    iget-object v6, v5, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2094
    iget-object v7, v5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowStateOrNull(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2097
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2099
    :cond_0
    iget v8, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 2101
    invoke-virtual {v6, v7, v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->computeImeDisplayId(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;I)I

    move-result v7

    .line 2100
    invoke-virtual {v3, v7}, Lcom/android/server/inputmethod/InputMethodBindingController;->setDisplayIdToShowIme(I)V

    .line 2105
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v7

    .line 2107
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getUserId()I

    move-result v8

    .line 2106
    invoke-virtual {p0, v8, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeCurrentDeviceMethodIdLocked(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 2109
    invoke-virtual {v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setImeHiddenByDisplayPolicy(Z)V

    goto :goto_0

    .line 2110
    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v7, -0x1

    .line 2112
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v10

    .line 2111
    invoke-virtual {p0, v8, v7, v10, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;III)V

    move-object v7, v8

    .line 2116
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isImeHiddenByDisplayPolicy()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 2117
    iget-object p1, v5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v8, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;III)Z

    .line 2119
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    :cond_3
    if-nez v7, :cond_4

    .line 2124
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2127
    :cond_4
    iget-object v6, v5, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eq v6, p1, :cond_5

    .line 2128
    invoke-virtual {p0, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->prepareClientSwitchLocked(Lcom/android/server/inputmethod/ClientState;I)V

    .line 2131
    :cond_5
    iget-object v6, v5, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v6, :cond_6

    move v6, v9

    goto :goto_1

    :cond_6
    move v6, v8

    .line 2134
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->advanceSequenceNumber()V

    .line 2136
    iput-object p1, v5, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2137
    iput-object p2, v5, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 2138
    iput-object p3, v5, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-object/from16 v10, p8

    .line 2139
    iput-object v10, v5, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 2141
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v10, :cond_7

    .line 2142
    const-class v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2144
    :cond_7
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v10, :cond_8

    iget-object v11, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-nez v11, :cond_8

    .line 2145
    iget v11, p1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v10, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPreferredLocaleListForUid(I)Landroid/os/LocaleList;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 2147
    iput-object v10, v0, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 2150
    :cond_8
    iput-object v0, v5, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 2153
    iget-object v0, v5, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v0, :cond_9

    move v0, v9

    goto :goto_2

    :cond_9
    move v0, v8

    :goto_2
    if-eq v0, v6, :cond_a

    .line 2155
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v5, v0}, Lcom/android/server/input/InputManagerInternal;->notifyInputMethodConnectionActive(Z)V

    :cond_a
    move/from16 v0, p7

    .line 2159
    invoke-virtual {p0, v7, v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldPreventImeStartupLocked(Ljava/lang/String;III)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2161
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p1, "Avoiding IME startup and unbinding current input method."

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2162
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->invalidateAutofillSession()V

    .line 2163
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2164
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 2170
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v0

    .line 2171
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDisplayIdToShowIme()I

    move-result v5

    if-eqz v0, :cond_f

    .line 2172
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2173
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v0

    if-ne v5, v0, :cond_f

    .line 2174
    iget-object v0, p1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_e

    .line 2182
    iput-boolean v8, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2183
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_c

    move v0, v9

    goto :goto_3

    :cond_c
    move v0, v8

    .line 2186
    :goto_3
    invoke-virtual {p0, v2, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZI)V

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move v9, v8

    .line 2188
    :goto_4
    invoke-virtual {p0, v2, v9, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZI)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0

    .line 2192
    :cond_e
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ClientState;I)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    if-eqz p0, :cond_f

    return-object p0

    .line 2198
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 2199
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object p0

    return-object p0
.end method

.method public startProtoDump([BILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    if-nez v0, :cond_0

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    .line 4659
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v4

    .line 4660
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 4664
    :cond_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v6, 0x10b00000003L

    const-wide v8, 0x10900000002L

    const-wide v10, 0x10600000001L

    const-wide v12, 0x20b00000002L

    if-eqz v1, :cond_4

    const/4 v14, 0x1

    if-eq v1, v14, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 4684
    :cond_2
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 4686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 4685
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4687
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v0, p0

    .line 4688
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4690
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 4675
    :cond_3
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 4677
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 4676
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4678
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4679
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4680
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 4667
    :cond_4
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 4669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    .line 4668
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4670
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4671
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 4672
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4696
    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 1

    const/4 v0, 0x0

    .line 3264
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3332
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z
    .locals 11

    .line 3338
    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3340
    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 3342
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3343
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3344
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3345
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v10

    if-nez p2, :cond_0

    .line 3347
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 3349
    :cond_0
    :goto_0
    const-string/jumbo v8, "startStylusHandwriting"

    const/4 v9, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 3351
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3353
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasSupportedStylusLocked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3354
    const-string p0, "InputMethodManagerService"

    const-string p1, "No supported Stylus hardware found on device. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3358
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3360
    :try_start_4
    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 3361
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->supportsStylusHandwriting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3362
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3393
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 3367
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    .line 3368
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3369
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3393
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3372
    :cond_4
    :try_start_8
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v4}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3373
    const-string p0, "InputMethodManagerService"

    const-string p1, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3393
    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3377
    :cond_5
    :try_start_a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->hasOngoingStylusHandwritingSession()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 3379
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting session is already ongoing. Ignoring startStylusHandwriting()."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3393
    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3384
    :cond_6
    :try_start_c
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting Stylus Handwriting to be started"

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3385
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 3387
    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    move/from16 p2, p5

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3393
    :try_start_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 3393
    :cond_7
    :try_start_e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3395
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 3393
    :goto_1
    :try_start_f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3394
    throw p0

    .line 3395
    :goto_2
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 3397
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3398
    throw p0
.end method

.method public stopImeTrace()V
    .locals 2

    .line 4719
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 4720
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 4721
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 4722
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final switchKeyboardLayoutLocked(ILcom/android/server/inputmethod/UserData;)V
    .locals 11

    .line 5654
    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 5655
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 5657
    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5658
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5659
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v4

    .line 5658
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 5663
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 5666
    iget-object v5, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    const/4 p2, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    move v10, p1

    goto :goto_0

    :cond_1
    move v10, p2

    :goto_0
    const/4 v6, 0x0

    const/4 v9, 0x2

    .line 5667
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodForHardware(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5671
    const-string p0, "InputMethodManagerService"

    const-string p1, "Hardware keyboard switching shortcut, next input method and subtype not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5676
    :cond_2
    iget v2, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-le v2, v4, :cond_3

    .line 5677
    iget-object v5, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 5678
    :goto_1
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {p1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 5688
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 5693
    :cond_5
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 5695
    invoke-static {v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5696
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    return-void

    :cond_6
    :goto_2
    if-ge p2, v2, :cond_8

    .line 5703
    invoke-virtual {v1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v3

    .line 5702
    invoke-virtual {p1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5704
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    return-void

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public final switchToInputMethodLocked(Ljava/lang/String;II)Z
    .locals 2

    .line 5615
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5616
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5617
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5620
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z
    .locals 8

    .line 4306
    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4307
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_0

    return v7

    .line 4311
    :cond_0
    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 4313
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    move v2, p1

    .line 4312
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;IZ)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    if-nez p1, :cond_1

    return v7

    .line 4318
    :cond_1
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    iget p2, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final switchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/UserData;)Z
    .locals 14

    .line 4232
    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 4233
    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4234
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    .line 4235
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodAndSubtype()Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4238
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 4242
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 4246
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 4247
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v8

    .line 4246
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 4248
    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v5, :cond_1

    move v9, v6

    goto :goto_1

    .line 4250
    :cond_1
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    :goto_1
    if-eqz v7, :cond_2

    if-eq v8, v9, :cond_3

    .line 4254
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 4255
    invoke-static {v4, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6

    .line 4259
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    .line 4260
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4264
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v5, :cond_4

    .line 4268
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 4269
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 4271
    :cond_4
    invoke-static {v0}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get(I)Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move v10, v9

    :goto_3
    if-ge v10, v7, :cond_6

    .line 4274
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 4275
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v12

    if-lez v12, :cond_5

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4278
    invoke-static {v11}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v13, "keyboard"

    .line 4277
    invoke-static {v12, v13, v5, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 4281
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 4283
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v6

    .line 4282
    invoke-static {v11, v6}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v6

    .line 4284
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 4292
    :cond_6
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4293
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 4294
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v2, p1, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 4293
    const-string v2, "Switch to: %s, %s, from: %s, %s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4295
    invoke-virtual {p0, v3, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(Ljava/lang/String;II)V

    return v8

    :cond_7
    return v9
.end method

.method public final switchUserOnHandlerLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 7

    .line 1384
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1385
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1385
    const-string v3, "Switching user stage 1/3. newUserId=%s prevUserId=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    .line 1395
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 1396
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 v2, 0x6

    .line 1398
    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    .line 1402
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1405
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    .line 1407
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1408
    const-string v2, "default_input_method"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Switching user stage 2/3. newUserId=%s defaultImiId=%s"

    invoke-static {v1, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1421
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 1422
    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    .line 1424
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1427
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    :cond_0
    const/4 v4, 0x1

    .line 1429
    invoke-virtual {p0, v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 1436
    iget-object v4, v0, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    if-eqz v4, :cond_1

    .line 1438
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v5, p1, v6, v4}, Lcom/android/server/input/InputManagerInternal;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 1443
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1444
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1445
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1443
    invoke-static {v2, v4}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1448
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1449
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1448
    const-string v2, "Switching user stage 3/3. newUserId=%s selectedIme=%s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1451
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1452
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 1457
    :cond_3
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p1, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->scheduleStartInputIfNecessary(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public systemRunning()V
    .locals 13

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->waitForUserInitialization()V

    .line 1497
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    .line 1498
    :try_start_0
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "--- systemReady"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1500
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 1501
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    .line 1502
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1503
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1504
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    .line 1505
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 1506
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v4

    .line 1507
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    .line 1506
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    .line 1508
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v2, 0x11102ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 1517
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "accessibility_soft_keyboard_mode"

    const-string v8, "default_input_method"

    const-string v9, "enabled_input_methods"

    const-string/jumbo v10, "selected_input_method_subtype"

    const-string/jumbo v11, "show_ime_with_hard_keyboard"

    const-string/jumbo v12, "stylus_handwriting_enabled"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V

    .line 1532
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1533
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsBroadcastReceiverForAllUsers;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1538
    invoke-static {}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->startWriterThread()V

    .line 1540
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1541
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1544
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final tryReuseConnectionLocked(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ClientState;I)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 10

    .line 2315
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2316
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2323
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2326
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v5

    .line 2327
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v0

    .line 2329
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getLastBindTime()J

    move-result-wide p2

    .line 2330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 p2, 0xbb8

    cmp-long p0, v0, p2

    if-gez p0, :cond_1

    .line 2339
    new-instance v2, Lcom/android/internal/inputmethod/InputBindResult;

    .line 2342
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v7

    .line 2343
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v8

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v2

    .line 2346
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d00

    .line 2345
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public unbindCurrentClientLocked(II)V
    .locals 5

    .line 1876
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 1877
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_1

    .line 1878
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 1879
    invoke-virtual {v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1878
    const-string/jumbo v3, "unbindCurrentInputLocked: client=%s"

    invoke-static {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1880
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 1881
    iget-boolean v2, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1882
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    .line 1883
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1885
    invoke-virtual {v2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->unbindInput()V

    .line 1888
    :cond_0
    iput-boolean v3, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    .line 1893
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 1895
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v2, v4, p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onUnbindMethod(II)V

    .line 1897
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iput-boolean v3, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 1898
    iput-boolean v3, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    const/4 p1, 0x0

    .line 1899
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 1900
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1902
    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 1905
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->hide(II)V

    :cond_1
    return-void
.end method

.method public final updateDefaultVoiceImeIfNeededLocked(I)V
    .locals 5

    .line 5438
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 5439
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104002e

    .line 5440
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5441
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getDefaultVoiceInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 5443
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    .line 5442
    invoke-static {v3, v1, v2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->chooseSystemVoiceIme(Lcom/android/server/inputmethod/InputMethodMap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5445
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Found no valid default Voice IME. If the user is still locked, this may be expected."

    invoke-static {p0, v1, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5449
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 5450
    const-string p0, ""

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    return-void

    .line 5456
    :cond_0
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    .line 5459
    :cond_2
    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 5460
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 5459
    const-string v4, "Enabling the default Voice IME: %s userId: %s"

    invoke-static {v2, v4, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5461
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;ZI)Z

    .line 5462
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettings;->putDefaultVoiceInputMethod(Ljava/lang/String;)V

    return-void
.end method

.method public updateFromSettingsLocked(ZI)V
    .locals 0

    .line 2955
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(ZI)V

    return-void
.end method

.method public final updateImeWindowStatusLocked(ZI)V
    .locals 1

    .line 2886
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p2

    if-eqz p1, :cond_0

    .line 2888
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    const/4 v0, 0x0

    .line 2889
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void

    .line 2891
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    return-void
.end method

.method public updateInputMethodsFromSettingsLocked(ZI)V
    .locals 10

    .line 2963
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2965
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2968
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 2969
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2972
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 2975
    :try_start_0
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x8000

    .line 2976
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v8

    .line 2975
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_0

    .line 2980
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v7, v1, :cond_0

    .line 2982
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 2983
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 2982
    const-string v9, "Update state(%s): DISABLED_UNTIL_USED -> DEFAULT"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2984
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v4, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2991
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    .line 2992
    iget-object v3, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2993
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->getDeviceIdToShowIme()I

    move-result v3

    if-nez v3, :cond_2

    .line 2994
    const-string v3, "default_input_method"

    invoke-static {v3, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2996
    const-string v5, "default_device_input_method"

    invoke-static {v5, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2998
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2999
    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    .line 3002
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v8, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2999
    const-string v8, "Current input method %s differs from the stored default device input method for user %s - restoring %s"

    invoke-static {v7, v8, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3003
    invoke-static {v3, v6, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3005
    invoke-static {v5, v2, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3014
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 3016
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3017
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 3019
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3021
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 3023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    .line 3024
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    goto :goto_2

    .line 3028
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(II)V

    .line 3031
    :goto_2
    iget-object p2, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 3032
    iget-object p2, p1, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    .line 3033
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public final updateStatusIconLocked(Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .locals 9

    .line 2672
    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    .line 2675
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2679
    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p2, "hide the small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2680
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 2682
    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v2, "show a small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2683
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2684
    invoke-static {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2688
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    .line 2687
    invoke-virtual {p3, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2692
    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v2

    .line 2694
    :goto_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v3, :cond_4

    .line 2695
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 2697
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v8, v2

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    .line 2695
    invoke-interface/range {v3 .. v8}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2698
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateSystemUiLocked(I)V
    .locals 2

    .line 2898
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v0

    .line 2899
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getImeWindowVis()I

    move-result v1

    .line 2900
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v0

    .line 2899
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public final updateSystemUiLocked(III)V
    .locals 8

    .line 2908
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 2911
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    .line 2912
    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2913
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 2917
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurTokenDisplayId()I

    move-result v2

    .line 2918
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-int/lit8 v5, p1, 0x1

    .line 2919
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 v6, p1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2920
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 2918
    const-string v5, "IME window vis: %s active: %s visible: %s displayId: %s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2921
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 2923
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2927
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v0, :cond_3

    .line 2929
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, -0x3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2932
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurId()Ljava/lang/String;

    move-result-object v0

    .line 2935
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuControllerNew:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2938
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 p2, 0x3

    .line 2943
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p3

    .line 2944
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_6

    .line 2945
    invoke-interface {p0, v2, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setImeWindowStatus(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    :cond_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2950
    throw p0
.end method

.method public final userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .locals 1

    .line 6842
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6844
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final verifyDelegator(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 3477
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 3478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3479
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not belong to the same user. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    and-int/2addr p4, p1

    if-eqz p4, :cond_1

    move p4, p1

    goto :goto_0

    :cond_1
    move p4, v1

    .line 3486
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatorPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 3488
    invoke-virtual {p3}, Lcom/android/server/inputmethod/HandwritingModeController;->isDelegatorFromDefaultHomePackage()Z

    move-result p3

    if-nez p3, :cond_3

    .line 3489
    :cond_2
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegator package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    monitor-exit v0

    return v1

    .line 3493
    :cond_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getDelegatePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 3494
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    monitor-exit v0

    return v1

    .line 3498
    :cond_4
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final waitForUserInitialization()V
    .locals 12

    .line 1462
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 1463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xbb8

    .line 1464
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    .line 1467
    :try_start_0
    array-length v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v3

    :goto_0
    if-ge v3, v4, :cond_1

    :try_start_1
    aget v6, v0, v3

    .line 1468
    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v8, v1, v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1474
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_0

    .line 1481
    :try_start_3
    const-string v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timed out for user#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to be initialized"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move v3, v5

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 1486
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1488
    :cond_3
    throw p0
.end method
