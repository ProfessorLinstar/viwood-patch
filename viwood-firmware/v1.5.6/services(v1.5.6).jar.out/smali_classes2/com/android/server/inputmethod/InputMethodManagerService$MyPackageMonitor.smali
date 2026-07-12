.class public final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# instance fields
.field public mDataClearedPackages:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p1, 0x1

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 789
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public final clearPackageChangeState()V
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onBeginPackageChanges()V
    .locals 0

    .line 826
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .line 836
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 837
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public final onFinishPackageChangesInternal()V
    .locals 17

    move-object/from16 v0, p0

    .line 846
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    .line 847
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    .line 849
    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 851
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    .line 854
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 855
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v5

    .line 857
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 858
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x3

    if-ge v11, v8, :cond_4

    .line 861
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    .line 862
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 863
    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object v12, v15

    .line 866
    :cond_0
    iget-object v10, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 867
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_1
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v13, :cond_2

    .line 871
    const-string v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v14, 0x1

    if-ne v10, v14, :cond_3

    .line 874
    const-string v10, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Input method reinstalling, clearing additional subtypes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 874
    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v14, 0x1

    .line 881
    invoke-static {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v5

    .line 883
    invoke-virtual {v5, v6}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->cloneWithRemoveOrSelf(Ljava/util/Collection;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v6

    if-eq v6, v5, :cond_5

    .line 888
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v5

    .line 887
    invoke-static {v1, v6, v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 891
    :cond_5
    iget-object v5, v2, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/RawInputMethodMap;

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 894
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v8, 0x0

    .line 891
    invoke-virtual {v5, v6, v8, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v2

    .line 896
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodMap()Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/inputmethod/InputMethodMap;->areSame(Lcom/android/server/inputmethod/InputMethodMap;Lcom/android/server/inputmethod/InputMethodMap;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 897
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_6

    .line 902
    :cond_6
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    .line 903
    :try_start_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_7

    .line 905
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ZI)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    if-eqz v3, :cond_8

    .line 909
    monitor-exit v5

    return-void

    .line 912
    :cond_8
    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->create(Lcom/android/server/inputmethod/InputMethodMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    .line 911
    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 913
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(ZI)V

    if-eqz v12, :cond_a

    .line 918
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    if-ne v2, v13, :cond_a

    .line 921
    :cond_9
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 922
    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$smgetPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :try_start_1
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 926
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v6

    .line 925
    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_a

    .line 932
    :try_start_2
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current input method removed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object v2

    .line 934
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 935
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getBackDisposition()I

    move-result v2

    const/4 v8, 0x0

    .line 934
    invoke-static {v3, v8, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;III)V

    .line 936
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 939
    const-string v2, "InputMethodManagerService"

    const-string v3, "Unsetting current input method"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V

    move v8, v14

    const/4 v9, 0x0

    goto :goto_4

    :cond_a
    move-object v9, v12

    const/4 v8, 0x0

    :goto_4
    if-nez v9, :cond_b

    .line 949
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    move-result v14

    goto :goto_5

    :cond_b
    if-nez v8, :cond_c

    .line 950
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v14, v8

    :goto_5
    if-eqz v14, :cond_d

    .line 957
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(ZI)V

    .line 959
    :cond_d
    monitor-exit v5

    :goto_6
    return-void

    :goto_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 10

    .line 797
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 798
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    .line 799
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getMethodList()Ljava/util/List;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 805
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 806
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 807
    array-length v6, p2

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p2, v7

    .line 808
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 p2, 0x1

    if-nez p4, :cond_0

    .line 810
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 812
    :cond_0
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v0, ""

    invoke-static {p4, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)V

    .line 813
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)Z

    .line 814
    monitor-exit p1

    return p2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 820
    :cond_3
    monitor-exit p1

    return v3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mDataClearedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
