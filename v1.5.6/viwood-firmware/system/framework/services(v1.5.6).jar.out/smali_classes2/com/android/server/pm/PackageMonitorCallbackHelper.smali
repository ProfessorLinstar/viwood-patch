.class public Lcom/android/server/pm/PackageMonitorCallbackHelper;
.super Ljava/lang/Object;
.source "PackageMonitorCallbackHelper.java"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$MNRzQYaV6JaxqeiTvi1sMiq30_4(ILjava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p3, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 81
    invoke-virtual {p3}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result p3

    if-ne p3, p0, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Z5BB8H8hZPb-NY_2ywaCcSJdk6w(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->lambda$doNotifyCallbacks$2(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUWlqwCz-5h_-aMsuSrfdCoFYEM(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V
    .locals 2

    .line 232
    check-cast p6, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 233
    invoke-virtual {p6}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 234
    invoke-virtual {p6}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUserId()I

    move-result v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p6}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->getUid()I

    move-result p0

    if-eqz p1, :cond_1

    const/16 p6, 0x3e8

    .line 238
    invoke-static {p0, p6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p6

    if-nez p6, :cond_1

    .line 239
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 251
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_2

    :goto_0
    return-void

    .line 262
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p1, p0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object p2, p1

    .line 266
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static isAllowedCallbackAction(Ljava/lang/String;)Z
    .locals 1

    .line 184
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 185
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 186
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.UID_REMOVED"

    .line 187
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 188
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 189
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 190
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 191
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 192
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 193
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 194
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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


# virtual methods
.method public final doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 6

    .line 228
    new-instance v0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 8

    .line 207
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v4, p4, v1

    .line 208
    new-instance v3, Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 209
    const-string/jumbo v5, "package"

    invoke-static {v5, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    :goto_1
    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p3, :cond_1

    .line 211
    invoke-virtual {v3, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const/4 v5, -0x1

    .line 213
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 214
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 215
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 216
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    :cond_2
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_3

    .line 221
    invoke-virtual {p5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :cond_3
    move-object v6, p6

    move-object v7, p7

    move-object v5, v2

    move-object v2, p0

    .line 222
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V

    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    move-object p6, v6

    move-object p7, v7

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final doNotifyCallbacksByIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacks(Landroid/content/Intent;I[ILandroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final invokeCallback(Landroid/os/IRemoteCallback;Landroid/content/Intent;)V
    .locals 1

    .line 278
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 279
    const-string v0, "android.content.pm.extra.EXTRA_PACKAGE_MONITOR_CALLBACK_RESULT"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    invoke-interface {p1, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final synthetic lambda$doNotifyCallbacks$2(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;)V
    .locals 8

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v6, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 231
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;-><init>(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 268
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 269
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 270
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 271
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/os/IRemoteCallback;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->invokeCallback(Landroid/os/IRemoteCallback;Landroid/content/Intent;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 268
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyPackageAddedForNewUsers(Ljava/lang/String;I[I[IZILandroid/util/SparseArray;Landroid/os/Handler;)V
    .locals 3

    move v0, p5

    move-object p5, p4

    move-object p4, p3

    .line 98
    new-instance p3, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 101
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget v1, p5, v2

    goto :goto_0

    :cond_0
    aget v1, p4, v2

    .line 100
    :goto_0
    invoke-static {v1, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 102
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    .line 104
    const-string p2, "android.intent.extra.ARCHIVAL"

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    :cond_1
    const-string p2, "android.content.pm.extra.DATA_LOADER_TYPE"

    invoke-virtual {p3, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object p2, p1

    .line 107
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    move-object p6, p7

    move-object p7, p8

    const/4 p8, 0x0

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public notifyPackageChanged(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Handler;)V
    .locals 3

    move-object v0, p3

    .line 130
    new-instance p3, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {p3, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "android.intent.extra.changed_component_name"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    const-string v0, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string p2, "android.intent.extra.UID"

    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p5, :cond_0

    .line 138
    const-string p2, "android.intent.extra.REASON"

    invoke-virtual {p3, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object p2, p1

    .line 140
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    move-object p4, p6

    move-object p6, p8

    const/4 p8, 0x0

    move-object p5, p7

    move-object p7, p9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    .locals 8

    .line 147
    invoke-static {p1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p4, :cond_3

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v1, :cond_2

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_3
    move-object v4, p4

    .line 162
    :goto_0
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 163
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 167
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public notifyPackageMonitorWithIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V
    .locals 1

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByIntent(Landroid/content/Intent;I[ILandroid/os/Handler;)V

    return-void
.end method

.method public notifyResourcesChanged(ZZ[Ljava/lang/String;[ILandroid/os/Handler;)V
    .locals 9

    .line 114
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    const-string p3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz p2, :cond_0

    .line 118
    const-string p3, "android.intent.extra.REPLACING"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 120
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 121
    :cond_1
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v7, p5

    .line 122
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 4

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerPackageMonitorCallback(Landroid/os/IRemoteCallback;II)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;II)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
