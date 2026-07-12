.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

.field public isKillRuntimePermissionRevokedUidsSkipped:Z

.field public isPermissionFlagsChanged:Z

.field public final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

.field public final runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .locals 2

    .line 2703
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2708
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 2710
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2711
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {p1, v0, v1, v0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Landroid/util/SparseBooleanArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 2714
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    return-void
.end method

.method public static final synthetic access$isAppBackupAndRestoreRunning(Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;I)Z
    .locals 0

    .line 2703
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isAppBackupAndRestoreRunning(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 0

    .line 2721
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 2

    .line 2845
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2847
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAppBackupAndRestoreRunning(I)Z
    .locals 3

    .line 2823
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2825
    const-string v1, "android.permission.BACKUP"

    .line 2826
    const-string v2, "default:0"

    .line 2823
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2832
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2834
    const-string/jumbo v0, "user_setup_complete"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 2838
    :cond_2
    :goto_0
    const-string/jumbo v0, "user_setup_personalization_state"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_4

    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 4

    const/4 v0, 0x1

    .line 2749
    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2751
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 2753
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    invoke-static {p2}, Lcom/android/server/permission/access/permission/PermissionService;->access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 287
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p2, "state"

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-direct {v2, p2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .line 2753
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    if-nez p2, :cond_1

    goto :goto_3

    .line 2754
    :cond_1
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, p5}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p5

    .line 2755
    invoke-virtual {v1, p6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p6

    .line 48
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_5

    if-eqz p5, :cond_3

    if-nez p6, :cond_3

    .line 2763
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2764
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 2765
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p4, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p4

    if-eqz p4, :cond_2

    move p4, v0

    goto :goto_0

    :cond_2
    move p4, v2

    .line 116
    :goto_0
    invoke-virtual {v1, p1, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2767
    :cond_3
    iget-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 77
    invoke-virtual {p4, p1}, Lcom/android/server/permission/access/immutable/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 2767
    :cond_4
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 80
    invoke-virtual {p4, p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 2767
    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    if-nez v0, :cond_7

    if-eq p5, p6, :cond_7

    .line 2771
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-static {p0, p1}, Lcom/android/server/permission/access/immutable/IntSetExtensionsKt;->plusAssign(Lcom/android/server/permission/access/immutable/MutableIntSet;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onPermissionFlagsChanged(IILjava/lang/String;II)V
    .locals 7

    .line 2734
    const-string v3, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 2731
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public onStateMutated()V
    .locals 15

    .line 2776
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2777
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 2778
    iput-boolean v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 2781
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntMap;->getSize()I

    move-result v3

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3

    .line 48
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/IntMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 2956
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2783
    invoke-static {v2}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "onPermissionsChangeListeners"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_1
    invoke-virtual {v9, v6, v8}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->onPermissionsChanged(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2786
    :cond_3
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableIntMap;->clear()V

    .line 2788
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    const-string v2, "handler"

    if-nez v0, :cond_6

    .line 2790
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2791
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    const/16 v13, 0x3e

    const/4 v14, 0x0

    const-string v7, ", "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v14}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    goto :goto_3

    .line 2793
    :cond_4
    const-string/jumbo v0, "permissions revoked"

    goto :goto_2

    .line 2795
    :goto_3
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 120
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_6

    .line 41
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    .line 2799
    invoke-static {v10}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v5

    goto :goto_5

    :cond_5
    move-object v12, v6

    :goto_5
    new-instance v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object v8, p0

    .line 2810
    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2812
    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object v0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->getSize()I

    move-result v3

    move v4, v1

    :goto_6
    if-ge v4, v3, :cond_8

    .line 39
    invoke-virtual {p0, v4}, Lcom/android/server/permission/access/immutable/IntSet;->elementAt(I)I

    move-result v6

    .line 2813
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v5

    :cond_7
    new-instance v9, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    invoke-direct {v9, v0, v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2815
    :cond_8
    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableIntSet;->clear()V

    .line 2817
    iput-boolean v1, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 2818
    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 0

    const/4 p1, 0x1

    .line 2717
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    return-void
.end method
