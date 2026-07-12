.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# instance fields
.field public final mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field public final mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 1391
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1393
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperData;

    .line 1394
    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p2, p1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1399
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    if-eqz v1, :cond_5

    .line 1403
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    .line 1406
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1405
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_0

    .line 1418
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    .line 1422
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1423
    iput-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1424
    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1425
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    goto/16 :goto_0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1439
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_1

    .line 1441
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    :cond_1
    const/4 v1, 0x3

    .line 1443
    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1444
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1445
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput v2, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1453
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 1462
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1463
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mOriginalSystem:Lcom/android/server/wallpaper/WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-ne v2, v3, :cond_5

    .line 1465
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_4

    .line 1467
    iput-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 1469
    :cond_4
    iput v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 1470
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1474
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->mNewWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method
