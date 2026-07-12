.class public Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# instance fields
.field public final mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mDeprecatedAbiDialogs:Landroid/util/SparseArray;

.field public mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

.field public final mPackageFlags:Landroid/util/ArrayMap;

.field public mPageSizeMismatchDialogs:Landroid/util/SparseArray;

.field public final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field public mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

.field public mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;


# direct methods
.method public static synthetic $r8$lambda$H4JMXMIkLrrC65qIRbXEOcg8UtQ(Ljava/lang/String;)Z
    .locals 1

    .line 253
    const-string v0, "64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageFlags(Lcom/android/server/wm/AppWarnings;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/server/wm/AppWarnings;)Lcom/android/server/wm/AppWarnings$UiHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mclearAllPackageFlagsForUser(Lcom/android/server/wm/AppWarnings;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->clearAllPackageFlagsForUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDeprecatedAbiDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedAbiDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowPageSizeMismatchDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showPageSizeMismatchDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteConfigToFile(Lcom/android/server/wm/AppWarnings;Landroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->writeConfigToFile(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 112
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 124
    new-instance p1, Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;-><init>(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/AppWarnings-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    .line 125
    new-instance p1, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 126
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    const-string p3, "packages-warnings.xml"

    invoke-direct {p2, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p3, "warnings-config"

    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    return-void
.end method


# virtual methods
.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearAllPackageFlagsForUser(I)V
    .locals 6

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 650
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 651
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 653
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 658
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 660
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageFlags(ILjava/lang/String;)I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 638
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 639
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .locals 2

    .line 697
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 698
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 699
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 702
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 703
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 702
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 707
    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 708
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserAssignedToDisplay(I)I

    move-result p0

    .line 710
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAssignedToDisplay(I)I
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0
.end method

.method public final getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    .line 674
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 678
    :cond_0
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-nez v0, :cond_1

    .line 679
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    .line 682
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0
.end method

.method public hasPackageFlag(ILjava/lang/String;I)Z
    .locals 0

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result p0

    and-int/2addr p0, p3

    if-ne p0, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideDialogsForPackageUiThread(Ljava/lang/String;I)V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 547
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 557
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 558
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 568
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 569
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 571
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 577
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_7

    .line 578
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 579
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 581
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 588
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 589
    iget-object v1, v0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 590
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 591
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 592
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_9
    return-void
.end method

.method public final hideUnsupportedDisplaySizeDialogUiThread()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onDensityChanged()V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;I)V
    .locals 0

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;I)V

    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedAbiDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showPageSizeMismatchDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 133
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    .line 136
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    new-instance v1, Lcom/android/server/wm/AppWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppWarnings$1;-><init>(Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    return-void
.end method

.method public final readConfigFromFileAmsThread()V
    .locals 16

    move-object/from16 v0, p0

    .line 924
    const-string v1, "Error reading package metadata"

    const-string v2, "AppWarnings"

    const/4 v3, 0x0

    .line 927
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    .line 931
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_0

    if-eq v6, v8, :cond_0

    .line 934
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v3, v4

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v3, v4

    goto/16 :goto_b

    :cond_0
    if-ne v6, v8, :cond_1

    if-eqz v4, :cond_a

    goto/16 :goto_7

    .line 940
    :cond_1
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 941
    const-string v9, "packages"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 942
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ne v6, v7, :cond_6

    .line 946
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 947
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v7, :cond_6

    .line 948
    const-string v11, "package"

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 949
    const-string v6, "user"

    const/16 v11, -0x2710

    invoke-interface {v5, v3, v6, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 951
    const-string v12, "name"

    invoke-interface {v5, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 953
    const-string v13, "flags"

    invoke-interface {v5, v3, v13, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    if-eq v6, v11, :cond_2

    .line 956
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 957
    iget-object v11, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 963
    :cond_2
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 968
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 969
    iget-object v10, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 974
    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 975
    array-length v10, v6

    move v11, v9

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v14, v6, v11

    .line 976
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_3

    .line 979
    :cond_4
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 980
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 981
    iget-object v15, v0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_4
    move v10, v8

    .line 989
    :cond_6
    :goto_5
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    if-ne v6, v8, :cond_7

    if-eqz v10, :cond_8

    .line 993
    iget-object v0, v0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    :goto_6
    if-eqz v4, :cond_a

    .line 1003
    :goto_7
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    return-void

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_b

    :goto_8
    if-eqz v3, :cond_9

    .line 999
    :try_start_3
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    .line 1003
    :goto_a
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    .line 997
    :goto_b
    :try_start_5
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_a

    goto :goto_a

    :catch_4
    :cond_a
    :goto_c
    return-void

    :goto_d
    if-eqz v3, :cond_b

    .line 1003
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1007
    :catch_5
    :cond_b
    throw v0
.end method

.method public final removePackageAndHideDialogs(Ljava/lang/String;I)V
    .locals 1

    .line 331
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p2

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 344
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 346
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPackageFlag(ILjava/lang/String;IZ)V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(ILjava/lang/String;)I

    move-result v1

    if-eqz p4, :cond_0

    or-int/2addr p3, v1

    goto :goto_0

    :cond_0
    not-int p3, p3

    and-int/2addr p3, v1

    :goto_0
    if-eq v1, p3, :cond_2

    .line 622
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 624
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 626
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mWriteConfigTask:Lcom/android/server/wm/AppWarnings$WriteConfigTask;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->schedule()V

    .line 630
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showDeprecatedAbiDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 235
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    const-string v0, "debug.wm.disable_deprecated_abi_dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 249
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 250
    const-string v0, "64"

    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 252
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    new-instance v2, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;-><init>()V

    .line 253
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 255
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedAbiDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showDeprecatedAbiDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 468
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 471
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    new-instance v1, Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/DeprecatedAbiDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 474
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 475
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 476
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    .line 478
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedAbiDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 218
    const-string v0, "debug.wm.disable_deprecated_target_sdk_dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 220
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v2, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method

.method public final showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 442
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    new-instance v1, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 445
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 446
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 447
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    .line 449
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public showPageSizeMismatchDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 261
    const-string v0, "bionic.linker.16kb.app_compat.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 268
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showPageSizeMismatchDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method public final showPageSizeMismatchDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    .line 484
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 486
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 487
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PageSizeMismatchDialog;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 501
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v0

    .line 506
    new-instance v4, Lcom/android/server/wm/AppWarnings$2;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/wm/AppWarnings$2;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;I)V

    .line 517
    new-instance v2, Lcom/android/server/wm/PageSizeMismatchDialog;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/PageSizeMismatchDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    .line 524
    invoke-virtual {v2}, Lcom/android/server/wm/PageSizeMismatchDialog;->show()V

    .line 525
    iget-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    if-nez p0, :cond_2

    .line 526
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    .line 528
    :cond_2
    iget-object p0, v3, Lcom/android/server/wm/AppWarnings;->mPageSizeMismatchDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    .line 177
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 185
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 198
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 199
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 200
    const-string v3, "REL"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_2

    if-lt v1, v2, :cond_4

    :cond_2
    if-nez v3, :cond_3

    if-lt v2, v1, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-ne v2, v1, :cond_5

    .line 202
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 410
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 414
    new-instance v1, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 416
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 417
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 418
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 164
    :goto_0
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v0, :cond_1

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method public final showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUserIdForActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->dismiss()V

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 384
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 385
    new-instance v1, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getUiContextForActivity(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)V

    .line 387
    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$BaseDialog;->show()V

    .line 388
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 389
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    .line 391
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialogs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final writeConfigToFile(Landroid/util/ArrayMap;)V
    .locals 10

    .line 881
    const-string v0, "package"

    const-string v1, "packages"

    const/4 v2, 0x0

    .line 883
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 885
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 886
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 887
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 888
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 890
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 891
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 892
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 893
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 894
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 898
    :cond_0
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    const-string v9, "user"

    invoke-interface {v4, v2, v9, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 900
    const-string v7, "name"

    invoke-interface {v4, v2, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 901
    const-string v6, "flags"

    invoke-interface {v4, v2, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    .line 905
    :cond_1
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 908
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    move-exception p1

    .line 910
    :goto_2
    const-string v0, "AppWarnings"

    const-string v1, "Error writing package metadata"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_2

    .line 912
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    return-void
.end method
