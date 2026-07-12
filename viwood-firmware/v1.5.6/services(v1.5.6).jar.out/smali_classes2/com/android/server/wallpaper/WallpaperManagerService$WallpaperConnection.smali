.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mClientUid:I

.field public mDisconnectRunnable:Ljava/lang/Runnable;

.field public final mDisplayConnector:Landroid/util/SparseArray;

.field public final mInfo:Landroid/app/WallpaperInfo;

.field public mLmkLimitRebindRetries:I

.field public mReply:Landroid/os/IRemoteCallback;

.field public mResetRunnable:Ljava/lang/Runnable;

.field public mService:Landroid/service/wallpaper/IWallpaperService;

.field public mTryToRebindRunnable:Ljava/lang/Runnable;

.field public mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public static synthetic $r8$lambda$0B1JnEA-s0vRYh09f94I-JMhj24(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$onLocalWallpaperColorsChanged$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BdRFLLROHn7y5KyiPBm7Siso88g(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    return-void
.end method

.method public static synthetic $r8$lambda$EmJuOUzceLvuC_2BxKjsoutWuQQ(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$HNl85I7-mKLGpIvrI1k8FSzxXtk(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$initDisplayState$1(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cPEGnj8gduIeva9ONnRjFP0ZjhM(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dhc-7cFphpmb8ozYRVQqHr7Qhjk(Landroid/graphics/RectF;Landroid/app/WallpaperColors;Landroid/app/ILocalWallpaperColorConsumer;)V
    .locals 0

    .line 1114
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/app/ILocalWallpaperColorConsumer;->onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1116
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to notify local color callbacks"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$r6LDOul54fj7yJtAURoXEzK_7pk(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1

    const/4 v0, 0x0

    .line 1136
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    .line 1012
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 973
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    const/4 p1, 0x3

    .line 978
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 986
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    .line 1010
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    .line 1208
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    .line 1013
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1014
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1015
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->initDisplayState()V

    return-void
.end method


# virtual methods
.method public final appendConnectorWithCondition(Ljava/util/function/Predicate;)V
    .locals 8

    .line 1034
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1035
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1036
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 1038
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    if-nez v4, :cond_0

    .line 1040
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v7, v7, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {v5, v6, v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .locals 5

    .line 1307
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1308
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1312
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1313
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->ensureStatusHandled()V

    .line 1316
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 1318
    :try_start_1
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v2

    const-wide/16 v3, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1320
    :try_start_2
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to set ambient mode state"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1327
    :cond_0
    :goto_0
    :try_start_3
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->requestWallpaperColors()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1330
    :try_start_4
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to request wallpaper colors"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    :goto_1
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/LocalColorRepository;->getAreasByDisplayId(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1334
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_1

    .line 1336
    :try_start_5
    iget-object p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1338
    :try_start_6
    const-string p2, "WallpaperManagerService"

    const-string v2, "Failed to register local colors areas"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_2

    .line 1344
    :try_start_7
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p1, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1346
    :try_start_8
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dim wallpaper"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    :cond_2
    :goto_3
    monitor-exit v0

    return-void

    .line 1310
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Connector has already been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1349
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public containsDisplay(I)Z
    .locals 0

    .line 1075
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 7

    .line 1354
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1356
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1357
    const-string v1, "WPMS.mReply.sendResult"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 1360
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v4, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1364
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 1362
    :try_start_3
    const-string v5, "WallpaperManagerService"

    const-string v6, "Failed to send callback!"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1366
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1367
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    goto :goto_3

    .line 1364
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1365
    throw p0

    .line 1369
    :cond_0
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public forEachDisplayConnector(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 1050
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getConnectedEngineSize()I
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 1057
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 1058
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    .locals 3

    .line 1064
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    if-nez v0, :cond_0

    .line 1066
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 1068
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final initDisplayState()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public final isRunningOnLowMemory()Z
    .locals 5

    .line 1274
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1275
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1276
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v1, v1

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpg-double p0, v1, v3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$initDisplayState$1(Landroid/view/Display;)Z
    .locals 4

    .line 1023
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 1024
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {v1, p1, v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1028
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 5

    .line 987
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 988
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    const-string p0, "WallpaperManagerService"

    const-string v1, "Ignoring relaunch timeout during shutdown"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v2, :cond_1

    .line 998
    const-string p0, "WallpaperManagerService"

    const-string v1, "Trying to reset an intentionally disconnected wallpaper!"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    monitor-exit v0

    return-void

    .line 1002
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    if-nez v2, :cond_2

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1003
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper reconnect timed out for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to built-in wallpaper!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V

    .line 1007
    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$5()V
    .locals 9

    .line 1209
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne p0, v2, :cond_5

    .line 1213
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    if-nez v3, :cond_6

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1216
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1217
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1218
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/ActivityManager;

    move-result-object v2

    .line 1220
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1219
    invoke-virtual {v2, v1, v4, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1222
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1224
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move v1, v4

    .line 1226
    :goto_0
    const-string v2, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_3

    .line 1230
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isRunningOnLowMemory()Z

    move-result v1

    const-wide/16 v6, 0x1388

    if-eqz v1, :cond_1

    .line 1231
    const-string v1, "WallpaperManagerService"

    const-string v2, "Rebind is delayed due to lmk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1234
    iput v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    goto :goto_1

    .line 1236
    :cond_1
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    if-gtz v1, :cond_2

    .line 1237
    const-string v1, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper due to lmk!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v6, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v1, v6, v3, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V

    .line 1240
    iput v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 1241
    monitor-exit v0

    return-void

    :cond_2
    sub-int/2addr v1, v3

    .line 1243
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 1244
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1254
    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-wide v5, v1, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    .line 1256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    .line 1257
    const-string v1, "WallpaperManagerService"

    const-string v5, "Reverting to built-in wallpaper!"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v1, v3, p0, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V

    goto :goto_1

    .line 1260
    :cond_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    goto :goto_1

    .line 1267
    :cond_5
    const-string p0, "WallpaperManagerService"

    const-string v1, "Wallpaper changed during disconnect tracking; ignoring"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onLocalWallpaperColorsChanged$3(Landroid/graphics/RectF;Landroid/app/WallpaperColors;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 1112
    new-instance p4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda6;

    invoke-direct {p4, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda6;-><init>(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 1119
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1121
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;

    move-result-object p0

    invoke-virtual {p0, p4, p1, p3}, Lcom/android/server/wallpaper/LocalColorRepository;->forEachCallback(Ljava/util/function/Consumer;Landroid/graphics/RectF;I)V

    .line 1122
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    .locals 1

    .line 1111
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1087
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.onServiceConnected-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1090
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_1

    .line 1091
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1092
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {p2, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1097
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1098
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1100
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1102
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 1104
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1130
    :try_start_0
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1132
    const-string p1, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does not match expected wallpaper component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1133
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1135
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1136
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1137
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v1, p0, :cond_1

    .line 1145
    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    if-nez p1, :cond_1

    .line 1146
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1150
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 3

    .line 1288
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    return-void

    .line 1301
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeDisplayConnector(I)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    if-eqz v0, :cond_0

    .line 1081
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public final scheduleTimeoutLocked()V
    .locals 4

    .line 1156
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1158
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started wallpaper reconnect timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1160
    const-string v0, "WallpaperManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1374
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    if-ne v2, p0, :cond_0

    .line 1376
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1378
    :cond_0
    monitor-exit v0

    return-object v3

    .line 1379
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final tryToRebind()V
    .locals 9

    .line 1166
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    if-eqz v2, :cond_0

    .line 1168
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    .line 1171
    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v2, :cond_1

    .line 1173
    const-string p0, "WallpaperManagerService"

    const-string v0, "Trying to rebind an intentionally disconnected wallpaper!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    monitor-exit v1

    return-void

    .line 1179
    :cond_1
    sget-object v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1182
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1183
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1182
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->scheduleTimeoutLocked()V

    goto :goto_0

    .line 1191
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-wide v4, v0, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 1194
    const-string v0, "WallpaperManagerService"

    const-string v2, "Rebind fail! Try again later"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1198
    :cond_3
    const-string v0, "WallpaperManagerService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V

    .line 1200
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 1202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x80

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const v0, 0x80e8

    .line 1201
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1205
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
