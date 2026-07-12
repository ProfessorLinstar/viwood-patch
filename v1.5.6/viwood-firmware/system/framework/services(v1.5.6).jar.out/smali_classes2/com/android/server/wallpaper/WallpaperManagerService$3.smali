.class public Lcom/android/server/wallpaper/WallpaperManagerService$3;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardGoingAway()V
    .locals 0

    .line 1735
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyKeyguardGoingAway(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method
