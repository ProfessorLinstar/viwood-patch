.class public Lcom/android/server/WallpaperUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperUpdateReceiver.java"


# direct methods
.method public static synthetic $r8$lambda$OHZiJO_XDLx35rrZdZ9edsGpdRA(Lcom/android/server/WallpaperUpdateReceiver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WallpaperUpdateReceiver;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final isUserSetWallpaper(Landroid/app/WallpaperManager;Landroid/content/Context;)Z
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const/4 p2, 0x2

    .line 83
    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 90
    invoke-static {p2}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 46
    const-string p1, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/WallpaperUpdateReceiver;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateWallpaper()V
    .locals 3

    .line 53
    const-string v0, "WallpaperUpdateReceiver"

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 56
    invoke-virtual {p0, v2, v1}, Lcom/android/server/WallpaperUpdateReceiver;->isUserSetWallpaper(Landroid/app/WallpaperManager;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 57
    const-string p0, "User has set wallpaper, skip to resetting"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 63
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->clearWallpaper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to customize system wallpaper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
