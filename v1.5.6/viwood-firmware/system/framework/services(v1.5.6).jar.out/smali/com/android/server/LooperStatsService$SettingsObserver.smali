.class public Lcom/android/server/LooperStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LooperStatsService.java"


# instance fields
.field public final mService:Lcom/android/server/LooperStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LooperStatsService;)V
    .locals 1

    .line 230
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 231
    iput-object p1, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/LooperStatsService$SettingsObserver;->mService:Lcom/android/server/LooperStatsService;

    invoke-static {p0}, Lcom/android/server/LooperStatsService;->-$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V

    return-void
.end method
