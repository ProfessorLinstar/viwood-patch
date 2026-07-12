.class public Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# static fields
.field public static final ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

.field public static final BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

.field public static final BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStrictModeBalCallbacks:Landroid/util/SparseArray;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskIdToFinishedActivity:Ljava/util/HashMap;

.field public mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;


# direct methods
.method public static synthetic $r8$lambda$0txmP7nEF0LrgLPG4AUjroyjecg(IIILcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1495
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

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

.method public static synthetic $r8$lambda$4XphJH50pbXG7XA_vyhxMUD02PI(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1577
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$6pV9vHbj0k0gwICnR9quSaNvtrY(Ljava/util/StringJoiner;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]    T: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->toFullString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$9mD1MFsGNRxyY3OUy6EnJx1kz5o(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$checkTopActivityForAsm$24(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSn_PZ1Gf7aRLCU8NHv6pxgvanA(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DhQDAQyQgw-XKj1Nh-wjYh-21vo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F6iaE2jcl2tpq3MAx3HO6Nibx_Q(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$4(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FJFLqdYoRSV-0g5di0PIFpH82xo(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FMo7NrtbDsWPz89uQRgB85HQ8l4(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1673
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$KCH4emsy9MoEKCDjO_eBL_oxwTU(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1679
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_0

    .line 1680
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Oj55gCcC-ZmBa1qdBpRJyeEgmWc(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$R6w0O4KPPVd4sTu9TdTn2Gx0voo(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1233
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1237
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAllowBalExemptionForSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsRealCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1239
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v0, 0x2

    const-string v1, "realCallingUid is persistent system process AND intent sender forced to allow."

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1243
    :cond_1
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public static synthetic $r8$lambda$RlbspcKMeFIefBYHCbRzPx4zavI(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W1djLwQGgGetfpNERa3xUsGgpxA(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YEACyGi1QEkWj7IoZ-Dk1Us-EAU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YcD5uswiD7bReEci-IdwP331IZY(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YmsGUOiGV30tgTdcBAXkvH1Rc5I(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$agwEK9qwrzNc6cV3naUd52zksR0(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$2(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ctWjo5OoBSE3eJa3g-llQ3bC1hc(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dI82Goc0QzXDA80mVbwB0t-0c7w(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1396
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dfoBJHTz7ndC7TW6_aien8-ODpM(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fhzKZx2jwtcIfnwBzgvuYW0E5DU(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k2yOseZTc140OPCycC9m9cFSyAY(Ljava/util/StringJoiner;Ljava/util/function/Function;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic $r8$lambda$kS7MK094THGkRDZroVab3BNNxY4(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mdknfWam_0rK4EOY75iDal7MnfI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p3, p0, :cond_1

    const-string p0, " [source]=> "

    goto :goto_0

    :cond_1
    if-ne p3, p1, :cond_2

    .line 1798
    const-string p0, " [ top  ]=> "

    goto :goto_0

    :cond_2
    if-ne p3, p2, :cond_3

    .line 1799
    const-string p0, " [target]=> "

    goto :goto_0

    .line 1800
    :cond_3
    const-string p0, "         => "

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-static {p3}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qwKE29ZgLVq82R1Dbs6thRoF194(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sSQXOx60Z_LKLOn6Zlt0mmNv2OM(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1071
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1072
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x3e8

    if-eq v0, p0, :cond_1

    const/16 p0, 0x403

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0

    .line 1075
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v0, 0x2

    const-string v1, "Important callingUid"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$uLeRDh5znlPAtTl8IN5Og9EpWxQ(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$showToast$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uVjAnc6CEWSG0Erw3uRpeGN1dHs(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wQjHETe6MlBqjqRwygZZ1P35974(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .locals 2

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ASM]   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskIdToFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmTopFinishedActivity(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetService(Lcom/android/server/wm/BackgroundActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetSdk(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 119
    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v3, 0x0

    const-wide/16 v4, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 124
    new-instance v1, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v4, 0x1

    const-wide/16 v5, 0x2710

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 141
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 1043
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1060
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1069
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda12;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1080
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1120
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1128
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1137
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1152
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1155
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1176
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1190
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1202
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1206
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1209
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1219
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1232
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda9;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 1246
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;)V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    .line 278
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 279
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-void
.end method

.method public static balCodeToString(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_0
    const-string p0, "BAL_ALLOW_BOUND_BY_FOREGROUND"

    return-object p0

    .line 248
    :pswitch_1
    const-string p0, "BAL_ALLOW_TOKEN"

    return-object p0

    .line 243
    :pswitch_2
    const-string p0, "BAL_ALLOW_NON_APP_VISIBLE_WINDOW"

    return-object p0

    .line 247
    :pswitch_3
    const-string p0, "BAL_ALLOW_SDK_SANDBOX"

    return-object p0

    .line 241
    :pswitch_4
    const-string p0, "BAL_ALLOW_FOREGROUND"

    return-object p0

    .line 242
    :pswitch_5
    const-string p0, "BAL_ALLOW_GRACE_PERIOD"

    return-object p0

    .line 246
    :pswitch_6
    const-string p0, "BAL_ALLOW_SAW_PERMISSION"

    return-object p0

    .line 245
    :pswitch_7
    const-string p0, "BAL_ALLOW_PERMISSION"

    return-object p0

    .line 244
    :pswitch_8
    const-string p0, "BAL_ALLOW_PENDING_INTENT"

    return-object p0

    .line 249
    :pswitch_9
    const-string p0, "BAL_ALLOW_VISIBLE_WINDOW"

    return-object p0

    .line 237
    :pswitch_a
    const-string p0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    return-object p0

    .line 238
    :pswitch_b
    const-string p0, "BAL_ALLOW_ALLOWLISTED_UID"

    return-object p0

    .line 240
    :pswitch_c
    const-string p0, "BAL_ALLOW_DEFAULT"

    return-object p0

    .line 250
    :cond_0
    const-string p0, "BAL_BLOCK"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static balStartModeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_0
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOW_IF_VISIBLE"

    return-object p0

    .line 263
    :cond_1
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALWAYS"

    return-object p0

    .line 261
    :cond_2
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_DENIED"

    return-object p0

    .line 257
    :cond_3
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    return-object p0

    .line 259
    :cond_4
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_SYSTEM_DEFINED"

    return-object p0

    .line 260
    :cond_5
    const-string p0, "MODE_BACKGROUND_ACTIVITY_START_COMPAT"

    return-object p0
.end method

.method public static getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 3

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " :: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", visibleRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finishing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastLaunchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastVisibleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSystemExemptFlagEnabled()Z
    .locals 3

    .line 1923
    const-string v0, "system_exempt_from_activity_bg_start_restriction_enabled"

    const/4 v1, 0x1

    const-string v2, "window_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z
    .locals 1

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, p2, :cond_2

    .line 2004
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result p0

    if-eq p0, p2, :cond_0

    return v0

    .line 2010
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result p0

    if-eq p0, p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 5

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch blocked! goo.gle/android-bal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 887
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent Activity start blocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". PendingIntent was created in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could opt in to grant BAL privileges when sending. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 896
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could opt in to grant BAL privileges when creating."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 901
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 903
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity start blocked. The intent would have started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    .line 904
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    :goto_1
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    .line 907
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 908
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public addStrictModeCallback(ILandroid/os/IBinder;)Z
    .locals 5

    .line 942
    invoke-static {p2}, Landroid/app/IBackgroundActivityLaunchCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackgroundActivityLaunchCallback;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 945
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 947
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 948
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 950
    :cond_0
    :goto_0
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 951
    monitor-exit v1

    return v4

    .line 953
    :cond_1
    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;ILandroid/os/IBinder;)V

    invoke-interface {p2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 958
    :catch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    .line 954
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 863
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch allowed based on caller. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 870
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity launch allowed based on real caller. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p4, v0, :cond_3

    const/4 p4, 0x1

    if-eqz p5, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v0, p1, :cond_0

    return p4

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    .line 1905
    iget-object p5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz p3, :cond_2

    .line 1907
    iget p3, p3, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne p3, p1, :cond_2

    return p4

    :cond_2
    if-eqz p2, :cond_3

    .line 1913
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 1914
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz p0, :cond_3

    .line 1915
    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne p0, p1, :cond_3

    return p4

    :cond_3
    return v1
.end method

.method public checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;IILjava/lang/String;)V
    .locals 30

    move-object/from16 v13, p1

    move/from16 v15, p2

    const/16 v0, 0x3e8

    if-eq v15, v0, :cond_b

    .line 1547
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1551
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1552
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    const/4 v11, 0x0

    .line 1553
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v12

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v2, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 1554
    invoke-virtual {v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmCode(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_b

    const/4 v2, 0x7

    if-eq v0, v2, :cond_b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    const/16 v2, 0xb

    if-eq v0, v2, :cond_b

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    goto/16 :goto_7

    .line 1565
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 1571
    :cond_2
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-virtual {v1, v13, v15, v3, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v2

    .line 1573
    invoke-static {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_7

    .line 1577
    :cond_3
    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v13, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v5, -0x1

    :goto_0
    move/from16 v17, v5

    goto :goto_1

    .line 1584
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    goto :goto_0

    :goto_1
    if-nez v4, :cond_5

    :goto_2
    move-object/from16 v18, v3

    goto :goto_3

    .line 1586
    :cond_5
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_2

    :goto_3
    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v14, 0x1ef

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v25, 0xb

    const/16 v26, 0x0

    move-object/from16 v16, p4

    .line 1578
    invoke-static/range {v14 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 1610
    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 1612
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1613
    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1616
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_5

    .line 1619
    :cond_7
    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v29, v4

    move-object v4, v3

    move-object/from16 v3, v29

    .line 1622
    :goto_5
    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "go/android-asm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    .line 1624
    const-string v6, " returned home due to "

    goto :goto_6

    .line 1625
    :cond_8
    const-string v6, " would return home due to "

    :goto_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1623
    invoke-virtual {v1, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1632
    :cond_9
    const-string v1, " is not on top of task t: "

    const-string v4, "ActivityTaskManager"

    if-eqz v2, :cond_a

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ASM] Return to home as source: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v1, "taskRemoved"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-void

    .line 1637
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ASM] Would return to home as source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_7
    return-void
.end method

.method public checkActivityAllowedToStart(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/Task;IIIILcom/android/server/wm/TaskDisplayArea;)Z
    .locals 12

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v2, p8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v0, :cond_e

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/high16 v3, 0x10000000

    and-int v4, p6, v3

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v11, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v1

    :goto_1
    if-eqz v11, :cond_3

    const/4 v3, 0x3

    if-eq v8, v3, :cond_2

    const/4 v3, 0x6

    if-eq v8, v3, :cond_2

    const/4 v3, 0x5

    if-eq v8, v3, :cond_2

    const/4 v3, 0x7

    if-eq v8, v3, :cond_2

    const/4 v3, 0x4

    if-eq v8, v3, :cond_2

    const/16 v3, 0xb

    if-eq v8, v3, :cond_2

    const/16 v3, 0xc

    if-eq v8, v3, :cond_2

    const/16 v3, 0xd

    if-ne v8, v3, :cond_3

    :cond_2
    return v1

    .line 1336
    :cond_3
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    if-eqz p1, :cond_8

    .line 1338
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v11, :cond_4

    move-object v5, v4

    goto :goto_2

    :cond_4
    move-object v5, v6

    .line 1341
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    invoke-virtual {p0, v5, v7, p1, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    if-eqz v11, :cond_7

    .line 1348
    invoke-static {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    .line 1350
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_5

    if-ne v4, v6, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    invoke-static {v3, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    :cond_7
    :goto_3
    move-object v10, v3

    goto :goto_7

    :cond_8
    if-eqz v6, :cond_a

    if-eqz v11, :cond_9

    if-eqz p4, :cond_a

    .line 1355
    :cond_9
    invoke-virtual {p0, v6, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_b

    .line 1359
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1360
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    goto :goto_4

    :cond_b
    move-object/from16 v5, p10

    :goto_4
    if-eqz v5, :cond_7

    .line 1363
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1364
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 1365
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 1369
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v1, :cond_c

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1370
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    goto :goto_6

    .line 1372
    :cond_c
    invoke-virtual {p0, v7, v2, v4, v3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v3

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1380
    :goto_7
    invoke-static {v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v9, p6

    move/from16 v3, p9

    .line 1385
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/BackgroundActivityStartController;->logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z

    move-result p0

    return p0

    :cond_e
    return v1
.end method

.method public checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 13

    if-nez p11, :cond_0

    .line 775
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    .line 778
    :goto_0
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 784
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    .line 786
    invoke-static {v2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 789
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v3, 0xa

    const-string v4, "uid in SDK sandbox has visible (non-toast) window"

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 792
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 796
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 797
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 799
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mhasRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 800
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 803
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 813
    :cond_3
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$mcallerIsRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v2

    goto :goto_1

    .line 815
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    .line 816
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v3

    .line 817
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->setResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)V

    .line 819
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 820
    invoke-virtual {v2, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setOnlyCreatorAllows(Z)V

    .line 824
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 827
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrAutoOptIn()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 828
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    .line 831
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptOut()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v5

    goto :goto_2

    :cond_8
    move v2, v4

    .line 832
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 833
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptOut()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    move v5, v4

    .line 834
    :goto_3
    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_a

    .line 836
    iget-object v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "With Android 15 BAL hardening this activity start may be blocked if the PI creator upgrades target_sdk to 35+! goo.gle/android-bal (missing opt in by PI creator)!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz v5, :cond_b

    .line 846
    iget-object v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "With Android 14 BAL hardening this activity start will be blocked if the PI sender upgrades target_sdk to 34+!  goo.gle/android-bal (missing opt in by PI sender)!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->allowBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0

    :cond_b
    if-nez v2, :cond_c

    if-eqz v5, :cond_d

    .line 856
    :cond_c
    const-string v2, "Without BAL hardening this activity start would be allowed"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    return-object v0
.end method

.method public checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 10

    .line 1005
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v9, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v1 .. v9}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerIsAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBackgroundPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerHasBgStartAppOp:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v8, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckCallerProcessAllowsBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v0 .. v8}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public checkBackgroundActivityStartAllowedByRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 8

    .line 1163
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerNonAppVisible:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalForeground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerBalPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerSawPermission:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedUid:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v6, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerAllowlistedComponent:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mCheckRealCallerProcessAllowsBalBackground:Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 4

    .line 1736
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1741
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1742
    invoke-static {p3, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fputmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V

    .line 1743
    invoke-virtual {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x3e8

    .line 1746
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p3

    :cond_2
    const-wide/32 v2, 0xdbe868a

    .line 1754
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1759
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1760
    const-string v2, "Package name: "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_4

    .line 1761
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1765
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1768
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1770
    :try_start_0
    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    if-eqz p0, :cond_5

    :goto_0
    return-object p3

    :cond_5
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1773
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0
.end method

.method public checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 4

    if-nez p1, :cond_0

    .line 1271
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0

    .line 1274
    :cond_0
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    .line 1275
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1277
    const-string p0, "callerApp process"

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 1281
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1283
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1284
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    if-eq v1, p1, :cond_2

    .line 1286
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    .line 1288
    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1289
    const-string p0, "process"

    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->withProcessInfo(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1295
    :cond_3
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 1

    if-eqz p3, :cond_0

    .line 1655
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1660
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1662
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activities for task: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {p4, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1666
    :cond_1
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p4

    .line 1667
    invoke-static {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1672
    :cond_2
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    invoke-virtual {p4}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    return-object p0

    .line 1679
    :cond_3
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 1683
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_4

    :goto_0
    return-object p4

    .line 1688
    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    .line 1689
    invoke-static {p3}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_1

    .line 1695
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 1700
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result p4

    if-nez p4, :cond_7

    :goto_1
    return-object p3

    .line 1705
    :cond_7
    filled-new-array {p3}, [Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p3

    .line 1706
    new-instance p4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;

    invoke-direct {p4, p0, v0, p3, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;I)V

    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 1712
    aget-object p0, p3, p0

    return-object p0
.end method

.method public clearTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;IIII)V
    .locals 14

    move/from16 v1, p4

    move/from16 v2, p6

    const/high16 v3, 0x10000000

    and-int v5, v2, v3

    if-ne v5, v3, :cond_6

    const/4 v3, 0x2

    move/from16 v7, p7

    if-ne v7, v3, :cond_0

    goto/16 :goto_1

    .line 1493
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    .line 1494
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;

    move/from16 v6, p5

    invoke-direct {v5, v3, v1, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;-><init>(III)V

    .line 1499
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1500
    invoke-interface {v5, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 1506
    new-array v8, v8, [I

    .line 1508
    invoke-static {v1}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v9

    .line 1509
    new-instance v10, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V

    invoke-virtual {p0, v3, v1, v10}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v10

    .line 1511
    const-string v13, "ActivityTaskManager"

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    invoke-static {v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1512
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 v5, p3

    .line 1518
    :cond_2
    invoke-virtual {p1, v5, v2, v8}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    .line 1519
    aget v2, v8, v11

    if-lez v2, :cond_3

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared top n: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v8, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " activities from task t: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not matching top uid: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_3
    invoke-static {v1}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v9, :cond_4

    aget v1, v8, v11

    if-lez v1, :cond_6

    .line 1527
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_5

    .line 1528
    const-string v2, "Top activities cleared by "

    goto :goto_0

    .line 1529
    :cond_5
    const-string v2, "Top activities would be cleared by "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "go/android-asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1527
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1532
    invoke-static {v10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    const-string v1, "Clear Top"

    move v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v2, p2

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public final varargs evaluateChain(Lcom/android/server/wm/BackgroundActivityStartController$BalState;[Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3

    .line 1034
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    .line 1035
    invoke-interface {v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;->evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    .line 1036
    sget-object v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq v1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1792
    new-instance v7, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;

    invoke-direct {v7, v1, v4, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1804
    new-instance v8, Ljava/util/StringJoiner;

    const-string v9, "\n"

    invoke-direct {v8, v9}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1805
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ASM] ------ Activity Security "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Debug Logging Start ------"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1806
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] Block Enabled: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v9, 0x1

    if-nez v6, :cond_0

    .line 1808
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] Feature Flag Enabled: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1808
    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1810
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] Mendel Override: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->asmRestrictionsEnabledForAll()Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1810
    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1813
    :cond_0
    const-string v6, "[ASM] ASM Version: 11"

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] System Time: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1815
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ASM] Activity Opted In: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p12

    invoke-interface {v7, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 1818
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-ne v11, v3, :cond_1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    if-nez v1, :cond_2

    .line 1821
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source Package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1822
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move/from16 v12, p6

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 1824
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ASM] Real Calling Uid Package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_2

    .line 1826
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source Record: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1827
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source Launch Package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1828
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source Launch Intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v9, :cond_3

    .line 1830
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source/Target Task: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1831
    const-string v11, "[ASM] Source/Target Task Stack: "

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 1833
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Source Task: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1834
    const-string v11, "[ASM] Source Task Stack: "

    invoke-virtual {v8, v11}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1836
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;

    invoke-direct {v12, v8, v7}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda25;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1840
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ASM] Target Task Top: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-nez v9, :cond_4

    .line 1842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Target Task: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz v3, :cond_4

    .line 1844
    const-string v4, "[ASM] Target Task Stack: "

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1845
    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;

    invoke-direct {v4, v8, v7}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda26;-><init>(Ljava/util/StringJoiner;Ljava/util/function/Function;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1850
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Target Record: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ASM] Intent: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] TaskToFront: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] AvoidMoveToFront: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] BalCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Allowed By Grace Period: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] LastResumedActivity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v7, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1856
    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] System opted into enforcement: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1860
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v2, :cond_5

    .line 1861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] TopFinishedActivity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget-object v4, v4, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1864
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1865
    const-string v2, "[ASM] TaskIdToFinishedActivity: "

    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1866
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;

    invoke-direct {v2, v8}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda27;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p0, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    const/4 p0, 0x4

    if-eq v5, p0, :cond_7

    const/16 p0, 0xb

    if-eq v5, p0, :cond_7

    const/16 p0, 0x9

    if-eq v5, p0, :cond_7

    const/16 p0, 0xd

    if-ne v5, p0, :cond_9

    :cond_7
    if-eqz v1, :cond_8

    .line 1872
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_3

    :cond_8
    move-object p0, v3

    :goto_3
    if-eqz p0, :cond_9

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1874
    const-string v1, "[ASM] Tasks: "

    invoke-virtual {v8, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;

    invoke-direct {v1, v8}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda28;-><init>(Ljava/util/StringJoiner;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1880
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Debug Logging End ------"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1881
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getService()Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public getStrictModeBalCallbacks(I)Ljava/util/Map;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 924
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 926
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 928
    :cond_0
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object p1

    .line 929
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method public final getTargetSdk(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 2169
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2170
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public hasBalPermission(II)Z
    .locals 0

    .line 1257
    const-string p0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 292
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    if-nez p2, :cond_3

    return v2

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    .line 301
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 302
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final synthetic lambda$addStrictModeCallback$0(ILandroid/os/IBinder;)V
    .locals 0

    .line 956
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    return-void
.end method

.method public final synthetic lambda$checkTopActivityForAsm$24(Ljava/util/function/Predicate;[Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;ILcom/android/server/wm/TaskFragment;)V
    .locals 1

    .line 1707
    invoke-virtual {p4, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p4, 0x0

    .line 1709
    aget-object v0, p2, p4

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object p0

    aput-object p0, p2, p4

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1050
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1053
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleNotPinnedActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1054
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string v0, "callingUid has visible non-pinned window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1057
    :cond_1
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$10(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1180
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmAppSwitchState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 1182
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1183
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleNotPinnedActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1184
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string v0, "realCallingUid has visible non-pinned window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1187
    :cond_1
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$11(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3

    .line 1191
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realCallingUid has non-app visible window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1197
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$12(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1203
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$13(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1207
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$14(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1210
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1212
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    .line 1213
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1214
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "realCallingUid has BAL permission."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1216
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$15(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1220
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCheckedOptions(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1226
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1229
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$17(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    .line 1249
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    .line 1248
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1250
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x3

    const-string v0, "realCallingUid is a companion app."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1253
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$2(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3

    .line 1061
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid has non-app visible window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1066
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$4(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 3

    .line 1082
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1083
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Home app"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1086
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1090
    iget v2, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v2, :cond_1

    .line 1091
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Active ime"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1095
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIsCallingUidPersistentSystemProcess(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "callingUid is persistent system process"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Recents Component"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1105
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1106
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Device Owner"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1109
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isAffiliatedProfileOwner(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1110
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Affiliated Profile Owner"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1113
    :cond_5
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1115
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Companion App"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1117
    :cond_6
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$5(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    .line 1122
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1123
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "START_ACTIVITIES_FROM_BACKGROUND permission granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1126
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$6(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1130
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1132
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1135
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$7(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1140
    invoke-static {}, Lcom/android/server/wm/BackgroundActivityStartController;->isSystemExemptFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x82

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 1143
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string v0, "OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION appop is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 1146
    :cond_0
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public final synthetic lambda$new$8(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1153
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$9(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 2

    .line 1156
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$showToast$19(Ljava/lang/String;)V
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1475
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final logAsmFailureAndCheckFeatureEnabled(Lcom/android/server/wm/ActivityRecord;IIZZLcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)Z
    .locals 32

    move/from16 v13, p4

    move-object/from16 v4, p6

    const/4 v14, 0x0

    if-nez v4, :cond_0

    move-object v7, v14

    goto :goto_0

    .line 1396
    :cond_0
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v7, v0

    :goto_0
    const/4 v15, 0x1

    if-nez v13, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1400
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v26, v15

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    :goto_1
    move/from16 v26, v0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x3

    goto :goto_1

    .line 1404
    :goto_3
    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z

    move-result v0

    const/16 v31, 0x0

    if-eqz v0, :cond_4

    .line 1405
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v8, v15

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v6, p5

    move/from16 v5, p11

    move-object v3, v4

    move/from16 v4, p8

    goto :goto_5

    :cond_4
    move/from16 v8, v31

    goto :goto_4

    .line 1407
    :goto_5
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/BackgroundActivityStartController;->allowedByAsmGracePeriod(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;IZZ)Z

    move-result v11

    .line 1410
    const-string v1, "Launch"

    invoke-static/range {p10 .. p10}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->-$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v3, p7

    move/from16 v9, p11

    move-object v5, v7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v30

    if-eqz v2, :cond_5

    .line 1417
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    move/from16 v17, v0

    goto :goto_6

    :cond_5
    move/from16 v17, p2

    :goto_6
    if-eqz v2, :cond_6

    .line 1419
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_7

    :cond_6
    move-object/from16 v18, v14

    :goto_7
    if-eqz v5, :cond_7

    .line 1421
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    :goto_8
    move/from16 v19, v0

    goto :goto_9

    :cond_7
    const/4 v0, -0x1

    goto :goto_8

    :goto_9
    if-eqz v5, :cond_8

    .line 1423
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_8
    move-object/from16 v20, v14

    if-nez v13, :cond_a

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 1426
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    move/from16 v21, v31

    goto :goto_b

    :cond_a
    :goto_a
    move/from16 v21, v15

    .line 1428
    :goto_b
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v22

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1432
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    move/from16 v28, v15

    goto :goto_c

    :cond_b
    move/from16 v28, v31

    :goto_c
    const/16 v16, 0x1ef

    const/16 v27, 0xb

    move/from16 v29, p8

    move/from16 v25, p9

    move-object/from16 v23, v0

    .line 1415
    invoke-static/range {v16 .. v30}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    move-object/from16 v0, v30

    .line 1448
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1449
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v4

    const-string v6, "ActivityTaskManager"

    if-eqz v4, :cond_d

    .line 1450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go/android-asm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_c

    .line 1451
    const-string v7, " blocked "

    goto :goto_d

    :cond_c
    const-string v7, " would block "

    :goto_d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p0

    .line 1454
    invoke-virtual {v7, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 1456
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v8, :cond_f

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ASM] Abort Launching r: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as source: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e

    move-object v1, v2

    .line 1462
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in background. New task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Top activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". BAL Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-static/range {p8 .. p8}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v31

    :cond_f
    return v15
.end method

.method public onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 2094
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2095
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_0

    .line 2096
    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2101
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2102
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2106
    :cond_1
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V

    .line 2107
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_2

    .line 2109
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    :cond_2
    :goto_0
    return-void
.end method

.method public onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 2118
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2122
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2123
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2127
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v0, :cond_2

    .line 2128
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2129
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget p1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public removeStrictModeCallback(ILandroid/os/IBinder;)V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    .line 973
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p2, :cond_2

    .line 974
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 979
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mStrictModeBalCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 981
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 975
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 981
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 2

    .line 2045
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Z

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-eqz p0, :cond_1

    .line 2046
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    return p1

    .line 2047
    :cond_1
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result p0

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method public shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 1

    .line 2030
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 2031
    invoke-virtual {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    .line 2035
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->-$$Nest$fgetmBasedOnRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 1474
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 13

    .line 1930
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->blocks()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1932
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1933
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallerApp(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v6

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    move v7, v8

    move v9, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v7

    move v9, v8

    :goto_1
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v8

    move v10, v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidProcState(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v9

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasVisibleActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUidHasNonAppVisibleWindow(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v10

    move v10, v0

    :goto_3
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmOriginatingPendingIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v12

    if-eqz v12, :cond_4

    move v11, v0

    .line 1934
    :cond_4
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    :cond_5
    const/16 v0, 0x8

    .line 1949
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity start is only allowed by grace period. This may stop working in the future. intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->strictModeLaunchAborted(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xb

    .line 1957
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    const/16 v0, 0xc

    .line 1958
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->logIfOnlyAllowedBy(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;I)Z

    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1963
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1964
    invoke-static {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmIntent(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1965
    const-string v0, "noIntent"

    goto :goto_4

    .line 1966
    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1968
    :cond_8
    const-string v0, ""

    .line 1970
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getCode()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object p1

    .line 1972
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    return-object p1
.end method

.method public final strictModeLaunchAborted(ILjava/lang/String;)V
    .locals 3

    .line 986
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->getStrictModeBalCallbacks(I)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 991
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 993
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IBackgroundActivityLaunchCallback;

    invoke-interface {v2, p2}, Landroid/app/IBackgroundActivityLaunchCallback;->onBackgroundActivityLaunchAborted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->removeStrictModeCallback(ILandroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 13

    move-object/from16 v0, p3

    .line 2051
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v3

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingUid(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)I

    move-result v4

    .line 2056
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    const/16 v2, 0x7f

    if-nez v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v1

    move v5, v1

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2057
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v6

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v7

    .line 2059
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_1
    move v8, v2

    goto :goto_2

    .line 2060
    :cond_1
    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v2

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2061
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v9

    .line 2062
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v10

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v0

    .line 2064
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v12

    const/16 v0, 0x278

    move-object v1, p1

    move v2, p2

    .line 2051
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method

.method public writeBalAllowedLogMinimal(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2074
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    const/16 v3, 0x7f

    if-nez v2, :cond_0

    move v9, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v2

    move v9, v2

    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 2075
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v10

    .line 2076
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->callerExplicitOptInOrOut()Z

    move-result v11

    .line 2077
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    move v12, v3

    goto :goto_2

    .line 2078
    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmResultForRealCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->getRawCode()I

    move-result v3

    goto :goto_1

    :goto_2
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 2079
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    .line 2080
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->realCallerExplicitOptInOrOut()Z

    move-result v14

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v2

    .line 2081
    invoke-virtual {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v15

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->-$$Nest$fgetmRealCallingPackage(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Ljava/lang/String;

    move-result-object v1

    .line 2082
    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v16

    const/16 v4, 0x278

    .line 2069
    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static/range {v4 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    return-void
.end method
