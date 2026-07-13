.class public final Lcom/android/server/autofill/ui/AutoFillUI;
.super Ljava/lang/Object;
.source "AutoFillUI.java"


# instance fields
.field public mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mContext:Landroid/content/Context;

.field public mCreateFillUiRunnable:Ljava/lang/Runnable;

.field public mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

.field public mFillUi:Lcom/android/server/autofill/ui/FillUi;

.field public final mHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

.field public mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final mUiModeMgr:Lcom/android/server/UiModeManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$BQ5PwTGQkrD1cNp6KtZLSqedBU8(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p14}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showSaveUi$7(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$DVAnQZTMeWDayJpb9OM9Nuon-_Y(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideFillUi$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L8yxqxM9aXd5dPL761kjNiCnc9I(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$onPendingSaveUi$9(ILandroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NN-BJAvetBGQ8IjHhLol_a-wjVc(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$destroyAll$11(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qlr74mck9Vib43sd3il-W-wsKdU(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$setCallback$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XLG0cjVLh-AgsG0eg9Wg6cPrkXI(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$filterFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zwg-B6p2IPL96nB-W21noo_ok2Y(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$6(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDJB-ApAhg8Mvf8G42Sh21ysZIw(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideAll$10(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYitYywY-bgKefHspzKo5ryTWlU(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$em6tpwp028YC9vpwp02B3b7yOxo(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$hideFillDialog$4(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xesWzbK0RZ0FdonBMrMBCUace4U(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillDialog$8(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xtXgiLwSDgnTHbXQIKqw4lrlxto(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showError$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricsLogger(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdestroySaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 109
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/server/autofill/ui/OverlayControl;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/ui/OverlayControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 111
    const-class p1, Lcom/android/server/UiModeManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/UiModeManagerInternal;

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    return-void
.end method


# virtual methods
.method public clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0

    .line 653
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 654
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 655
    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public final destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    const-string v1, "AutofillUI"

    if-nez v0, :cond_0

    .line 626
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_5

    const-string p0, "destroySaveUiUiThread(): already destroyed"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySaveUiUiThread(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->destroy()V

    const/4 v0, 0x0

    .line 632
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 633
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 636
    :try_start_0
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_2

    const-string p2, "destroySaveUiUiThread(): notifying client"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 637
    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    iget p1, p1, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 639
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client to set save UI state to hidden: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 644
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_4

    const-string/jumbo p1, "start the pending fill UI request.."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_4
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 566
    const-string v0, "Autofill UI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Night mode: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    const-string v2, "    "

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsFillUi: true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/ui/FillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsFillUi: false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v1, :cond_1

    .line 577
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsSaveUi: true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/ui/SaveUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "showsSaveUi: false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    :goto_1
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-eqz v1, :cond_2

    .line 583
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showsFillDialog: true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/autofill/ui/DialogFillUi;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 586
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "showsFillDialog: false"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 3

    const/4 v0, 0x1

    .line 660
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 664
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    .line 665
    const-string v1, "AutofillUI"

    const-string v2, "hideAllUiThread(): destroying Save UI because pending restoration is finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    :cond_1
    return-void
.end method

.method public hideFillDialog(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v1, :cond_1

    .line 615
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi;->destroy()V

    const/4 p1, 0x0

    .line 616
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    :cond_1
    return-void
.end method

.method public hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p1, v1, :cond_1

    .line 593
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/FillUi;->destroy(Z)V

    const/4 p1, 0x0

    .line 594
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    :cond_1
    return-void
.end method

.method public final hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 2

    .line 601
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSaveUiUiThread(): mSaveUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne p0, p1, :cond_1

    .line 607
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFillDialogShowing()Z
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/DialogFillUi;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isSaveUiShowing()Z
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->isShowing()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$clearCallback$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-ne v0, p1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    :cond_0
    return-void
.end method

.method public final synthetic lambda$destroyAll$11(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V
    .locals 0

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAllUiThread(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public final synthetic lambda$filterFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    if-eqz p0, :cond_1

    .line 187
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/FillUi;->setFilterText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic lambda$hideAll$10(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public final synthetic lambda$hideFillDialog$4(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public final synthetic lambda$hideFillUi$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public final synthetic lambda$onPendingSaveUi$9(ILandroid/os/IBinder;)V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    if-eqz p0, :cond_0

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->onPendingUi(ILandroid/os/IBinder;)V

    return-void

    .line 537
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPendingSaveUi("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): no save ui"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutofillUI"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$setCallback$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->isSaveUiShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 125
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    :cond_2
    return-void
.end method

.method public final synthetic lambda$showError$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic lambda$showFillDialog$8(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V
    .locals 12

    .line 444
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 448
    new-instance v8, Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v9, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    move-object v10, v9

    iget-object v9, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 450
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v11

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/ui/AutoFillUI$3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V

    move-object/from16 v7, p6

    move-object v3, v5

    move-object v4, v6

    move-object v1, v8

    move-object v2, v10

    move v10, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object v11, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/autofill/ui/DialogFillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/DialogFillUi$UiCallback;)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    return-void
.end method

.method public final synthetic lambda$showFillUi$6(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V
    .locals 12

    .line 229
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq p1, v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 233
    new-instance v6, Lcom/android/server/autofill/ui/FillUi;

    move-object v7, v6

    iget-object v6, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 234
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v9

    new-instance v11, Lcom/android/server/autofill/ui/AutoFillUI$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v2, p9

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    move-object v2, p2

    move-object/from16 v8, p7

    move/from16 v10, p8

    move-object v3, v4

    move-object v4, v5

    move-object v1, v7

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/FillUi$Callback;)V

    move-object v7, v1

    iput-object v7, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    return-void
.end method

.method public final synthetic lambda$showSaveUi$7(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 360
    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    if-eq v4, v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 364
    iput-object v4, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 365
    new-instance v6, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v10, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    new-instance v11, Lcom/android/server/autofill/ui/AutoFillUI$2;

    move-object/from16 v5, p3

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$2;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;)V

    move-object v0, v1

    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerInternal;

    .line 415
    invoke-virtual {v1}, Lcom/android/server/UiModeManagerInternal;->isNightMode()Z

    move-result v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object v1, v6

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v15}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZZ)V

    iput-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 417
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetLatencySaveUiDisplayMillis()V

    return-void
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method public showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showError(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFillDialog(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZLcom/android/server/autofill/PresentationStatsEventLogger;Ljava/lang/Object;)V
    .locals 14

    .line 430
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showFillDialog for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "AutofillUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    const/16 v0, 0x38e

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v1, p8

    move/from16 v2, p9

    .line 436
    invoke-static {v0, v10, v9, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_1

    move v2, v1

    goto :goto_1

    .line 439
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x38f

    .line 438
    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 441
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38d

    .line 440
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v13

    .line 443
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;

    move-object v3, p0

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v4, p7

    move-object/from16 v12, p10

    move-object/from16 v11, p11

    invoke-direct/range {v2 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;IZI)V
    .locals 12

    .line 215
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v11, "AutofillUI"

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    move v0, v1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 217
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    invoke-virtual/range {p9 .. p9}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 217
    const-string/jumbo v2, "showFillUi(): id=%s, filter=%d chars, displayId=%d"

    invoke-static {v11, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x38e

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p10

    move/from16 v6, p11

    .line 221
    invoke-static {v0, v3, v2, v4, v6}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    if-nez p3, :cond_2

    move v2, v1

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x38f

    .line 223
    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 226
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38d

    .line 225
    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v10

    .line 228
    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;

    move-object v1, p0

    move-object v5, p1

    move-object v4, p2

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v9, p12

    invoke-direct/range {v0 .. v10}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->isSaveUiShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "postpone fill UI request.."

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_4
    iput-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Ljava/lang/Runnable;

    return-void

    .line 330
    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;ZZZLcom/android/server/autofill/SaveEventLogger;)V
    .locals 19

    .line 343
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    invoke-virtual/range {p6 .. p6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v12, p4

    filled-new-array {v0, v1, v2, v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 344
    const-string v1, "AutofillUI"

    const-string/jumbo v2, "showSaveUi(update=%b) for %s and display %d: %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p4

    .line 348
    :goto_0
    invoke-virtual {v12}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    array-length v0, v0

    .line 349
    :goto_1
    invoke-virtual {v12}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v12}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    move-object/from16 v7, p9

    .line 351
    iget v1, v7, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/16 v2, 0x394

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move/from16 v3, p11

    .line 352
    invoke-static {v2, v11, v10, v1, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x395

    invoke-virtual {v1, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v14

    if-eqz p10, :cond_3

    const/4 v0, 0x1

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x613

    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    move-object/from16 v4, p0

    .line 359
    iget-object v0, v4, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object/from16 v15, p13

    invoke-direct/range {v3 .. v18}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
