.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field public static sPmsExt:Lcom/mediatek/server/pm/PmsExt;


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$0B9HCn1vf6QimS7wJUMJ9dvoh3c(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 249
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D70H7ky9q6h4G5Q35Lsgrv5YLOA(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LaHdmMUvJ9UawhmO5eyjF4t1D68(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MJMB0qlrojqhYKHthOSSagY91y4(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oug9dEN74-YzL_S_zLOLodG8ONM(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8HVWwxx8XZlOvvlHzULhiCt5C4(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a2Z1Nu599yOcxet0uhIrvF8v35U(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1193
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$clcBGnQt-06kKHBsgiJHusWsyNs(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i8o0iZdBhpYueYoVdN3iTtpw0PY(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/BroadcastHelper;->lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOHrbCKi_oIEn_MfbAgPLe4KPbA(I)V
    .locals 17

    .line 561
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    const-string v1, "android.intent.extra.user_handle"

    move/from16 v2, p0

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 568
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v16, p0

    .line 570
    :try_start_0
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$rnKNtcTVJ4yPTacJOjnngz30icw(Ljava/util/function/Supplier;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1265
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1264
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/mediatek/server/MtkSystemServiceFactory;->getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;->makePmsExt()Lcom/mediatek/server/pm/PmsExt;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {}, Lcom/mediatek/server/MtkSystemServiceFactory;->getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;->makePowerHalManager()Lcom/mediatek/server/powerhal/PowerHalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

    .line 109
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 114
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    return-void
.end method

.method public static filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 913
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 917
    :cond_0
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    .line 921
    :cond_1
    const-string v2, "android.intent.extra.user_handle"

    .line 922
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 921
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 923
    const-string v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 924
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Computer;

    .line 926
    invoke-static {p0, v1, v4, p1, v2}, Lcom/android/server/pm/BroadcastHelper;->filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;

    move-result-object p0

    .line 927
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 931
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 932
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 933
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p1
.end method

.method public static filterPackages(Lcom/android/server/pm/Computer;[Ljava/lang/String;[III)Landroid/util/Pair;
    .locals 8

    .line 950
    array-length v0, p1

    .line 951
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v2

    .line 953
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-lez v1, :cond_1

    .line 954
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v1}, Landroid/util/IntArray;-><init>(I)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-ge v2, v0, :cond_4

    .line 956
    aget-object v6, p1, v2

    .line 958
    invoke-interface {p0, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 957
    invoke-interface {p0, v7, p3, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 961
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_3

    if-ge v2, v1, :cond_3

    .line 963
    aget v6, p2, v2

    invoke-virtual {v5, v6}, Landroid/util/IntArray;->add(I)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 966
    :cond_4
    new-instance p0, Landroid/util/Pair;

    .line 967
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p1, v4

    :goto_3
    if-eqz v5, :cond_6

    .line 968
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    :cond_6
    invoke-direct {p0, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 940
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "safety_label_change_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.type.automotive"

    .line 942
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.software.leanback"

    .line 943
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.hardware.type.watch"

    .line 944
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendDeviceCustomizationReadyBroadcast()V
    .locals 17

    .line 486
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 487
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 488
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 489
    const-string v1, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 493
    :try_start_0
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    const-wide/32 v0, 0x80000

    .line 1310
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1314
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1315
    const-string v3, "broadcastPackageChanged; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    const-string v3, "af="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1317
    const-string p0, ",rft="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    const-string p0, ",pn="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    const-string p0, ",tpn="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    const-string p0, ",tc="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    const-string p0, ",cs="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    const-string p0, ",cpnft="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 214
    const-class p3, Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    invoke-static {p3, p8, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object p8, p3

    check-cast p8, [Ljava/lang/String;

    :cond_0
    move-object p3, p8

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez p5, :cond_1

    const/4 p5, 0x0

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 224
    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    return-void
.end method

.method public canLauncherAccessProfile(Landroid/content/ComponentName;I)Z
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return v0

    .line 544
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 546
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 544
    const-string v2, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    invoke-virtual {p2, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 551
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android.permission.ACCESS_HIDDEN_PROFILES"

    .line 553
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v9, p9

    .line 183
    array-length v13, v3

    const/4 v4, 0x0

    move v14, v4

    :goto_0
    if-ge v14, v13, :cond_5

    aget v8, v3, v14

    .line 184
    new-instance v5, Landroid/content/Intent;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v6, "package"

    invoke-static {v6, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object/from16 v15, p1

    invoke-direct {v5, v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v4, -0x1

    .line 193
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_3

    .line 194
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v8, :cond_3

    .line 195
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v8, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 196
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    if-eqz v9, :cond_4

    .line 198
    const-string v4, "android"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 199
    const-string v6, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 202
    :cond_4
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    or-int v4, p4, v4

    .line 203
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move/from16 v7, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 204
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, p9

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 313
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 316
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 326
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedProvider;

    .line 327
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v3

    if-nez v3, :cond_4

    .line 329
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_3

    goto :goto_0

    .line 337
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 338
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 339
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->isExported()Z

    move-result v3

    if-nez v3, :cond_7

    .line 340
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_6

    goto :goto_0

    .line 348
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 349
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 350
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isExported()Z

    move-result v2

    if-nez v2, :cond_a

    .line 351
    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_9

    :cond_b
    :goto_0
    return-object p0
.end method

.method public final getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .locals 8

    .line 301
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 304
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    .line 305
    const-string v7, ""

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v2
.end method

.method public final getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;
    .locals 8

    .line 1078
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_0

    .line 1079
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 1081
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v5, 0x0

    .line 1082
    const-string v7, ""

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v2
.end method

.method public final synthetic lambda$sendDistractingPackagesChanged$10(Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 13

    .line 1259
    filled-new-array {p2}, [I

    move-result-object v7

    new-instance v10, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;

    move-object/from16 p2, p3

    invoke-direct {v10, p2}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Supplier;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$sendMyPackageSuspendedOrUnsuspended$8(ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p4

    .line 1212
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 1215
    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "UN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUSPENDED broadcasts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1218
    :cond_1
    filled-new-array/range {p2 .. p2}, [I

    move-result-object v9

    .line 1219
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Computer;

    .line 1220
    array-length v15, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v15, :cond_4

    aget-object v7, v0, v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/16 v4, 0x3e8

    move/from16 v5, p2

    .line 1222
    invoke-static {v1, v7, v5, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_2
    move/from16 v5, p2

    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 1227
    new-instance v3, Landroid/os/Bundle;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 1228
    const-string v6, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v16, v2

    move-object v5, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    .line 1232
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    add-int/lit8 v2, v16, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final synthetic lambda$sendPackageAddedForNewUsers$2(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 0

    .line 820
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    return-void
.end method

.method public final synthetic lambda$sendPackageAddedForNewUsers$3([ILjava/lang/String;Z)V
    .locals 3

    .line 826
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 827
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/pm/BroadcastHelper;->sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$sendPackageBroadcastAndNotify$5(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    .line 1026
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$sendPackageChangedBroadcast$4(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1010
    invoke-interface {p9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p9

    .line 1008
    invoke-virtual/range {p0 .. p12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$sendPackagesSuspendedOrUnsuspendedForUser$7(Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 13

    .line 1195
    filled-new-array/range {p3 .. p3}, [I

    move-result-object v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public final notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V
    .locals 9

    .line 1293
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V
    .locals 6

    .line 1301
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v5, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[ILandroid/os/Handler;)V

    return-void
.end method

.method public sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V
    .locals 6

    .line 975
    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 976
    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 977
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 978
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 979
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 980
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 981
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p4

    .line 982
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    return-void
.end method

.method public final sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 263
    const-string v3, "android.intent.extra.user_handle"

    iget-object v4, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 266
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 269
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v6, 0x20

    if-eqz p2, :cond_1

    .line 273
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    :cond_1
    const-string v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    const/16 v7, 0xca

    .line 276
    invoke-virtual {v0, v7}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v19

    .line 280
    invoke-virtual/range {v19 .. v19}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    move-object v2, v4

    const/4 v4, 0x0

    move v8, v6

    const/4 v6, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move v11, v8

    const/4 v8, 0x0

    move v12, v11

    move-object v11, v9

    const/4 v9, 0x0

    move-object v13, v10

    const/4 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move/from16 v20, v14

    const/4 v14, -0x1

    move-object/from16 v21, v18

    move/from16 v18, p3

    .line 278
    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-object v3, v2

    move/from16 v2, v18

    .line 283
    iget-object v0, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v13, v21

    .line 285
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_2

    const/16 v12, 0x20

    .line 287
    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v16, v3

    move-object v3, v0

    move-object/from16 v0, v16

    move/from16 v16, p3

    .line 289
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V
    .locals 2

    .line 1254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1255
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1256
    const-string p2, "android.intent.extra.changed_uid_list"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1257
    const-string p2, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1259
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, v0, p4, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 895
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V
    .locals 8

    if-eqz p3, :cond_0

    .line 1209
    const-string v0, "android.intent.action.MY_PACKAGE_SUSPENDED"

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 1210
    :cond_0
    const-string v0, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    goto :goto_0

    .line 1211
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V
    .locals 9

    move-object v3, p6

    .line 813
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/16 v1, 0x3e8

    .line 817
    invoke-interface {p1, p2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 818
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    .line 816
    invoke-interface {v0, p1, v1, p6, v2}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v7

    .line 819
    iget-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object v4, v3

    move-object v8, v7

    move v3, p5

    move/from16 v7, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    move-object v7, v8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 822
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v8, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, p2

    move v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;Landroid/os/Handler;)V

    if-eqz p3, :cond_1

    .line 824
    invoke-static {p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 825
    iget-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p6, p2, p4}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V
    .locals 13

    .line 842
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 845
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v1, p4, v2

    goto :goto_0

    :cond_0
    aget v1, p3, v2

    .line 844
    :goto_0
    invoke-static {v1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 846
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_1

    .line 848
    const-string p2, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 850
    :cond_1
    const-string p2, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v0, p6

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 852
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 858
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 859
    iget-object p2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 861
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 859
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZILjava/lang/String;)V
    .locals 12

    move/from16 v0, p4

    .line 875
    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 876
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    .line 877
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 878
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v8, v6

    goto :goto_1

    :cond_0
    new-array v6, v4, [I

    aput v0, v6, v3

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    .line 879
    new-array v2, v4, [I

    aput v0, v2, v3

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    .line 881
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v10, p5

    move/from16 v11, p6

    .line 880
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 885
    new-instance p3, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 886
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v1

    iput v1, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 887
    iput-object p2, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 888
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    .line 890
    sget-object p0, Lcom/android/server/pm/BroadcastHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/mediatek/server/pm/PmsExt;->onPackageAdded(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;I)V

    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 23

    .line 140
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p7, :cond_1

    .line 144
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object/from16 v8, p7

    .line 149
    :goto_0
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 150
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v21, p11

    move-object/from16 v22, p12

    .line 155
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public final sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 13

    .line 1026
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p5, :cond_0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 1036
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    :cond_0
    return-void
.end method

.method public sendPackageBroadcastWithIntent(Landroid/content/Intent;IZI[ILandroid/content/IIntentReceiver;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 9

    const/high16 v0, 0x4000000

    or-int/2addr p4, v0

    .line 126
    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 128
    invoke-virtual {v5, p2, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v3, p3

    move-object v2, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 129
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x3e8

    .line 994
    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 996
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 999
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1001
    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 1002
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v7, v6

    goto :goto_1

    :cond_1
    new-array v6, v5, [I

    aput v3, v6, v4

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    .line 1003
    new-array v5, v5, [I

    aput v3, v5, v4

    :goto_2
    move-object v8, v5

    goto :goto_3

    :cond_2
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_4
    move-object v9, v2

    goto :goto_5

    .line 1005
    :cond_3
    invoke-interface {v0, v1, v7}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v2

    goto :goto_4

    .line 1007
    :goto_5
    invoke-interface {v0, v1, v3}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 1008
    iget-object v14, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageChanged(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Handler;)V

    :cond_4
    :goto_6
    return-void
.end method

.method public final sendPackageChangedBroadcastInternal(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/AndroidPackage;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    move-object/from16 v11, p10

    .line 374
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 375
    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move/from16 v3, p12

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    if-nez v0, :cond_5

    move-object/from16 v0, p9

    .line 393
    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/BroadcastHelper;->getAllNotExportedComponents(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 395
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    .line 396
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 398
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    const-string v0, "android"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string/jumbo v4, "notExported"

    .line 406
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 404
    const-string v3, "android"

    move-object v2, v1

    move-object/from16 v1, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v13, v6

    .line 407
    const-string v9, "android"

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v3, v8

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v13, v6

    move-object v7, v8

    .line 414
    :goto_0
    const-string/jumbo v4, "notExported"

    .line 416
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object v6, v13

    .line 414
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v9, p1

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object v3, v7

    move-object/from16 v7, p7

    .line 417
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    move-object v7, v3

    const/4 v0, 0x0

    move v14, v0

    .line 423
    :goto_1
    array-length v0, v11

    if-ge v14, v0, :cond_3

    .line 424
    aget-object v3, v11, v14

    .line 425
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, v7

    goto :goto_2

    .line 428
    :cond_1
    const-string/jumbo v4, "notExported"

    .line 430
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    move-object v2, v1

    move-object v6, v13

    move-object/from16 v1, p11

    .line 428
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object v9, v3

    move-object v3, v7

    move-object/from16 v7, p7

    .line 431
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v13, v6

    .line 439
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    const-string v4, "exported"

    .line 442
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 440
    const-string v3, "<implicit>"

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v3, v12

    .line 443
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    return-void

    .line 379
    :cond_5
    const-string/jumbo v4, "whole"

    .line 381
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x1

    .line 378
    const-string v3, "<implicit>"

    move-object/from16 v2, p1

    move-object/from16 v1, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->tracePackageChangedBroadcastEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object v3, v7

    move-object/from16 v7, p7

    .line 383
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    .line 460
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending package changed: package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " components="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const/4 v4, 0x0

    .line 465
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 469
    const-string v5, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 470
    const-string v5, "android.intent.extra.UID"

    move/from16 v6, p4

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    .line 472
    const-string v5, "android.intent.extra.REASON"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 479
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v5, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    return-void
.end method

.method public sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V
    .locals 18

    move-object/from16 v0, p1

    .line 1095
    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1096
    iget-object v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1097
    iget-object v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 1098
    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 1099
    iget-object v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1100
    iget-boolean v13, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 1101
    iget-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 1102
    iget-boolean v14, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 1104
    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 1105
    iget-boolean v15, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 1107
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1108
    const-string v5, "android.intent.extra.UID"

    iget v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    const-string v5, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1110
    const-string v5, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    xor-int/lit8 v7, p3, 0x1

    .line 1111
    const-string v10, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    xor-int/lit8 v7, p4, 0x1

    .line 1112
    const-string v10, "android.intent.extra.USER_INITIATED"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v5

    :goto_1
    if-nez v16, :cond_2

    if-eqz p5, :cond_3

    .line 1115
    :cond_2
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz p5, :cond_4

    .line 1118
    const-string v1, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1120
    :cond_4
    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1124
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_5
    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1134
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v10, v12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1137
    const-string v2, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    const-string v6, "android"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1142
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1145
    iget v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    move-object/from16 v2, p2

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    move-object v10, v12

    .line 1148
    :cond_8
    :goto_2
    iget-boolean v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    if-eqz v0, :cond_b

    if-nez v16, :cond_9

    if-eqz p5, :cond_a

    .line 1159
    :cond_9
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v14, v8

    .line 1162
    const-string v8, "android.intent.action.UID_REMOVED"

    move-object v15, v9

    const/4 v9, 0x0

    const/high16 v11, 0x1000000

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v16, v10

    move-object v10, v4

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V
    .locals 8

    .line 1182
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 1183
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1184
    const-string p3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz p5, :cond_0

    .line 1186
    const-string p3, "android.intent.extra.quarantined"

    const/4 p4, 0x1

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1189
    :cond_0
    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 p4, 0x2

    .line 1190
    invoke-virtual {p3, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    .line 1191
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 1192
    new-instance p5, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;

    invoke-direct {p5, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Supplier;)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object p1, p0

    new-instance p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;

    move p4, p6

    move-object p6, p3

    move-object p3, v3

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/function/BiFunction;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1200
    filled-new-array {p4}, [I

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/BroadcastHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public sendPostInstallBroadcasts(Ljava/util/function/Supplier;Lcom/android/server/pm/InstallRequest;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageSender;ZZZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v11, p5

    .line 590
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    const-string/jumbo v12, "upgrading pkg "

    const-string v13, "PackageManager"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v1, :cond_2

    .line 591
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    if-eqz v1, :cond_1

    .line 592
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is ASEC-hosted -> UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 598
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    filled-new-array {v1}, [I

    move-result-object v5

    .line 599
    invoke-virtual {v0, v14, v15, v4, v5}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v1, p1

    .line 601
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 605
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p7

    move/from16 v3, p9

    .line 604
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 609
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastUserIds()[I

    move-result-object v16

    .line 610
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getFirstTimeBroadcastInstantUserIds()[I

    move-result-object v17

    .line 611
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastUserIds()[I

    move-result-object v7

    .line 612
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getUpdateBroadcastInstantUserIds()[I

    move-result-object v18

    .line 615
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 616
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 617
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 618
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 622
    const-string v0, "android.intent.extra.UID"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p10, :cond_5

    .line 624
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    if-eqz p11, :cond_6

    .line 627
    const-string v0, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    :cond_6
    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v19

    if-eqz v5, :cond_7

    if-eqz v19, :cond_7

    move-object v0, v7

    .line 638
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 635
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p3

    move-object v15, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v10, v3

    move-object/from16 v20, v5

    goto :goto_2

    :cond_7
    move-object v10, v3

    move-object/from16 v20, v5

    move-object v15, v7

    .line 642
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/Computer;

    if-nez v19, :cond_19

    .line 647
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v0

    .line 650
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    move v4, v14

    :goto_3
    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v3, v14

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v3, 0x1

    .line 654
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v8, p11

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    .line 651
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    .line 660
    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    const/16 v4, 0x3e8

    .line 662
    invoke-interface {v1, v2, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 663
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 661
    invoke-interface {v3, v1, v4, v15, v5}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v9

    const/4 v6, 0x0

    move-object v3, v10

    const/4 v10, 0x0

    .line 664
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v15

    move-object v15, v7

    move-object v7, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 669
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->BOOST_THREAD_SUPPORTED_PROPERTY:Z

    const-string v2, "Installation Boost Off"

    if-eqz v1, :cond_b

    .line 670
    sget-object v1, Lcom/android/server/pm/BroadcastHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    if-eqz v1, :cond_c

    .line 671
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-object v1, Lcom/android/server/pm/BroadcastHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v1, v14}, Lcom/mediatek/server/pm/PmsExt;->setPerfLockAcquire(Z)V

    goto :goto_6

    .line 675
    :cond_b
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

    if-eqz v1, :cond_c

    .line 676
    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mPowerHalManager:Lcom/mediatek/server/powerhal/PowerHalManager;

    invoke-virtual {v1, v14}, Lcom/mediatek/server/powerhal/PowerHalManager;->setInstallationBoost(Z)V

    :cond_c
    :goto_6
    if-eqz v20, :cond_d

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 682
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_d
    move-object/from16 v5, v20

    .line 689
    :goto_7
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/BroadcastHelper;->isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 690
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object v14, v5

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_e
    move-object v14, v5

    .line 696
    :goto_8
    array-length v0, v11

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_10

    aget-object v5, v11, v1

    if-eqz v5, :cond_f

    .line 697
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, v1

    .line 699
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v18, v0

    move/from16 v19, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :goto_a
    move-object/from16 v20, v7

    goto :goto_b

    :cond_f
    move/from16 v18, v0

    move/from16 v19, v1

    goto :goto_a

    :goto_b
    add-int/lit8 v1, v19, 0x1

    move/from16 v0, v18

    move-object/from16 v7, v20

    goto :goto_9

    :cond_10
    move-object/from16 v20, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 709
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const/high16 v4, 0x1000000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p6

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v6, v7

    if-eqz p10, :cond_14

    .line 720
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v0

    iget-object v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 716
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v14, :cond_11

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 722
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object v5, v14

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 728
    :cond_11
    array-length v15, v11

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v15, :cond_13

    aget-object v5, v11, v0

    if-eqz v5, :cond_12

    .line 729
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 731
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_d

    :cond_12
    move/from16 v17, v0

    move-object/from16 v0, p0

    :goto_d
    add-int/lit8 v1, v17, 0x1

    move v0, v1

    goto :goto_c

    :cond_13
    move-object/from16 v0, p0

    const/16 v1, 0x137

    .line 742
    invoke-virtual {v0, v1}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 737
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object v2, v5

    goto :goto_e

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    if-eqz p8, :cond_16

    .line 744
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v1

    if-nez v1, :cond_16

    .line 747
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    if-eqz v1, :cond_15

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post-restore of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sending FIRST_LAUNCH in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_15
    invoke-virtual {v0, v2, v14, v6, v15}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 756
    :cond_16
    :goto_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez p10, :cond_17

    .line 758
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 762
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 762
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    const/4 v3, 0x1

    .line 764
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v1

    if-eqz v1, :cond_17

    const/16 v3, 0xb5

    .line 768
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 773
    :cond_17
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_18

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is external"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    if-nez p11, :cond_1a

    .line 777
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 p3, p1

    move-object/from16 p2, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move/from16 p4, v3

    move/from16 p5, v4

    .line 779
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    const/4 v3, 0x1

    .line 781
    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    return-void

    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p0

    .line 786
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/InstallRequest;->getLibraryConsumers()Ljava/util/ArrayList;

    move-result-object v2

    .line 787
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1a

    xor-int/lit8 v3, p10, 0x1

    const/4 v14, 0x0

    .line 790
    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_1a

    .line 791
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 793
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    .line 795
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 796
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    const-string/jumbo v7, "static_shared_library_changed"

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p4, v3

    move/from16 p6, v4

    move-object/from16 p3, v5

    move-object/from16 p5, v6

    move-object/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p7, v9

    .line 793
    invoke-virtual/range {p1 .. p9}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v0, p4

    add-int/lit8 v14, v14, 0x1

    move v3, v0

    move-object/from16 v0, p0

    goto :goto_f

    :cond_1a
    return-void
.end method

.method public sendPreferredActivityChangedBroadcast(I)V
    .locals 1

    .line 560
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V
    .locals 15

    move/from16 v0, p3

    .line 235
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 239
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v2, p4

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    const-string v1, "android.intent.extra.changed_uid_list"

    move-object/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz v0, :cond_1

    .line 242
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 244
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 245
    :cond_2
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_0

    .line 246
    :goto_1
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;[Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;)V
    .locals 7

    .line 1273
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1274
    new-array v5, v0, [Ljava/lang/String;

    .line 1275
    new-array v6, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1277
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1278
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 1279
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1281
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[I)V

    .line 1283
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    return-void
.end method

.method public sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V
    .locals 6

    .line 505
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    move v0, p3

    .line 511
    :goto_0
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 512
    const-string v1, "android.intent.extra.USER"

    const-string v2, "android.content.pm.extra.SESSION"

    const-string v3, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/BroadcastHelper;->canLauncherAccessProfile(Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 515
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 516
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 517
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    if-eqz p4, :cond_3

    .line 520
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 522
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 523
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 524
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 12

    .line 1042
    iget-boolean v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-object v3, p1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 1047
    iget-object v0, p1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 1048
    iget-object v10, p1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 1050
    new-instance v4, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1051
    const-string v1, "android.intent.extra.UID"

    iget p1, p1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1052
    const-string p1, "android.intent.extra.REPLACING"

    const/4 v1, 0x1

    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1053
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    move-object p0, v10

    if-eqz v0, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1057
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 1061
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1066
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    const/16 p0, 0x137

    .line 1070
    invoke-virtual {v1, p0}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryBroadcastOptionsForSystemPackageUpdate(I)Landroid/app/BroadcastOptions;

    move-result-object p0

    .line 1071
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 1068
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method
