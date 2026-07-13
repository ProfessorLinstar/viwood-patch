.class public final Lcom/android/server/inputmethod/InputMethodBindingController;
.super Ljava/lang/Object;
.source "InputMethodBindingController.java"


# static fields
.field static final IME_CONNECTION_BIND_FLAGS:I = 0x40880005

.field static final IME_VISIBLE_BIND_FLAGS:I = 0x2c001001

.field public static final TAG:Ljava/lang/String; = "InputMethodBindingController"


# instance fields
.field public final mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

.field public mBackDisposition:I

.field public final mContext:Landroid/content/Context;

.field public mCurId:Ljava/lang/String;

.field public mCurIntent:Landroid/content/Intent;

.field public mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public mCurMethodUid:I

.field public mCurSeq:I

.field public mCurToken:Landroid/os/IBinder;

.field public mCurTokenDisplayId:I

.field public mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mDeviceIdToShowIme:I

.field public mDisplayIdToShowIme:I

.field public mHasMainConnection:Z

.field public final mImeConnectionBindFlags:I

.field public mImeWindowVis:I

.field public mLastBindTime:J

.field public mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

.field public final mMainConnection:Landroid/content/ServiceConnection;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSelectedMethodId:Ljava/lang/String;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mSupportsConnectionlessStylusHw:Z

.field public mSupportsStylusHw:Z

.field public final mUserId:I

.field public mVisibleBound:Z

.field public final mVisibleConnection:Landroid/content/ServiceConnection;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAutofillController(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/AutofillSuggestionsController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurIntent(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/Intent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurToken(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLatchForTesting(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/inputmethod/InputMethodBindingController;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedMethodId(Lcom/android/server/inputmethod/InputMethodBindingController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/inputmethod/InputMethodBindingController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethod(Lcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/IInputMethodInvoker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurMethodUid(Lcom/android/server/inputmethod/InputMethodBindingController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBindTime(Lcom/android/server/inputmethod/InputMethodBindingController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSupportsConnectionlessStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSupportsStylusHw(Lcom/android/server/inputmethod/InputMethodBindingController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCurMethodAndSessions(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 2

    .line 154
    sget v0, Lcom/android/server/inputmethod/InputMethodBindingController;->IME_CONNECTION_BIND_FLAGS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;ILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;ILjava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 93
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 100
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 113
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    .line 354
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$1;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 378
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$2;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    .line 160
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 161
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 162
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 163
    new-instance p1, Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 164
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 165
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 166
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeConnectionBindFlags:I

    .line 167
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLatchForTesting:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public advanceSequenceNumber()V
    .locals 2

    .line 305
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    if-gtz v0, :cond_0

    .line 307
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    :cond_0
    return-void
.end method

.method public final bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, p1, p2, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 602
    :cond_1
    :goto_0
    sget-object p2, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", conn = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final bindCurrentInputMethodServiceMainConnection()Z
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeConnectionBindFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return v0
.end method

.method public bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;
    .locals 13

    .line 535
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 536
    sget-object p0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string v0, "mSelectedMethodId is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 540
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 546
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 548
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 552
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 553
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 558
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7db

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 561
    new-instance v5, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v12, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v5

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure connecting to input method service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 569
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    return-object p0

    .line 543
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearCurMethodAndSessions()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionsLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const/4 v0, -0x1

    .line 517
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return-void
.end method

.method public final createImeBindingIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 4

    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 576
    const-string p1, "android.intent.extra.client_label"

    const v1, 0x1040522

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v1, 0x2

    .line 579
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 581
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 583
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v3, 0x0

    .line 581
    invoke-static {p0, v3, v1, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSelectedMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasMainConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mVisibleBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurTokenDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurHostInputToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurHostInputToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeWindowVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBackDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDisplayIdToShowIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeviceIdToShowIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSupportsStylusHw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mSupportsConnectionlessStylusHw="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBackDisposition()I
    .locals 0

    .line 739
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    return p0
.end method

.method public getCurHostInputToken()Landroid/os/IBinder;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->getCurHostInputToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getCurId()Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurIntent()Landroid/content/Intent;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getCurMethod()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public getCurMethodUid()I
    .locals 0

    .line 326
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    return p0
.end method

.method public getCurToken()Landroid/os/IBinder;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getCurTokenDisplayId()I
    .locals 0

    .line 278
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    return p0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 4

    .line 684
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 688
    :cond_0
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 689
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0, v2, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->getCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/server/inputmethod/InputMethodSettings;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 695
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCurrentSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object p0
.end method

.method public getDeviceIdToShowIme()I
    .locals 0

    .line 717
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    return p0
.end method

.method public getDisplayIdToShowIme()I
    .locals 0

    .line 707
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    return p0
.end method

.method public getImeWindowVis()I
    .locals 0

    .line 733
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    return p0
.end method

.method public getLastBindTime()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    return-wide v0
.end method

.method public getSelectedMethod()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedMethodId()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-object p0
.end method

.method public getSequenceNumber()I
    .locals 0

    .line 296
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 722
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    return p0
.end method

.method public hasMainConnection()Z
    .locals 0

    .line 185
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return p0
.end method

.method public invalidateAutofillSession()V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->invalidateAutofillSession()V

    return-void
.end method

.method public isVisibleBound()Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return p0
.end method

.method public onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;Z)V

    return-void
.end method

.method public final removeCurrentToken()V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    const/4 v0, -0x1

    .line 529
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    return-void
.end method

.method public setBackDisposition(I)V
    .locals 0

    .line 744
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    return-void
.end method

.method public setCurrentMethodNotVisible()V
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    :cond_0
    return-void
.end method

.method public setCurrentMethodVisible()V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v1, 0x2c001001

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    return-void

    .line 641
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getSelectedMethodId()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d00

    .line 647
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 649
    sget-object v0, Lcom/android/server/inputmethod/InputMethodBindingController;->TAG:Ljava/lang/String;

    const-string v1, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodServiceMainConnection()Z

    :cond_2
    return-void
.end method

.method public setCurrentSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method public setDeviceIdToShowIme(I)V
    .locals 0

    .line 712
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    return-void
.end method

.method public setDisplayIdToShowIme(I)V
    .locals 0

    .line 702
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    return-void
.end method

.method public setImeWindowVis(I)V
    .locals 0

    .line 727
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    return-void
.end method

.method public setSelectedMethodId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    return-void
.end method

.method public supportsConnectionlessStylusHandwriting()Z
    .locals 0

    .line 348
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    return p0
.end method

.method public supportsStylusHandwriting()Z
    .locals 0

    .line 342
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    return p0
.end method

.method public unbindCurrentMethod()V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->isVisibleBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindVisibleConnection()V

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->hasMainConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindMainConnection()V

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSystemUiLocked(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->removeCurrentToken()V

    .line 506
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->onResetSystemUi()V

    :cond_2
    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 510
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    return-void
.end method

.method public final unbindMainConnection()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    return-void
.end method

.method public unbindVisibleConnection()V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    return-void
.end method
