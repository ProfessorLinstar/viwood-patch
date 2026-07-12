.class public Lcom/android/server/display/ExternalDisplayPolicy;
.super Ljava/lang/Object;
.source "ExternalDisplayPolicy.java"


# static fields
.field public static final DEBUG:Z

.field static final ENABLE_ON_CONNECT:Ljava/lang/String; = "persist.sys.display.enable_on_connect.external"


# instance fields
.field public final mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

.field public mIsBootCompleted:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public volatile mStatus:I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$2e524ye28McdF74rNJXrAjDbcko(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/LogicalDisplay;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/display/ExternalDisplayPolicy;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStatus(Lcom/android/server/display/ExternalDisplayPolicy;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableExternalDisplays(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplays()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "ExternalDisplayPolicy"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy$Injector;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 118
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    .line 119
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 120
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 121
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 122
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 123
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method

.method public static isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4

    .line 269
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_1

    .line 274
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 275
    const-string p0, "disableExternalDisplayLocked shouldn\'t be called when the error handling flag is off"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableExternalDisplayLocked is not allowed: displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isEnabledLocked=false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    const-string v0, "External display is currently not allowed and is getting disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 297
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisabled(I)V

    .line 299
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableExternalDisplayLocked complete displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final disableExternalDisplays()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 4

    .line 184
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    .line 185
    const-string p0, "handleExternalDisplayConnectedLocked called for non-external display"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    if-nez v0, :cond_1

    .line 190
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayConnected(Lcom/android/server/display/LogicalDisplay;)V

    .line 196
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "persist.sys.display.enable_on_connect.external"

    .line 197
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 198
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->canHostTasksLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    const-string p1, "handleExternalDisplayConnectedLocked: External display can not be used because it is currently not allowed."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 216
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 218
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_6

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleExternalDisplayConnectedLocked complete displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 200
    :cond_7
    :goto_0
    const-string v0, "External display is enabled by default, bypassing user consent."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public handleLogicalDisplayAddedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    .line 242
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayAdded(I)V

    return-void
.end method

.method public handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 231
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisconnected(I)V

    return-void
.end method

.method public isDisplayReadyForMirroring(I)Z
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isWaitingConfirmationBeforeMirroringEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 340
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 341
    const-string p0, "ExternalDisplayPolicy"

    const-string p1, "isDisplayReadyForMirroring: mirroring CONFIRMED -  flag \'waiting for confirmation before mirroring\' is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 349
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 350
    const-string p0, "ExternalDisplayPolicy"

    const-string p1, "isDisplayReadyForMirroring: mirroring is not confirmed - boot is in progress"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 353
    :cond_2
    :goto_0
    monitor-exit v0

    return v3

    .line 356
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_5

    .line 358
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 359
    const-string p0, "ExternalDisplayPolicy"

    const-string p1, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    monitor-exit v0

    return v3

    .line 365
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 366
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 367
    const-string p1, "ExternalDisplayPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 367
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_6
    monitor-exit v0

    return v3

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p0

    if-nez p0, :cond_9

    .line 375
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_8

    .line 376
    const-string p0, "ExternalDisplayPolicy"

    const-string p1, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_8
    monitor-exit v0

    return v3

    .line 381
    :cond_9
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isExternalDisplayAllowed()Z
    .locals 1

    .line 310
    iget p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBootCompleted()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x1

    .line 132
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    .line 133
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 134
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 147
    const-string p0, "ExternalDisplayPolicy"

    const-string v0, "ConnectedDisplayErrorHandlingEnabled is not enabled on your device: cannot register thermal listener."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_3
    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/ExternalDisplayPolicy-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayPolicy;->registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 154
    const-string p0, "ExternalDisplayPolicy"

    const-string v0, "Failed to register thermal listener"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 143
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPresentation(IZ)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 255
    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 261
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowAdded(I)V

    return-void

    .line 263
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowRemoved(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 256
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 258
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z
    .locals 3

    .line 315
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x0

    .line 316
    const-string v1, "ExternalDisplayPolicy"

    if-nez p0, :cond_0

    .line 317
    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v2, 0x3

    .line 321
    :try_start_0
    invoke-interface {p0, p1, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 327
    const-string/jumbo p0, "registerThermalServiceListener complete."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 323
    const-string p1, "Failed to register thermal status listener"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 2

    .line 163
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo p0, "setExternalDisplayEnabledLocked called for non external display"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    const-string/jumbo p1, "setExternalDisplayEnabledLocked: External display can not be enabled because it is currently not allowed."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 175
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    return-void
.end method
