.class public Lcom/android/server/display/DisplayManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 3

    .line 1219
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1220
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1222
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 1223
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1222
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1226
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "mirror_built_in_display"

    .line 1228
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    .line 1227
    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1235
    const-string/jumbo p1, "minimal_post_processing_allowed"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1236
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1237
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mhandleMinimalPostProcessingAllowedSettingChange(Lcom/android/server/display/DisplayManagerService;)V

    return-void

    .line 1241
    :cond_0
    const-string/jumbo p1, "mirror_built_in_display"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1242
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1243
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmFlags(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1244
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$mupdateMirrorBuiltInDisplaySettingLocked(Lcom/android/server/display/DisplayManagerService;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1247
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
