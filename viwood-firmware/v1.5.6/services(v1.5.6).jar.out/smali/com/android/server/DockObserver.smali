.class public final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# instance fields
.field public mActualDockState:I

.field public final mAllowTheaterModeWakeFromDock:Z

.field public mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

.field public final mDockObserverLocalService:Lcom/android/server/DockObserver$DockObserverLocalService;

.field public final mExtconStateConfigs:Ljava/util/List;

.field public final mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeepDreamingWhenUnplugging:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreviousDockState:I

.field public mReportedDockState:I

.field public mSystemReady:Z

.field public mUpdatesStopped:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$qaC52jh3OvGtaUchew8hK3-YO2Y(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateIfDockedLocked(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->updateIfDockedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 70
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 73
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 364
    new-instance v2, Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 401
    new-instance v4, Lcom/android/server/DockObserver$1;

    invoke-direct {v4, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v4, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

    .line 174
    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 175
    const-string v6, "DockObserver"

    invoke-virtual {v5, v3, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11101d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 180
    new-instance v3, Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;-><init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 182
    invoke-static {p1}, Lcom/android/server/DockObserver;->loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 184
    const-string p1, "DOCK"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 188
    monitor-enter v0

    .line 189
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 191
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found extcon info devPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", statePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 200
    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 202
    invoke-virtual {v4, p1}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 204
    :cond_0
    const-string p1, "DockObserver"

    const-string v1, "No extcon dock device found in this kernel."

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    new-instance p1, Lcom/android/server/DockObserver$DockObserverLocalService;

    invoke-direct {p1, p0}, Lcom/android/server/DockObserver$DockObserverLocalService;-><init>(Lcom/android/server/DockObserver;)V

    iput-object p1, p0, Lcom/android/server/DockObserver;->mDockObserverLocalService:Lcom/android/server/DockObserver$DockObserverLocalService;

    .line 209
    const-class p0, Lcom/android/server/DockObserverInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 206
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;
    .locals 11

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070069

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 151
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 153
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 154
    new-instance v5, Lcom/android/server/DockObserver$ExtconStateConfig;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    const/4 v6, 0x1

    move v7, v6

    .line 155
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    .line 156
    aget-object v8, v4, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 157
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 160
    iget-object v9, v5, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    aget-object v10, v8, v2

    aget-object v8, v8, v6

    invoke-static {v10, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key-value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 166
    const-string v0, "DockObserver"

    const-string v1, "Could not parse extcon state config"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final allowWakeFromDock()Z
    .locals 2

    .line 272
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theater_mode_on"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I
    .locals 6

    .line 367
    iget-object p0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 369
    iget-object v2, v0, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 370
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_2

    .line 371
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    :cond_3
    if-eqz v3, :cond_0

    .line 378
    iget p0, v0, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    return p0

    :cond_4
    return v1
.end method

.method public final handleDockStateChange()V
    .locals 9

    .line 285
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 289
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 294
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111001d

    .line 296
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-virtual {v3}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    const-string p0, "DockObserver"

    const-string v1, "Device not provisioned, skipping dock broadcast"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 306
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x20000000

    .line 307
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v4, "android.intent.extra.DOCK_STATE"

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v4, "dock_sounds_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 312
    :goto_0
    const-string v7, "dock_sounds_enabled_when_accessbility"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    .line 314
    :goto_1
    const-string v8, "accessibility_enabled"

    invoke-static {v2, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_3

    move v6, v5

    :cond_3
    if-nez v4, :cond_4

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    .line 322
    :cond_4
    iget v4, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-nez v4, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v8, :cond_6

    if-ne v1, v7, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_9

    .line 328
    const-string v1, "car_undock_sound"

    goto :goto_4

    .line 326
    :cond_6
    :goto_2
    const-string v1, "desk_undock_sound"

    goto :goto_4

    :cond_7
    if-eq v4, v5, :cond_a

    if-eq v4, v8, :cond_a

    if-ne v4, v7, :cond_8

    goto :goto_3

    :cond_8
    if-ne v4, v6, :cond_9

    .line 336
    const-string v1, "car_dock_sound"

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 334
    :cond_a
    :goto_3
    const-string v1, "desk_dock_sound"

    :goto_4
    if-eqz v1, :cond_b

    .line 341
    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 346
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 345
    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 348
    invoke-virtual {v1, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 349
    invoke-virtual {v1, v5}, Landroid/media/Ringtone;->preferBuiltinDevice(Z)Z

    .line 350
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 360
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 361
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 228
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 229
    iget-object v0, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->onSystemReady()V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->updateIfDockedLocked()V

    .line 231
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 221
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver-IA;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final postWakefulDockStateChange()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/DockObserver;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setActualDockStateLocked(I)V
    .locals 1

    .line 245
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 246
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    :cond_0
    return-void
.end method

.method public setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 389
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 2

    .line 395
    const-string v0, "DOCK"

    invoke-virtual {p1, v0}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 398
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method public final setDockStateLocked(I)V
    .locals 4

    .line 253
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_1

    .line 254
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v0, 0x1d6

    .line 257
    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 258
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->allowWakeFromDock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x12

    const-string v3, "android.server:DOCK"

    .line 261
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->postWakefulDockStateChange()V

    :cond_1
    return-void
.end method

.method public final updateIfDockedLocked()V
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->postWakefulDockStateChange()V

    :cond_0
    return-void
.end method
