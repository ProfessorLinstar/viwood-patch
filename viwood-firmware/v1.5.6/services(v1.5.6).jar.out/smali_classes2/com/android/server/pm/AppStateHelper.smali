.class public Lcom/android/server/pm/AppStateHelper;
.super Ljava/lang/Object;
.source "AppStateHelper.java"


# static fields
.field public static final ACTIVE_NETWORK_DURATION_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8B_hj9B1hv-457DfjQiyoDndm2U(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 1

    .line 215
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 221
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesSorted()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 222
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesSorted()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    :goto_1
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/AppStateHelper;->ACTIVE_NETWORK_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static containsAny([Ljava/lang/String;Ljava/util/List;)Z
    .locals 7

    .line 167
    array-length v0, p0

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    if-ge v4, v1, :cond_2

    .line 170
    aget-object v5, p0, v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isPackageLoaded(Landroid/app/ActivityManager$RunningAppProcessInfo;Ljava/lang/String;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

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
.method public final addLibraryDependency(Landroid/util/ArraySet;Ljava/util/List;)V
    .locals 5

    .line 183
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManagerInternal;->getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 196
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_2
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 210
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 211
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 212
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 214
    new-instance p2, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDependencyPackages(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 295
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 298
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    invoke-static {v2, v4}, Lcom/android/server/pm/AppStateHelper;->isPackageLoaded(Landroid/app/ActivityManager$RunningAppProcessInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 303
    :cond_2
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 304
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 309
    :cond_3
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->getClientPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    .line 314
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/AppStateHelper;->addLibraryDependency(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 316
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getImportance(Ljava/lang/String;)I
    .locals 1

    .line 69
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hasActiveAudio(Ljava/lang/String;)Z
    .locals 1

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->hasAudioFocus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->isRecordingAudio(Ljava/lang/String;)Z

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

.method public final hasActiveNetwork(Ljava/util/List;)Z
    .locals 2

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hasActiveNetwork(Ljava/util/List;I)Z
    .locals 8

    .line 141
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 142
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 144
    sget-wide v2, Lcom/android/server/pm/AppStateHelper;->ACTIVE_NETWORK_DURATION_MILLIS:J

    sub-long v4, v6, v2

    const/4 v3, 0x0

    move v2, p2

    .line 145
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    new-instance p2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {p0, p2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 149
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 157
    :try_start_2
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    return p1

    :cond_3
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_4

    .line 145
    :try_start_3
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public final hasAudioFocus(Ljava/lang/String;)Z
    .locals 1

    .line 77
    const-string p0, "audio"

    .line 78
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p0

    .line 80
    :try_start_0
    invoke-interface {p0}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 82
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioFocusInfo;

    invoke-virtual {p0}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForegroundApp(Ljava/util/List;)Z
    .locals 1

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppStateHelper;->isAppForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasInteractingApp(Ljava/util/List;)Z
    .locals 3

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppStateHelper;->hasActiveAudio(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 247
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public hasTopVisibleApp(Ljava/util/List;)Z
    .locals 1

    .line 266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hasVoiceCall()Z
    .locals 2

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public final isAppForeground(Ljava/lang/String;)Z
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->getImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x7d

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAppTopVisible(Ljava/lang/String;)Z
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->getImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x64

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInCall()Z
    .locals 4

    .line 279
    const-string v0, "debug.pm.gentle_update_test.is_in_call"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 286
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/AppStateHelper;->hasVoiceCall()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public final isRecordingAudio(Ljava/lang/String;)Z
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 110
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
